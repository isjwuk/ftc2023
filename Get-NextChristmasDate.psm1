<#
.SYNOPSIS
    Returns the date of the next Christmas
.DESCRIPTION
    Lots of the processing systems in the Workshop need to perform tasks related to the NEXT occurrence
    of December 25th. This function returns the date of the next Christmas Day after the current system date.
.NOTES
    
.LINK
    
.EXAMPLE
    Get-NextChristmasDate
    Returns the date of the next Christmas
#>
function Get-NextChristmasDate {
    #Check if we're in that week after Christmas before the New Year
    $Year=(Get-Date).Year
    if ((Get-Date) -ge (Get-Date -Month 12 -Day 25)) {
        #Look for next year's Christmas Day
        $Year++
    } 
    Get-Date -Month 12 -Day 25 -Year $Year
}
