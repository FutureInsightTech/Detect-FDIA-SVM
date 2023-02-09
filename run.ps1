Write-Host("
---------------------------------------------------------------------------
    ---    Name: Abdul Rafay
    ---    Github: github.com/rafay99-epic
    ---    Project Name: Cyber Attact Detection
    ---    Project: https://github.com/rafay99-epic/Cyber-Attack-Detection
    ---    Website: https://rafay99.info
----------------------------------------------------------------------------");

# This will ask user to enter the commit message
function git_Message()
{
    Write-Host("
-------------------------------------
    Enter your commit Message:
-------------------------------------");
    $commitMessage = Read-Host
    git commit -m $commitMessage
}
# This will ask user to push to the remote repo
function git_push()
{
    $Push= Read-Host "
-------------------------------------------------
Do you want to push to the remote repo? (y/n)
-------------------------------------------------"
        if ($Push -eq "y") {
            Write-Host("
---------------------------------------------------------      
    Pushing to the remote repo called: $OutputVariable
--------------------------------------------------------");
            git push
        } else {
            Write-Host("
--------------------------------------------------------------------
    Coding won't be Push to GitHub called: $OutputVariable
--------------------------------------------------------------------");
        }
}

function git_merge()
{
    $merge= Read-Host "
----------------------------------------------------------------
Do you want to merge this branch code into the main Branch? (y/n)
----------------------------------------------------------------"
        if ($merge -eq "y") {
            Write-Host("
---------------------------------------------------------      
    Merging code into main Brach
--------------------------------------------------------");
        git pull origin main
        git checkout main
        git merge Bloging-Branch
        git push -u origin main
        } else {
            Write-Host("
--------------------------------------------------------------------
    Coding won't be merge to main branch called: $OutputVariable
--------------------------------------------------------------------");
        }
}

# This is the stating point of the script
$OutputVariable = (git branch --show-current) | Out-String
if( $OutputVariable -eq "main" ) {
    Write-Host("
------------------------------------
    You are on the Master Branch
-----------------------------------");
    git status
    git pull

} else
{
    Write-Host("
-----------------------------------------------
    You are on the Branch: $OutputVariable
-----------------------------------------------");
    git status
    git add *

    # Ask Git Message   
    git_Message
    # Ask to Push
    git_push
    # Ask to Merge
    # git_merge
}
