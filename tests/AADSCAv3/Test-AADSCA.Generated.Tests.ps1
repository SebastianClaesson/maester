Describe "AADSC: Default Authorization Settings - Enabled Self service password reset" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-allowedToUseSSPR:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.allowedToUseSSPR | Should -Be 'true' -Because "policies/authorizationPolicy/allowedToUseSSPR should be 'true' but was $($result.allowedToUseSSPR)"
    }
}
Describe "AADSC: Default Authorization Settings - Blocked MSOnline PowerShell access" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-blockMsolPowerShell:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.blockMsolPowerShell | Should -Be '' -Because "policies/authorizationPolicy/blockMsolPowerShell should be '' but was $($result.blockMsolPowerShell)"
    }
}
Describe "AADSC: Default Authorization Settings - Enabled " -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-enabledPreviewFeatures:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.enabledPreviewFeatures | Should -Be '' -Because "policies/authorizationPolicy/enabledPreviewFeatures should be '' but was $($result.enabledPreviewFeatures)"
    }
}
Describe "AADSC: Default Authorization Settings - Guest invite restrictions" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-allowInvitesFrom:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.allowInvitesFrom | Should -Be 'adminsAndGuestInviters' -Because "policies/authorizationPolicy/allowInvitesFrom should be 'adminsAndGuestInviters' but was $($result.allowInvitesFrom)"
    }
}
Describe "AADSC: Default Authorization Settings - Sign-up for email based subscription" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-allowedToSignUpEmailBasedSubscriptions:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.allowedToSignUpEmailBasedSubscriptions | Should -Be 'false' -Because "policies/authorizationPolicy/allowedToSignUpEmailBasedSubscriptions should be 'false' but was $($result.allowedToSignUpEmailBasedSubscriptions)"
    }
}
Describe "AADSC: Default Authorization Settings - User can joint the tenant by email validation" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-allowEmailVerifiedUsersToJoinOrganization:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.allowEmailVerifiedUsersToJoinOrganization | Should -Be 'false' -Because "policies/authorizationPolicy/allowEmailVerifiedUsersToJoinOrganization should be 'false' but was $($result.allowEmailVerifiedUsersToJoinOrganization)"
    }
}
Describe "AADSC: Default Authorization Settings - Guest user access" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-guestUserRoleId:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.guestUserRoleId | Should -Be '2af84b1e-32c8-42b7-82bc-daa82404023b' -Because "policies/authorizationPolicy/guestUserRoleId should be '2af84b1e-32c8-42b7-82bc-daa82404023b' but was $($result.guestUserRoleId)"
    }
}
Describe "AADSC: Default Authorization Settings - User consent policy assigned for applications" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-permissionGrantPolicyIdsAssignedToDefaultUserRole:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.permissionGrantPolicyIdsAssignedToDefaultUserRole | Should -Be 'ManagePermissionGrantsForSelf.microsoft-user-default-low' -Because "policies/authorizationPolicy/permissionGrantPolicyIdsAssignedToDefaultUserRole should be 'ManagePermissionGrantsForSelf.microsoft-user-default-low' but was $($result.permissionGrantPolicyIdsAssignedToDefaultUserRole)"
    }
}
Describe "AADSC: Default Authorization Settings - Risk-based step-up consent" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-allowUserConsentForRiskyApps:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.allowUserConsentForRiskyApps | Should -Be 'false' -Because "policies/authorizationPolicy/allowUserConsentForRiskyApps should be 'false' but was $($result.allowUserConsentForRiskyApps)"
    }
}
Describe "AADSC: Default Authorization Settings - Default User Role Permissions - Allowed to create Apps" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-allowedToCreateApps:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.defaultUserRolePermissions.allowedToCreateApps | Should -Be 'false' -Because "policies/authorizationPolicy/defaultUserRolePermissions.allowedToCreateApps should be 'false' but was $($result.defaultUserRolePermissions.allowedToCreateApps)"
    }
}
Describe "AADSC: Default Authorization Settings - Default User Role Permissions - Allowed to create Security Groups" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-allowedToCreateSecurityGroups:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.allowedToCreateSecurityGroups | Should -Be '' -Because "policies/authorizationPolicy/allowedToCreateSecurityGroups should be '' but was $($result.allowedToCreateSecurityGroups)"
    }
}
Describe "AADSC: Default Authorization Settings - Default User Role Permissions - Allowed to create Tenants" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-allowedToCreateTenants:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.allowedToCreateTenants | Should -Be '' -Because "policies/authorizationPolicy/allowedToCreateTenants should be '' but was $($result.allowedToCreateTenants)"
    }
}
Describe "AADSC: Default Authorization Settings - Default User Role Permissions - Allowed to read BitLocker Keys for Owned Devices" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-allowedToReadBitlockerKeysForOwnedDevice:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.allowedToReadBitlockerKeysForOwnedDevice | Should -Be '' -Because "policies/authorizationPolicy/allowedToReadBitlockerKeysForOwnedDevice should be '' but was $($result.allowedToReadBitlockerKeysForOwnedDevice)"
    }
}
Describe "AADSC: Default Authorization Settings - Default User Role Permissions - Allowed to read other users" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-allowedToReadOtherUsers:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authorizationPolicy" -ApiVersion beta
        $result.allowedToReadOtherUsers | Should -Be 'true' -Because "policies/authorizationPolicy/allowedToReadOtherUsers should be 'true' but was $($result.allowedToReadOtherUsers)"
    }
}
Describe "AADSC: Default Settings - Consent Policy Settings - Group owner consent for apps accessing data" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-EnableGroupSpecificConsent:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.values.EnableGroupSpecificConsent | Should -Be 'False' -Because "settings/values.EnableGroupSpecificConsent should be 'False' but was $($result.values.EnableGroupSpecificConsent)"
    }
}
Describe "AADSC: Default Settings - Consent Policy Settings - Group owner consent for apps accessing data - Restricted to selected group owners" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-ConstrainGroupSpecificConsentToMembersOfGroupId:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.values.ConstrainGroupSpecificConsentToMembersOfGroupId | Should -Be '' -Because "settings/values.ConstrainGroupSpecificConsentToMembersOfGroupId should be '' but was $($result.values.ConstrainGroupSpecificConsentToMembersOfGroupId)"
    }
}
Describe "AADSC: Default Settings - Consent Policy Settings - Block user consent for risky apps" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-BlockUserConsentForRiskyApps:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.values.BlockUserConsentForRiskyApps | Should -Be 'true' -Because "settings/values.BlockUserConsentForRiskyApps should be 'true' but was $($result.values.BlockUserConsentForRiskyApps)"
    }
}
Describe "AADSC: Default Settings - Consent Policy Settings - Users can request admin consent to apps they are unable to consent to???" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-EnableAdminConsentRequests:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.values.EnableAdminConsentRequests | Should -Be 'true' -Because "settings/values.EnableAdminConsentRequests should be 'true' but was $($result.values.EnableAdminConsentRequests)"
    }
}
Describe "AADSC: Default Settings - Password Rule Settings - Password Protection - Mode" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-BannedPasswordCheckOnPremisesMode:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.BannedPasswordCheckOnPremisesMode | Should -Be 'Enforce' -Because "settings/BannedPasswordCheckOnPremisesMode should be 'Enforce' but was $($result.BannedPasswordCheckOnPremisesMode)"
    }
}
Describe "AADSC: Default Settings - Password Rule Settings - Password Protection - Enable password protection on Windows Server Active Directory" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-EnableBannedPasswordCheckOnPremises:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.EnableBannedPasswordCheckOnPremises | Should -Be 'True' -Because "settings/EnableBannedPasswordCheckOnPremises should be 'True' but was $($result.EnableBannedPasswordCheckOnPremises)"
    }
}
Describe "AADSC: Default Settings - Password Rule Settings - Enforce custom list" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-EnableBannedPasswordCheck:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.EnableBannedPasswordCheck | Should -Be 'True' -Because "settings/EnableBannedPasswordCheck should be 'True' but was $($result.EnableBannedPasswordCheck)"
    }
}
Describe "AADSC: Default Settings - Password Rule Settings - Password Protection - Custom banned password list" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-BannedPasswordList:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.BannedPasswordList | Should -Be '' -Because "settings/BannedPasswordList should be '' but was $($result.BannedPasswordList)"
    }
}
Describe "AADSC: Default Settings - Password Rule Settings - Smart Lockout - Lockout duration in seconds" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-LockoutDurationInSeconds:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.LockoutDurationInSeconds | Should -Be '60' -Because "settings/LockoutDurationInSeconds should be '60' but was $($result.LockoutDurationInSeconds)"
    }
}
Describe "AADSC: Default Settings - Password Rule Settings - Smart Lockout - Lockout threshold" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-LockoutThreshold:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.LockoutThreshold | Should -Be '10' -Because "settings/LockoutThreshold should be '10' but was $($result.LockoutThreshold)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - Default writeback setting for newly created Microsoft 365 groups" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-NewUnifiedGroupWritebackDefault:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.NewUnifiedGroupWritebackDefault | Should -Be '' -Because "settings/NewUnifiedGroupWritebackDefault should be '' but was $($result.NewUnifiedGroupWritebackDefault)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - Microsoft Information Protection (MIP) Sensitivity labels to Microsoft 365 groups" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-EnableMIPLabels:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.EnableMIPLabels | Should -Be '' -Because "settings/EnableMIPLabels should be '' but was $($result.EnableMIPLabels)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups naming convention - Custom blocked words list" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-CustomBlockedWordsList:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.CustomBlockedWordsList | Should -Be '' -Because "settings/CustomBlockedWordsList should be '' but was $($result.CustomBlockedWordsList)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups naming convention - Microsoft Standard List of blocked words (deprecated)" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-EnableMSStandardBlockedWords:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.EnableMSStandardBlockedWords | Should -Be '' -Because "settings/EnableMSStandardBlockedWords should be '' but was $($result.EnableMSStandardBlockedWords)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups naming convention - Classification descriptions" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-ClassificationDescriptions:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.ClassificationDescriptions | Should -Be '' -Because "settings/ClassificationDescriptions should be '' but was $($result.ClassificationDescriptions)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups naming convention - Default classification" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-DefaultClassification:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.DefaultClassification | Should -Be '' -Because "settings/DefaultClassification should be '' but was $($result.DefaultClassification)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups naming convention - prefix/suffix naming requirement" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-PrefixSuffixNamingRequirement:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.PrefixSuffixNamingRequirement | Should -Be '' -Because "settings/PrefixSuffixNamingRequirement should be '' but was $($result.PrefixSuffixNamingRequirement)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups - Allow Guests to become Group Owner" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-AllowGuestsToBeGroupOwner:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.AllowGuestsToBeGroupOwner | Should -Be 'false' -Because "settings/AllowGuestsToBeGroupOwner should be 'false' but was $($result.AllowGuestsToBeGroupOwner)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups - Allow Guests to have access to groups content" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-AllowGuestsToAccessGroups:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.AllowGuestsToAccessGroups | Should -Be 'True' -Because "settings/AllowGuestsToAccessGroups should be 'True' but was $($result.AllowGuestsToAccessGroups)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups - Guest usage guidelines URL" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-GuestUsageGuidelinesUrl:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.GuestUsageGuidelinesUrl | Should -Be '' -Because "settings/GuestUsageGuidelinesUrl should be '' but was $($result.GuestUsageGuidelinesUrl)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups - Enable Group creation for any members" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-EnableGroupCreation:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.EnableGroupCreation | Should -Be '' -Because "settings/EnableGroupCreation should be '' but was $($result.EnableGroupCreation)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups - Allow group created for a specific security group" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-GroupCreationAllowedGroupId:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.GroupCreationAllowedGroupId | Should -Be '' -Because "settings/GroupCreationAllowedGroupId should be '' but was $($result.GroupCreationAllowedGroupId)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups - Allow to add Guests" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-AllowToAddGuests:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.AllowToAddGuests | Should -Be '' -Because "settings/AllowToAddGuests should be '' but was $($result.AllowToAddGuests)"
    }
}
Describe "AADSC: Default Settings - Classification and M365 Groups - M365 groups - Classification list" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-ClassificationList:" {
        $result = Invoke-MtGraphRequest -RelativeUri "settings" -ApiVersion beta
        $result.ClassificationList | Should -Be '' -Because "settings/ClassificationList should be '' but was $($result.ClassificationList)"
    }
}
Describe "AADSC: Default Activity Timeout - Enable directory level idle timeout" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-WebSessionIdleTimeout:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/activityBasedTimeoutPolicies" -ApiVersion beta
        $result.definition.ActivityBasedTimeoutPolicy.ApplicationPolicies.WebSessionIdleTimeout | Should -Be '' -Because "policies/activityBasedTimeoutPolicies/definition.ActivityBasedTimeoutPolicy.ApplicationPolicies.WebSessionIdleTimeout should be '' but was $($result.definition.ActivityBasedTimeoutPolicy.ApplicationPolicies.WebSessionIdleTimeout)"
    }
}
Describe "AADSC: External Identities - External user leave settings" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-allowExternalIdentitiesToLeave:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/externalIdentitiesPolicy" -ApiVersion beta
        $result.allowExternalIdentitiesToLeave | Should -Be '' -Because "policies/externalIdentitiesPolicy/allowExternalIdentitiesToLeave should be '' but was $($result.allowExternalIdentitiesToLeave)"
    }
}
Describe "AADSC: External Identities - Deleted Identities Data Removal" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-allowDeletedIdentitiesDataRemoval:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/externalIdentitiesPolicy" -ApiVersion beta
        $result.allowDeletedIdentitiesDataRemoval | Should -Be '' -Because "policies/externalIdentitiesPolicy/allowDeletedIdentitiesDataRemoval should be '' but was $($result.allowDeletedIdentitiesDataRemoval)"
    }
}
Describe "AADSC: Feature Rollout (Enabled Previews) - " -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-featureRolloutPolicy:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/featureRolloutPolicies" -ApiVersion beta
        $result.value | Should -Be '' -Because "policies/featureRolloutPolicies/value should be '' but was $($result.value)"
    }
}
Describe "AADSC: Authentication Method - General Settings - Manage migration" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-policyMigrationState:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.policyMigrationState | Should -Be 'migrationComplete' -Because "policies/authenticationMethodsPolicy/policyMigrationState should be 'migrationComplete' but was $($result.policyMigrationState)"
    }
}
Describe "AADSC: Authentication Method - General Settings - Report suspicious activity - State" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-reportSuspiciousActivitySettingsState:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.reportSuspiciousActivitySettings.state | Should -Be 'enabled' -Because "policies/authenticationMethodsPolicy/reportSuspiciousActivitySettings.state should be 'enabled' but was $($result.reportSuspiciousActivitySettings.state)"
    }
}
Describe "AADSC: Authentication Method - General Settings - Report suspicious activity - Included users/groups" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-reportSuspiciousActivitySettingsIncluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.reportSuspiciousActivitySettings.includeTargets.id | Should -Be 'all_users' -Because "policies/authenticationMethodsPolicy/reportSuspiciousActivitySettings.includeTargets.id should be 'all_users' but was $($result.reportSuspiciousActivitySettings.includeTargets.id)"
    }
}
Describe "AADSC: Authentication Method - General Settings - Report suspicious activity - Reporting code" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-reportSuspiciousActivitySettingsReporting code:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.reportSuspiciousActivitySettings.voiceReportingCode | Should -Be '' -Because "policies/authenticationMethodsPolicy/reportSuspiciousActivitySettings.voiceReportingCode should be '' but was $($result.reportSuspiciousActivitySettings.voiceReportingCode)"
    }
}
Describe "AADSC: Authentication Method - General Settings - System Credential Preferences - State" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-systemCredentialPreferencesState:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.systemCredentialPreferences.state | Should -Be '' -Because "policies/authenticationMethodsPolicy/systemCredentialPreferences.state should be '' but was $($result.systemCredentialPreferences.state)"
    }
}
Describe "AADSC: Authentication Method - General Settings - System Credential Preferences - Included users/groups" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-systemCredentialPreferencesStateIncluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.systemCredentialPreferences.includeTargets.id | Should -Be '' -Because "policies/authenticationMethodsPolicy/systemCredentialPreferences.includeTargets.id should be '' but was $($result.systemCredentialPreferences.includeTargets.id)"
    }
}
Describe "AADSC: Authentication Method - General Settings - System Credential Preferences - Excluded users/groups" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-systemCredentialPreferencesStateExcluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.systemCredentialPreferences.excludeTargets.id | Should -Be '' -Because "policies/authenticationMethodsPolicy/systemCredentialPreferences.excludeTargets.id should be '' but was $($result.systemCredentialPreferences.excludeTargets.id)"
    }
}
Describe "AADSC: Authentication Method - General Settings - Registration campaign - State" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-authenticationMethodsRegistrationCampaignState:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.registrationEnforcement.authenticationMethodsRegistrationCampaign.state | Should -Be '' -Because "policies/authenticationMethodsPolicy/registrationEnforcement.authenticationMethodsRegistrationCampaign.state should be '' but was $($result.registrationEnforcement.authenticationMethodsRegistrationCampaign.state)"
    }
}
Describe "AADSC: Authentication Method - General Settings - Registration campaign - Included users/groups" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-authenticationMethodsRegistrationCampaignIncluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.registrationEnforcement.authenticationMethodsRegistrationCampaign.includeTargets.id | Should -Be '' -Because "policies/authenticationMethodsPolicy/registrationEnforcement.authenticationMethodsRegistrationCampaign.includeTargets.id should be '' but was $($result.registrationEnforcement.authenticationMethodsRegistrationCampaign.includeTargets.id)"
    }
}
Describe "AADSC: Authentication Method - General Settings - Registration campaign - Authentication Method" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-authenticationMethodsRegistrationCampaignTargetedAuthenticationMethod:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.registrationEnforcement.authenticationMethodsRegistrationCampaign.includeTargets.targetedAuthenticationMethod | Should -Be '' -Because "policies/authenticationMethodsPolicy/registrationEnforcement.authenticationMethodsRegistrationCampaign.includeTargets.targetedAuthenticationMethod should be '' but was $($result.registrationEnforcement.authenticationMethodsRegistrationCampaign.includeTargets.targetedAuthenticationMethod)"
    }
}
Describe "AADSC: Authentication Method - General Settings - Registration campaign - Excluded users/groups" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-authenticationMethodsRegistrationCampaignExcluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.registrationEnforcement.authenticationMethodsRegistrationCampaign.excludeTargets.id | Should -Be '' -Because "policies/authenticationMethodsPolicy/registrationEnforcement.authenticationMethodsRegistrationCampaign.excludeTargets.id should be '' but was $($result.registrationEnforcement.authenticationMethodsRegistrationCampaign.excludeTargets.id)"
    }
}
Describe "AADSC: Authentication Method - General Settings - Registration campaign - Days allowed to snooze" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-authenticationMethodsRegistrationCampaignSnoozeDurationInDays:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy" -ApiVersion beta
        $result.registrationEnforcement.authenticationMethodsRegistrationCampaign.snoozeDurationInDays | Should -Be '' -Because "policies/authenticationMethodsPolicy/registrationEnforcement.authenticationMethodsRegistrationCampaign.snoozeDurationInDays should be '' but was $($result.registrationEnforcement.authenticationMethodsRegistrationCampaign.snoozeDurationInDays)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - State" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-state:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.state | Should -Be 'enabled' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/state should be 'enabled' but was $($result.state)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Allow use of Microsoft Authenticator OTP" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-isSoftwareOathEnabled:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.state | Should -Be 'enabled' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/state should be 'enabled' but was $($result.state)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Require number matching for push notifications" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-numberMatchingRequiredState:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.featureSettings.numberMatchingRequiredState.state | Should -Be 'enabled' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/featureSettings.numberMatchingRequiredState.state should be 'enabled' but was $($result.featureSettings.numberMatchingRequiredState.state)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Included users/groups of number matching for push notifications" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-numberMatchingRequiredStateIncluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.featureSettings.numberMatchingRequiredState.includeTarget.id | Should -Be 'all_users' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/featureSettings.numberMatchingRequiredState.includeTarget.id should be 'all_users' but was $($result.featureSettings.numberMatchingRequiredState.includeTarget.id)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Excluded users/groups of number matching for push notifications" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-numberMatchingRequiredStateExcluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.featureSettings.numberMatchingRequiredState.excludeTarget.id | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/featureSettings.numberMatchingRequiredState.excludeTarget.id should be '' but was $($result.featureSettings.numberMatchingRequiredState.excludeTarget.id)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Show application name in push and passwordless notifications" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-displayAppInformationRequiredState:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.featureSettings.displayAppInformationRequiredState.state | Should -Be 'enabled' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/featureSettings.displayAppInformationRequiredState.state should be 'enabled' but was $($result.featureSettings.displayAppInformationRequiredState.state)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Included users/groups to show application name in push and passwordless notifications" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-displayAppInformationRequiredStateIncluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.featureSettings.displayAppInformationRequiredState.includeTarget.id | Should -Be 'all_users' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/featureSettings.displayAppInformationRequiredState.includeTarget.id should be 'all_users' but was $($result.featureSettings.displayAppInformationRequiredState.includeTarget.id)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Excluded users/groups to show application name in push and passwordless notifications" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-displayAppInformationRequiredStateExcluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.featureSettings.displayAppInformationRequiredState.excludeTarget.id | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/featureSettings.displayAppInformationRequiredState.excludeTarget.id should be '' but was $($result.featureSettings.displayAppInformationRequiredState.excludeTarget.id)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Show geographic location in push and passwordless notifications" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-displayLocationInformationRequiredState:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.featureSettings.displayLocationInformationRequiredState.state | Should -Be 'enabled' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/featureSettings.displayLocationInformationRequiredState.state should be 'enabled' but was $($result.featureSettings.displayLocationInformationRequiredState.state)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Included users/groups to show geographic location in push and passwordless notifications" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-displayLocationInformationRequiredStateIncluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.featureSettings.displayLocationInformationRequiredState.includeTarget.id | Should -Be 'all_users' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/featureSettings.displayLocationInformationRequiredState.includeTarget.id should be 'all_users' but was $($result.featureSettings.displayLocationInformationRequiredState.includeTarget.id)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Excluded users/groups to show geographic location in push and passwordless notifications" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-displayLocationInformationRequiredExcluded:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.featureSettings.displayLocationInformationRequiredState.excludeTarget.id | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/featureSettings.displayLocationInformationRequiredState.excludeTarget.id should be '' but was $($result.featureSettings.displayLocationInformationRequiredState.excludeTarget.id)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Included users/groups from using Authenticator App" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-includeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.includeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/includeTargets should be '' but was $($result.includeTargets)"
    }
}
Describe "AADSC: Authentication Method - Microsoft Authenticator - Excluded users/groups from using Authenticator App" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-excludeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')" -ApiVersion beta
        $result.excludeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/excludeTargets should be '' but was $($result.excludeTargets)"
    }
}
Describe "AADSC: Authentication Method - FIDO2 security key - State" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-state:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')" -ApiVersion beta
        $result.state | Should -Be 'enabled' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')/state should be 'enabled' but was $($result.state)"
    }
}
Describe "AADSC: Authentication Method - FIDO2 security key - Allow self-service set up" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-isSelfServiceRegistrationAllowed:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')" -ApiVersion beta
        $result.isSelfServiceRegistrationAllowed | Should -Be 'true' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')/isSelfServiceRegistrationAllowed should be 'true' but was $($result.isSelfServiceRegistrationAllowed)"
    }
}
Describe "AADSC: Authentication Method - FIDO2 security key - Enforce attestation" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-isAttestationEnforced:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')" -ApiVersion beta
        $result.isAttestationEnforced | Should -Be 'true' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')/isAttestationEnforced should be 'true' but was $($result.isAttestationEnforced)"
    }
}
Describe "AADSC: Authentication Method - FIDO2 security key - Enforce key restrictions" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-keyRestrictions.isEnforced:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')" -ApiVersion beta
        $result.keyRestrictions.isEnforced | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')/keyRestrictions.isEnforced should be '' but was $($result.keyRestrictions.isEnforced)"
    }
}
Describe "AADSC: Authentication Method - FIDO2 security key - Restricted" -Tag "AADSCA", "Security", "All", "Informational" {
    It "AADSC-keyRestrictions.aaGuids:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')" -ApiVersion beta
        $result.keyRestrictions.aaGuids | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')/keyRestrictions.aaGuids should be '' but was $($result.keyRestrictions.aaGuids)"
    }
}
Describe "AADSC: Authentication Method - FIDO2 security key - Restrict specific keys" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-keyRestrictions.enforcementType:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')" -ApiVersion beta
        $result.keyRestrictions.enforcementType | Should -Be 'block' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')/keyRestrictions.enforcementType should be 'block' but was $($result.keyRestrictions.enforcementType)"
    }
}
Describe "AADSC: Authentication Method - FIDO2 security key - Included users/groups from using security keys" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-includeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')" -ApiVersion beta
        $result.includeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')/includeTargets should be '' but was $($result.includeTargets)"
    }
}
Describe "AADSC: Authentication Method - FIDO2 security key - Excluded users/groups from using security keys" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-excludeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')" -ApiVersion beta
        $result.excludeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')/excludeTargets should be '' but was $($result.excludeTargets)"
    }
}
Describe "AADSC: Authentication Method - Temporary Access Pass - State" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-state:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')" -ApiVersion beta
        $result.state | Should -Be 'enabled' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/state should be 'enabled' but was $($result.state)"
    }
}
Describe "AADSC: Authentication Method - Temporary Access Pass - One-time" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-isUsableOnce:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')" -ApiVersion beta
        $result.isUsableOnce | Should -Be 'false' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/isUsableOnce should be 'false' but was $($result.isUsableOnce)"
    }
}
Describe "AADSC: Authentication Method - Temporary Access Pass - Default lifetime" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-defaultLifetimeInMinutes:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')" -ApiVersion beta
        $result.defaultLifetimeInMinutes | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/defaultLifetimeInMinutes should be '' but was $($result.defaultLifetimeInMinutes)"
    }
}
Describe "AADSC: Authentication Method - Temporary Access Pass - Length" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-defaultLength:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')" -ApiVersion beta
        $result.defaultLength | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/defaultLength should be '' but was $($result.defaultLength)"
    }
}
Describe "AADSC: Authentication Method - Temporary Access Pass - Minimum lifetime" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-minimumLifetimeInMinutes:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')" -ApiVersion beta
        $result.minimumLifetimeInMinutes | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/minimumLifetimeInMinutes should be '' but was $($result.minimumLifetimeInMinutes)"
    }
}
Describe "AADSC: Authentication Method - Temporary Access Pass - Maximum lifetime" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-maximumLifetimeInMinutes:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')" -ApiVersion beta
        $result.maximumLifetimeInMinutes | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/maximumLifetimeInMinutes should be '' but was $($result.maximumLifetimeInMinutes)"
    }
}
Describe "AADSC: Authentication Method - Temporary Access Pass - Included users/groups from Temporary Access Pass" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-includeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')" -ApiVersion beta
        $result.includeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/includeTargets should be '' but was $($result.includeTargets)"
    }
}
Describe "AADSC: Authentication Method - Temporary Access Pass - Excluded users/group from Temporary Access Pass" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-excludeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')" -ApiVersion beta
        $result.excludeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/excludeTargets should be '' but was $($result.excludeTargets)"
    }
}
Describe "AADSC: Authentication Method - Third-party software OATH tokens - State" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-state:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('SoftwareOath')" -ApiVersion beta
        $result.state | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('SoftwareOath')/state should be '' but was $($result.state)"
    }
}
Describe "AADSC: Authentication Method - Third-party software OATH tokens - Included users/groups from OATH token" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-includeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('SoftwareOath')" -ApiVersion beta
        $result.includeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('SoftwareOath')/includeTargets should be '' but was $($result.includeTargets)"
    }
}
Describe "AADSC: Authentication Method - Third-party software OATH tokens - Excluded users/group from OATH token" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-excludeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('SoftwareOath')" -ApiVersion beta
        $result.excludeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('SoftwareOath')/excludeTargets should be '' but was $($result.excludeTargets)"
    }
}
Describe "AADSC: Authentication Method - Email OTP - State" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-state:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Email')" -ApiVersion beta
        $result.state | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Email')/state should be '' but was $($result.state)"
    }
}
Describe "AADSC: Authentication Method - Email OTP - Allow external users to use email OTP" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-allowExternalIdToUseEmailOtp:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Email')" -ApiVersion beta
        $result.allowExternalIdToUseEmailOtp | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Email')/allowExternalIdToUseEmailOtp should be '' but was $($result.allowExternalIdToUseEmailOtp)"
    }
}
Describe "AADSC: Authentication Method - Email OTP - Included users/groups from Email OTP" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-includeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Email')" -ApiVersion beta
        $result.includeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Email')/includeTargets should be '' but was $($result.includeTargets)"
    }
}
Describe "AADSC: Authentication Method - Email OTP - Excluded users/group from Email OTP" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-excludeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Email')" -ApiVersion beta
        $result.excludeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Email')/excludeTargets should be '' but was $($result.excludeTargets)"
    }
}
Describe "AADSC: Authentication Method - Voice call - State" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-state:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Voice')" -ApiVersion beta
        $result.state | Should -Be 'disabled' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Voice')/state should be 'disabled' but was $($result.state)"
    }
}
Describe "AADSC: Authentication Method - Voice call - Phone Options - Office" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-isOfficePhoneAllowed:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Voice')" -ApiVersion beta
        $result.isOfficePhoneAllowed | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Voice')/isOfficePhoneAllowed should be '' but was $($result.isOfficePhoneAllowed)"
    }
}
Describe "AADSC: Authentication Method - Voice call - Included users/groups from Voice call" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-includeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Voice')" -ApiVersion beta
        $result.includeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Voice')/includeTargets should be '' but was $($result.includeTargets)"
    }
}
Describe "AADSC: Authentication Method - Voice call - Excluded users/group from Voice call" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-excludeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Voice')" -ApiVersion beta
        $result.excludeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Voice')/excludeTargets should be '' but was $($result.excludeTargets)"
    }
}
Describe "AADSC: Authentication Method - SMS - State" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-state:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Sms')" -ApiVersion beta
        $result.state | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Sms')/state should be '' but was $($result.state)"
    }
}
Describe "AADSC: Authentication Method - SMS - Included users/groups from Voice call" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-includeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Sms')" -ApiVersion beta
        $result.includeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Sms')/includeTargets should be '' but was $($result.includeTargets)"
    }
}
Describe "AADSC: Authentication Method - SMS - Excluded users/group from Voice call" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-excludeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Sms')" -ApiVersion beta
        $result.excludeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Sms')/excludeTargets should be '' but was $($result.excludeTargets)"
    }
}
Describe "AADSC: Authentication Method - Certificate-based authentication - State" -Tag "AADSCA", "Security", "All", "High" {
    It "AADSC-state:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')" -ApiVersion beta
        $result.state | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')/state should be '' but was $($result.state)"
    }
}
Describe "AADSC: Authentication Method - Certificate-based authentication - Included users/groups from CBA" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-includeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')" -ApiVersion beta
        $result.includeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')/includeTargets should be '' but was $($result.includeTargets)"
    }
}
Describe "AADSC: Authentication Method - Certificate-based authentication - Excluded users/group from CBA" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-excludeTargets:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')" -ApiVersion beta
        $result.excludeTargets | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')/excludeTargets should be '' but was $($result.excludeTargets)"
    }
}
Describe "AADSC: Authentication Method - Certificate-based authentication - Authentication binding - Protected Level" -Tag "AADSCA", "Security", "All", "Medium" {
    It "AADSC-authenticationModeConfiguration.x509CertificateAuthenticationDefaultMode:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')" -ApiVersion beta
        $result.authenticationModeConfiguration.x509CertificateAuthenticationDefaultMode | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')/authenticationModeConfiguration.x509CertificateAuthenticationDefaultMode should be '' but was $($result.authenticationModeConfiguration.x509CertificateAuthenticationDefaultMode)"
    }
}
Describe "AADSC: Authentication Method - Certificate-based authentication - Authentication binding - Rules" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-authenticationModeConfiguration.rules:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')" -ApiVersion beta
        $result.authenticationModeConfiguration.rules | Should -Be '' -Because "policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')/authenticationModeConfiguration.rules should be '' but was $($result.authenticationModeConfiguration.rules)"
    }
}
Describe "AADSC: Consent Framework - Admin Consent Request (Coming soon) - Users can request admin consent to apps they are unable to consent to" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-isEnabled:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/adminConsentRequestPolicy" -ApiVersion beta
        $result.isEnabled | Should -Be 'true' -Because "policies/adminConsentRequestPolicy/isEnabled should be 'true' but was $($result.isEnabled)"
    }
}
Describe "AADSC: Consent Framework - Admin Consent Request (Coming soon) - Reviewers will receive email notifications for requests???" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-notifyReviewers:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/adminConsentRequestPolicy" -ApiVersion beta
        $result.notifyReviewers | Should -Be 'true' -Because "policies/adminConsentRequestPolicy/notifyReviewers should be 'true' but was $($result.notifyReviewers)"
    }
}
Describe "AADSC: Consent Framework - Admin Consent Request (Coming soon) - Reviewers will receive email notifications when admin consent requests are about to expire???" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-notifyReviewers:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/adminConsentRequestPolicy" -ApiVersion beta
        $result.notifyReviewers | Should -Be 'true' -Because "policies/adminConsentRequestPolicy/notifyReviewers should be 'true' but was $($result.notifyReviewers)"
    }
}
Describe "AADSC: Consent Framework - Admin Consent Request (Coming soon) - Consent request expires after (days)???" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-requestDurationInDays:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/adminConsentRequestPolicy" -ApiVersion beta
        $result.requestDurationInDays | Should -Be '30' -Because "policies/adminConsentRequestPolicy/requestDurationInDays should be '30' but was $($result.requestDurationInDays)"
    }
}
Describe "AADSC: Consent Framework - Admin Consent Request (Coming soon) - Consent request expires after (days)???" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-reviewers:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/adminConsentRequestPolicy" -ApiVersion beta
        $result.reviewers | Should -Be '30' -Because "policies/adminConsentRequestPolicy/reviewers should be '30' but was $($result.reviewers)"
    }
}
Describe "AADSC: Consent Framework - Admin Consent Request (Coming soon) - Consent request expires after (days)???" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-version:" {
        $result = Invoke-MtGraphRequest -RelativeUri "policies/adminConsentRequestPolicy" -ApiVersion beta
        $result.version | Should -Be '' -Because "policies/adminConsentRequestPolicy/version should be '' but was $($result.version)"
    }
}
Describe "AADSC: Azure AD Recommendations - Protect all users with a user risk policy" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-Microsoft.Identity.IAM.Insights.UserRiskPolicy:" {
        $result = Invoke-MtGraphRequest -RelativeUri "directory/recommendations" -ApiVersion beta
        $result.status | Should -Be 'completedBySystem' -Because "directory/recommendations/status should be 'completedBySystem' but was $($result.status)"
    }
}
Describe "AADSC: Azure AD Recommendations - Protect all users with a sign-in risk policy" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-Microsoft.Identity.IAM.Insights.SigninRiskPolicy:" {
        $result = Invoke-MtGraphRequest -RelativeUri "directory/recommendations" -ApiVersion beta
        $result.status | Should -Be 'completedBySystem' -Because "directory/recommendations/status should be 'completedBySystem' but was $($result.status)"
    }
}
Describe "AADSC: Azure AD Recommendations - Require multifactor authentication for administrative roles" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-Microsoft.Identity.IAM.Insights.AdminMFAV2:" {
        $result = Invoke-MtGraphRequest -RelativeUri "directory/recommendations" -ApiVersion beta
        $result.status | Should -Be 'completedBySystem' -Because "directory/recommendations/status should be 'completedBySystem' but was $($result.status)"
    }
}
Describe "AADSC: Azure AD Recommendations - Use limited administrative roles" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-Microsoft.Identity.IAM.Insights.RoleOverlap:" {
        $result = Invoke-MtGraphRequest -RelativeUri "directory/recommendations" -ApiVersion beta
        $result.status | Should -Be 'completedBySystem' -Because "directory/recommendations/status should be 'completedBySystem' but was $($result.status)"
    }
}
Describe "AADSC: Azure AD Recommendations - Remove unused applications" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-Microsoft.Identity.IAM.Insights.StaleApps:" {
        $result = Invoke-MtGraphRequest -RelativeUri "directory/recommendations" -ApiVersion beta
        $result.status | Should -Be 'completedBySystem' -Because "directory/recommendations/status should be 'completedBySystem' but was $($result.status)"
    }
}
Describe "AADSC: Azure AD Recommendations - Renew expiring application credentials" -Tag "AADSCA", "Security", "All", "" {
    It "AADSC-Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry:" {
        $result = Invoke-MtGraphRequest -RelativeUri "directory/recommendations" -ApiVersion beta
        $result.status | Should -Be 'completedBySystem' -Because "directory/recommendations/status should be 'completedBySystem' but was $($result.status)"
    }
}

