New-Item -Path "D:\" -Name "PL200" -ItemType "directory"
Start-BitsTransfer -Source "https://github.com/MicrosoftLearning/PL-200-Power-Platform-Functional-Consultant/archive/refs/heads/master.zip" -Destination "D:\PL200"
Expand-Archive -Path 'D:\PL200\master.zip' -DestinationPath 'D:\PL200'
Move-item -Path "D:\PL200\PL-200-Power-Platform-Functional-Consultant-master\Allfiles\*" -Destination "D:\PL200" -confirm:$false