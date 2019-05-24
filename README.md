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

   把執行腳本檔案中的一行“192.168.1.1”改為有效的“KMS伺服器IP”
   
4. 執行腳本另存新檔" KMS_office.bat " 

5. 請以滑鼠雙擊“ KMS_office.bat " 檔案執行批次檔進行激活。


-------------------------------------------------------------------------------------------------------------------------

備註說明：
1. 檢查Windows是否啟動成功

接下步驟就是要檢查電腦內的Windows到底有沒有成功啟動成功呢？

請使用右鍵點擊「電腦」選擇【內容】，進入後就會進到下方的作業系統授權資訊，若是出現「已啟動」表示剛剛做的KMS有正確啟動成功


2. 檢查office2016/19 是否啟動成功

接下來就是要檢查電腦內的Office2019 到底有沒有成功啟動成功呢？

請開啟一個Office程式並點擊【檔案】，進入後請點擊左方的【帳戶】，會在畫面右手邊的版權部分看見「產品已啟動」，這就表示先前的KMS驗證動作都成功囉！


-------------------------------------------------------------------------------------------------------------------------
Microsoft Windows   光碟映像 (ISO 檔案)下載
ps.請確認已準備好：您的 Windows 產品金鑰才能下載。
https://www.microsoft.com/zh-hk/software-download/
