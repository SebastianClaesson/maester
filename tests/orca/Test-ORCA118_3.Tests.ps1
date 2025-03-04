# Generated on 03/04/2025 09:34:37 by .\build\orca\Update-OrcaTests.ps1

Describe "ORCA" -Tag "ORCA", "ORCA118_3", "EXO", "Security", "All" {
    It "ORCA118_3: Your own domains are not being allow listed in an unsafe manner in Anti-Spam Policies." {
        $result = Test-ORCA118_3

        if($null -ne $result) {
            $result | Should -Be $true -Because "Your own domains are not being allow listed in an unsafe manner in Anti-Spam Policies."
        }
    }
}
