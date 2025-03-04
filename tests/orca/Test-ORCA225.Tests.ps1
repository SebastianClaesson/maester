# Generated on 03/04/2025 09:34:37 by .\build\orca\Update-OrcaTests.ps1

Describe "ORCA" -Tag "ORCA", "ORCA225", "EXO", "Security", "All" {
    It "ORCA225: Safe Documents is enabled for Office clients." {
        $result = Test-ORCA225

        if($null -ne $result) {
            $result | Should -Be $true -Because "Safe Documents is enabled for Office clients."
        }
    }
}
