<#
.SYNOPSIS
    Returns the number of days till the next Christmas
.DESCRIPTION
    Santa and the Elves need to know how many days remain till Christmas. This function returns 
    the number of days till the next Christmas from the current system date.
.NOTES
    Uses the Function "Get-NextChristmasDate" to get the next December 25th
.LINK
    
.EXAMPLE
    Get-DaysTillChristmas
    Returns the number of days till the next Christmas
#>
function Get-DaysTillChristmas {
    ((Get-NextChristmasDate)-(Get-Date)).Days+1
}

