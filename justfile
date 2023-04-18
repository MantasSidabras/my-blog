default:
    hugo -t lowkey
run:
    hugo server
dev:
    hugo server
serve:
    hugo server
post POST:
    hugo new content/posts/{{POST}}/{{POST}}.md
