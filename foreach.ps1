using namespace System.Linq;
using namespace System.Collections.Generic;

[int[]]$array = [Enumerable]::ToArray([Enumerable]::Where([Enumerable]::Range(1,20), [Func[int, bool]]{$args[0] % 2 -ne 0}));

foreach($item in $array)
{
    Write-Host $item
}

<#
    結果:

    1
    3
    5
    7
    9
    11
    13
    15
    17
    19
#>