.class public Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;
.super Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;
.source "UploadErrorLogRequestConsole.java"
.field private static final APP_KEY_NAME:Ljava/lang/String; = "app_key"
.field private static final ERRORS_NAME:Ljava/lang/String; = "errors"
.field private mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.field private mErrors:Lcom/pinguo/camera360/cloud/struct/PostStruct;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const/4 v1, 0x0
const/4 v0, 0x2
invoke-direct {p0, v0, p1, p2}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;-><init>(ILjava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mErrors:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v0, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v1, "text"
const-string/jumbo v2, "app_key"
const-string/jumbo v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
new-instance v0, Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v1, "text"
const-string/jumbo v2, "errors"
const-string/jumbo v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mErrors:Lcom/pinguo/camera360/cloud/struct/PostStruct;
iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v2, v0, v1
iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
const/4 v1, 0x1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mErrors:Lcom/pinguo/camera360/cloud/struct/PostStruct;
aput-object v2, v0, v1
iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v1, "5dab06e7a53740ea9b78"
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mAppKey:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mErrors:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v0, p3}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->setValue(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->mErrors:Lcom/pinguo/camera360/cloud/struct/PostStruct;
invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->createData()Z
return-void
.end method
.method public sendMethod()Z
.registers 9
const/4 v7, 0x3
const/4 v0, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
:goto_4
:cond_4
if-lt v3, v7, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-boolean v4, p0, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->bClose:Z
if-nez v4, :cond_6
const-string/jumbo v4, ""
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Send Count : "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " TimeOut Count : "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:try_start_2c
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/request/UploadErrorLogRequestConsole;->send()Z
:try_end_2f
.catch Lcom/pinguo/camera360/cloud/exception/GernelException; {:try_start_2c .. :try_end_2f} :catch_37
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_2c .. :try_end_2f} :catch_42
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_2c .. :try_end_2f} :catch_4b
.catch Lcom/pinguo/camera360/cloud/exception/RequestException; {:try_start_2c .. :try_end_2f} :catch_4d
.catch Lcom/pinguo/camera360/cloud/exception/UnknowException; {:try_start_2c .. :try_end_2f} :catch_58
.catch Lcom/pinguo/camera360/cloud/exception/UserAlreadyExistsException; {:try_start_2c .. :try_end_2f} :catch_70
.catch Lcom/pinguo/camera360/cloud/exception/UserNameAndPassWordNotMatcherException; {:try_start_2c .. :try_end_2f} :catch_65
.catch Lcom/pinguo/camera360/cloud/exception/NetException; {:try_start_2c .. :try_end_2f} :catch_69
move-result v4
if-eqz v4, :cond_34
const/4 v0, 0x1
goto :goto_6
:cond_34
add-int/lit8 v3, v3, 0x1
goto :goto_4
:catch_37
move-exception v1
add-int/lit8 v3, v3, 0x1
if-lt v3, v7, :cond_4
new-instance v4, Lcom/pinguo/camera360/cloud/exception/DisableServerException;
invoke-direct {v4}, Lcom/pinguo/camera360/cloud/exception/DisableServerException;-><init>()V
throw v4
:catch_42
move-exception v1
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/exception/TimeOutException;->printStackTrace()V
add-int/lit8 v2, v2, 0x1
if-le v2, v7, :cond_4
throw v1
:catch_4b
move-exception v1
throw v1
:catch_4d
move-exception v1
add-int/lit8 v3, v3, 0x1
if-lt v3, v7, :cond_4
new-instance v4, Lcom/pinguo/camera360/cloud/exception/DisableServerException;
invoke-direct {v4}, Lcom/pinguo/camera360/cloud/exception/DisableServerException;-><init>()V
throw v4
:catch_58
move-exception v1
const-string/jumbo v4, "Unknow"
const-string/jumbo v5, "Unknow Exception"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v3, v3, 0x1
goto :goto_4
:catch_65
move-exception v1
add-int/lit8 v3, v3, 0x1
goto :goto_4
:catch_69
move-exception v1
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/exception/NetException;->printStackTrace()V
add-int/lit8 v3, v3, 0x1
goto :goto_4
:catch_70
move-exception v4
goto :goto_4
.end method