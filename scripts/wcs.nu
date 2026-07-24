#!/usr/bin/env nu

cd (git rev-parse --show-toplevel)

let files = git ls-files -z 'content/posts/wcs/*.md' | split row (char nul) | drop

def checkMatter [file: string] {
    let matter = open $file | get 0.attrs.value | from yaml
    let hasTitle = $matter.title | is-not-empty
    let hasDate = $matter.date | is-not-empty
    let hasTags = $matter.tags | is-not-empty
    let hasCategories = $matter.tags | is-not-empty
    # let hasRhythm = $matter.params?.rhythm | is-not-empty
    if not $hasTitle or not $hasDate or not $hasTags or not $hasCategories {
        error make {
            msg: $file
        }
    }
}

# Check that if post titles appear in other posts.
# Cross-link urls found in all posts, for example sugar-push-to-closed -> and closed -> sugar-push-to-closed.
# Remove possible duplicated posts.
# Place posts, like positions and handholds, in the correct places.
# Use spaces in filenames
# Can sequences be auto-generated?
# Replace all [] matches with titles!
def findDeadLinks [content: any] {
    mut strings = []
    for entry in $content {
        # TODO: Remove h2 and h4 from the list
        if $entry.type in [yaml code definition link_ref html h2 h4 footnote footnoteref emphasis link] {
            continue;
        }
        if $entry.type == 'text' {
            $strings = ($strings | append $entry.attrs.value)
            continue;
        }
        if $entry.type == 'list' {
            for child in $entry.children {
                $strings = ($strings | append (findDeadLinks $child))
            }
            continue;
        }
        print $entry
        print $entry.attrs
        print $entry.children.0.attrs
        error make {
            msg: $"Unknown type ($entry)"
        }
    }
    return ($strings | parse --regex '(\[\w.+?\])' | get capture0);
}


# def checkRawLinks [file: any] {
#     open --raw $file | lines | parse --regex '(\[\w.+?\])' | get capture0
# }

# $files | each {|item| checkRawLinks $item } | flatten | sort | uniq --count

$files | each {|file|
    try {
        findDeadLinks (open $file)
    } catch {|error|
        print $file
        print (open --raw $file)
        exit 1
    }
} | flatten | sort | uniq --count

