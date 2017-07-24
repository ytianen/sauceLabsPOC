RunWait(@comspec & ' /c msiexec.exe /i "https://github.com/jianfengs/sauceLabsPOC/blob/master/AsperaConnect-ML-3.6.6.119698.msi?raw=true"  /quiet')

Sleep(2000)

Run(@comspec & ' /c C:\Users\selenium\AppData\Local\Programs\Aspera\Aspera Connect\bin\asperaconnect.exe')
