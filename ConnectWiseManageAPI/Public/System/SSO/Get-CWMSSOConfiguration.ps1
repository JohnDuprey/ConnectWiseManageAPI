function Get-CWMSSOConfiguration {
    [CmdletBinding()]
    param(
        [string]$id,
        [switch]$count,
        [string]$condition,
        [ValidatePattern('\S* (desc|asc)')]
        [string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all
    )

    $Endpoint = '/system/ssoConfigurations'
    if ($ID) {
        $Endpoint += "/$id"
        $null = $PsBoundParameters.Remove('id')
    }
    Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}