<#
.SYNOPSIS
    Draw a Christmas Tree
.DESCRIPTION
    Sometimes the elves start to feel less festive. With this function we can increase festiveness by
    up to 20% by displaying a Christmas tree on their console.
.NOTES
    Increased festiveness not guaranteed
.EXAMPLE
    Get-ChristmasTree 
    Draws a Tree of default height which is 10 characters high (not including trunk)
.EXAMPLE
    Get-ChristmasTree -TreeHeight 20
    Draws a Tree which is 20 characters high (not including trunk)
#>
function Get-ChristmasTree {
    param (
        [int]$TreeHeight=10
    )
    #Loop through the "rows" of the tree, starting with the smallest one at the top.
    for($i=1;$i -le $TreeHeight;$i++) {
        #Indent the "row" with spaces to produce a symmetrical triangular tree
        " "*($TreeHeight-$i)+"#"*$i + "#"*($i-1)   
    }
    #Add a Trunk
    $i=1
    " "*($TreeHeight-$i)+"#"*$i + "#"*($i-1)
    " "*($TreeHeight-$i)+"#"*$i + "#"*($i-1)
}

