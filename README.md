使用本一鍵激活Windows（懶人包）的好處：

不用擔心網路一堆來路不明的破解機含有病毒，本一鍵激活Windows（懶人包）安裝腳本不含任何病毒，不用擔心被落毒或勒索病毒

KMS server 只能對 VL 版本 (Volume License) 的 Windows 系統和 Office 有用，其他的版本是不行的。

--------------------------------------------------------------------------------------------------------------------------
本一鍵激活Windows（懶人包）適用以下作業系統：
* Windows 10 專業版
* Windows 10 工作站專業版 
* Windows 10 教育版 ，
* Windows 10 企業版 ，
* Windows 10 企業版LTSC（長期服務通道）
* Windows 8.1專業版 
* Windows 8 專業版 ，
* Windows 8.1 企業版，
* Windows 8 企業版，
* Windows 7 專業版 ， 
* Windows 7 企業版，
* Windows Server 系列作業系統
* Micrsoft Office Professional
----------------------------------------------------------------------------------------------------------------------------
操作步驟如下：

第一次使用時請根據您的 Microsoft Windows 版本選擇client keys 

請參考" https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys " 網頁內指示

請把所有Micrsoft Windows.bat內容復制到記事本

再修改一下其中內容(建議用記事本內取代功能)



1. 把執行腳本檔案中的一行 cscript "%SystemRoot%\system32\slmgr.vbs" /ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
 
                                                     改為
                                        
                          cscript "%SystemRoot%\system32\slmgr.vbs" /ipk ABCDE-BADCE-EABDC-CADBE-CADBE
                                         

2. 把執行腳本檔案中的"slmgr.vbs" /skms 192.168.1.1:1688"改為有效的"KMS伺服器IP:1688"


3. 執行腳檔案另存新檔" KMS_Windows.bat "  
 
   請以滑鼠雙擊" KMS_Windows.bat "執行批次檔進行激活。
   
------------------------------------------------------------------------------------------------------------------------
MicrosoftR Office 使用方式

1. 請根據電腦已安裝的Micrsoft Office 版本 選擇相關的" Office 20xx.bat " 檔案

2. 請把所有Office 20xx.bat內容復制到記事本

3. 再修改一下其中內容(建議用記事本內取代功能)

   把執行腳本檔案中的一行“192.168.1.1” 的KMS認證伺服器部份改為有效的KMS伺服器ip 
   
4. 執行腳本另存新檔" KMS_office.bat " 

5. 請以滑鼠雙擊“ KMS_office.bat " 檔案執行批次檔進行激活。


-------------------------------------------------------------------------------------------------------------------------


