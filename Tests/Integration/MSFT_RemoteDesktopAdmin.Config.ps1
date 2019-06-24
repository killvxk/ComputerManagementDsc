Configuration setToDenied
{
    Import-DscResource -ModuleName ComputerManagementDsc
    node "localhost" {
        RemoteDesktopAdmin RemoteDesktopAdmin
        {
            IsSingleInstance = 'Yes'
            Ensure           = 'Absent'
        }
    }
}

Configuration setToAllowed
{
    Import-DscResource -ModuleName ComputerManagementDsc
    node "localhost" {
        RemoteDesktopAdmin RemoteDesktopAdmin
        {
            IsSingleInstance = 'Yes'
            Ensure           = 'Present'
        }
    }
}

Configuration setToAllowedSecure
{
    Import-DscResource -ModuleName ComputerManagementDsc
    node "localhost" {
        RemoteDesktopAdmin RemoteDesktopAdmin
        {
            IsSingleInstance = 'Yes'
            Ensure           = 'Present'
            Authentication   = 'Secure'
        }
    }
}

Configuration setToAllowedNonSecure
{
    Import-DscResource -ModuleName ComputerManagementDsc
    node "localhost" {
        RemoteDesktopAdmin RemoteDesktopAdmin
        {
            IsSingleInstance = 'Yes'
            Ensure           = 'Present'
            Authentication   = 'NonSecure'
        }
    }
}
