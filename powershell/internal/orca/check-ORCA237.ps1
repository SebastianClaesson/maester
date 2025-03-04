# Generated on 03/04/2025 09:34:36 by .\build\orca\Update-OrcaTests.ps1

using module ".\orcaClass.psm1"

[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingEmptyCatchBlock', '')]
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSPossibleIncorrectComparisonWithNull', '')]
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
[Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingCmdletAliases', '')]
param()


<#

ORCA-237

Checks to determine if SafeLinks action for unknown potentially malicious URLs in teams

#>



class ORCA237 : ORCACheck
{
    <#
    
        CONSTRUCTOR with Check Header Data
    
    #>

    ORCA237()
    {
        $this.Control=237
        $this.Services=[ORCAService]::MDO
        $this.Area="Microsoft Defender for Office 365 Policies"
        $this.Name="Safe Links protections for links in teams messages"
        $this.PassText="Safe Links is enabled for teams messages"
        $this.FailRecommendation="Enable Safe Links policy action for unknown potentially malicious URLs in teams messages"
        $this.Importance="When Safe Links for teamas messages is enabled, URLs in messages will be checked when users click on them."
        $this.ExpandResults=$True
        $this.CheckType=[CheckType]::ObjectPropertyValue
        $this.ObjectType="Safe Links policy"
        $this.ChiValue=[ORCACHI]::Medium
        $this.ItemName="Setting"
        $this.DataType="Current Value"
        $this.Links= @{
            "Microsoft 365 Defender Portal - Safe links"="https://security.microsoft.com/safelinksv2"
            "Recommended settings for EOP and Microsoft Defender for Office 365"="https://aka.ms/orca-atpp-docs-7"
        }
    }

    <#
    
        RESULTS
    
    #>

    GetResults($Config)
    {

        ForEach($Policy in $Config["SafeLinksPolicy"]) 
        {

            # Policy is turned on, default false
            $PolicyEnabled = $false

            $PolicyName = $Config["PolicyStates"][$Policy.Guid.ToString()].Name

            # Check objects
            $ConfigObject = [ORCACheckConfig]::new()
            $ConfigObject.Object=$PolicyName
            $ConfigObject.ConfigItem="EnableSafeLinksForTeams"
            $ConfigObject.ConfigData=$Policy.EnableSafeLinksForTeams
            $ConfigObject.ConfigReadonly = $Policy.IsPreset
            $ConfigObject.ConfigPolicyGuid=$Policy.Guid.ToString()
            $ConfigObject.ConfigDisabled = $Config["PolicyStates"][$Policy.Guid.ToString()].Disabled
            $ConfigObject.ConfigWontApply = !$Config["PolicyStates"][$Policy.Guid.ToString()].Applies

            if($Policy.EnableSafeLinksForTeams -eq $true)
            {
                $ConfigObject.SetResult([ORCAConfigLevel]::Standard,"Pass")
                
            }
            Else
            {
                $ConfigObject.SetResult([ORCAConfigLevel]::Standard,"Fail")
            }
            
            $this.AddConfig($ConfigObject)
        }

    }

}
