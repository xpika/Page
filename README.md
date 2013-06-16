# Page

A paginator for STDIN.

Takes a page-size (default 20) and outputs a user-specified page-number of lines.

## Usage

    page [page-size] <page>
    
Equivalent to the shell command

    head -n $((page-size*page)) | tail -n -page

Page accepts input on STDIN and outputs to STDOUT.  The \<page\> argument is 1 indexed.
