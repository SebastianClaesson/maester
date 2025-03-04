# Generated on 03/04/2025 09:34:37 by .\build\orca\Update-OrcaTests.ps1

Describe "ORCA" -Tag "ORCA", "ORCA115", "EXO", "Security", "All" {
    It "ORCA115: Mailbox intelligence based impersonation protection is enabled in anti-phishing policies." {
        $result = Test-ORCA115

        if($null -ne $result) {
            $result | Should -Be $true -Because "Mailbox intelligence based impersonation protection is enabled in anti-phishing policies."
        }
    }
}
