<#
.SYNOPSIS
    Create an Example Naughty List
.DESCRIPTION
    Sometimes Santa has a new or updated piece of software installed in his workshop and needs to create some sample data to test it. This function 
    creates an example Naughty List with randomly generated childrens names and ages and a mixture of naughty and not-naughty tendancies.
.NOTES
    All names and other entities created by this function are fictitious. Any resemblance to real persons is purely coincidental. 
    Being marked as naughty on this naughty list does not imply that someone with a matching name has actually been naughty.
.LINK
    
.EXAMPLE
    Get-ExampleNaughtyList
    Returns an example naughty list
#>
function Get-ExampleNaughtyList {
    param (
        [int]$Length=10
    )

    $result = @()
    for($i=0;$i -lt $Length;$i++){
        $result+= [pscustomobject]@{Name=($SampleFirstNames[(Get-Random -Maximum $SampleFirstNames.Length)]+ " "+`
                                          $SampleSurnames[(Get-Random -Maximum $SampleSurnames.Length)]);
                                    Age=(Get-Random -Maximum 15)+1;
                                    Naughty=[bool](Get-Random -Maximum 2)}
    }
    $result
}

$SampleFirstNames=@("Jimmy", "Bobby", "Mickey", "Sally", "Jenny", "Terry", "Wally", "Charley", "Billy", "Robby", "Jeffrey", "Annie", "Luigi",
                "Hayley", "Jackie", "Kayley", "Miley", "Norrie", "Ollie", "Paulie", "Qwerty", "Rosey", "Sully", "Teri", "Vicky", "Wendy",
                "Stanley", "Manny", "Allie", "Bonnie", "Charlie", "Davey", "Frankie", "Georgie")
$SampleSurnames=@("Smith", "Jones", "Tables", "Humperdink", "Tinker", "Tailor", "Soldier", "Sailor", "Wood", "Snow", "Sand", "Storm", 
                "Driver", "Parker", "Martin", "Brown", "Black", "White", "Johnson", "Walker", "Strong", "Clark", "Adams", "Hamilton")
