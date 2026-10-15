# uzturesana-powershell-romanovskis
1. Sistēmas apraksts
Skripts parāda manu datoru. Dators ir ARTUR, uz tā ir Windows 11 Home. Procesu skaits tobrīd bija 323.

2. Desmit procesi sakārtoti pēc atmiņas
Skripts parāda 10 procesus, kas ēd visvairāk atmiņas. Lielākais bija cs2 ar 1631 MB, mazākais steamwebhelper ar 475 MB. Saraksts ir augošā secībā.

3. Servisu skaitīšana
Skripts saskaita servisus. Manā datorā darbojas 134, bet apturēti ir 165. Kopā sanāk 299. Tas sakrīt ar kopējo servisu skaitu.

4. Automātisko servisu palaišana
Skripts atrada automātiskos servisus, kas ir apturēti, un mēģināja tos palaist. Bet bez administratora tiesībām tas neizdevās. Sistēma izdeva kļūdu, ka nevar atvērt servisu. Tāpēc šim uzdevumam vajag administratora tiesības.

5. Kļūdas sistēmas žurnālā
Pēdējās 48 stundās sistēmas žurnālā bija 6 kļūdas. Visbiežāk kļūdas nāca no Service Control Manager, 4 reizes. Tas varētu būt saistīts ar servisu darbību.

6. Draiveri, kas nav Microsoft
Skripts izvada draiverus, kas nav no Microsoft. Sākumā filtrs nepamanīja Microsoft Corporation, tāpēc es to izlaboju (no -ne uz -notlike). Tagad CSV failā ir 32 rindas. Es izvēlējos NVIDIA GeForce RTX 5060 Ti, tas pieder pie videokartes.

7. Diska vieta un brīdinājums
Skripts parāda disku brīvo vietu. Diskam C ir 144 GB, diskam E ir 158 GB brīvās vietas. Es iestatīju brīdinājuma robežu uz 10 GB. Tā kā abi diski ir virs šīs robežas, brīdinājums netika izvadīts.

8. Divi ceļi, viens rezultāts
Skripts salīdzina divas metodes, kā iegūt informāciju par Spooler servisu. Get-Service bija daudz ātrāks, tikai 6 ms, bet Get-CimInstance prasīja 524 ms. Get-Service ir ātrāks, jo tas ir tiešs cmdlet, nevis iet caur WMI.

9. Kurš lietotājs palaida procesu
Skripts mēģināja parādīt, kurš lietotājs palaida procesu. Bet bez administratora tiesībām sistēma neļāva to izdarīt. Tā izdeva kļūdu, ka vajag paaugstinātas tiesības. Tas pierāda, ka šo uzdevumu nevar izpildīt parastā logā.

10. Kopsavilkums
Skripts apkopo datus no iepriekšējiem uzdevumiem. Salīdzinot ar sākumu, skaitļi atšķiras. Procesu skaits mainījās no 323 uz 334, jo dators pastāvīgi strādā. Servisi, kļūdas un diska vieta arī mainās, jo sistēma ir dzīva vide. Tāpēc skaitļi vienmēr būs nedaudz citādāki.
