.class public abstract Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;
.super Lcom/pinguo/camera360/cloud/struct/RequestConsole;
.source "HttpsRequestConsole.java"
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/cloud/struct/RequestConsole;-><init>(ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected send()Z
.registers 12
const/4 v2, 0x0
const/4 v6, 0x0
const/4 v9, 0x0
iput v2, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nHttpStatusCode:I
iput v2, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nServiceStatusCode:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strServiceMessage:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strResponse:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
const/4 v8, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
array-length v10, v0
:goto_1a
if-lt v8, v10, :cond_7b
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_45
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
const-string/jumbo v0, "i"
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
array-length v0, v0
iput v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nSendSize:I
:try_start_45
:cond_45
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strAddress:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strPath:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const v1, 0x9c40
const v2, 0x9c40
iget-object v3, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/cloud/struct/NetConnection;->postForSSL(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strResponse:Ljava/lang/String;
:try_end_68
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_45 .. :try_end_68} :catch_bf
.catch Ljava/net/SocketTimeoutException; {:try_start_45 .. :try_end_68} :catch_c9
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_45 .. :try_end_68} :catch_d3
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_68} :catch_dd
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strResponse:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->getServiceStatus(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nServiceStatusCode:I
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nServiceStatusCode:I
sparse-switch v0, :sswitch_data_11c
new-instance v0, Lcom/pinguo/camera360/cloud/exception/UnknowException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/UnknowException;-><init>()V
throw v0
:cond_7b
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
aget-object v9, v0, v8
invoke-virtual {v9}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getType()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "null"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_bb
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v9}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getValue()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "&"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
:cond_bb
add-int/lit8 v8, v8, 0x1
goto/16 :goto_1a
:catch_bf
move-exception v7
invoke-virtual {v7}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V
new-instance v0, Lcom/pinguo/camera360/cloud/exception/TimeOutException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/TimeOutException;-><init>()V
throw v0
:catch_c9
move-exception v7
invoke-virtual {v7}, Ljava/net/SocketTimeoutException;->printStackTrace()V
new-instance v0, Lcom/pinguo/camera360/cloud/exception/TimeOutException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/TimeOutException;-><init>()V
throw v0
:catch_d3
move-exception v7
invoke-virtual {v7}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
new-instance v0, Lcom/pinguo/camera360/cloud/exception/RequestException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/RequestException;-><init>()V
throw v0
:catch_dd
move-exception v7
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->context:Landroid/content/Context;
if-eqz v0, :cond_f9
const-string/jumbo v0, "100"
invoke-static {v7}, Lorg/pinguo/cloudshare/support/ToolUtil;->getString(Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iget-object v4, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->context:Landroid/content/Context;
invoke-static {v4}, Lorg/pinguo/cloudshare/support/ToolUtil;->getParmater(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, ""
invoke-static/range {v0 .. v5}, Lorg/pinguo/cloudshare/support/FileSupport;->insertErrorLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
:cond_f9
invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
new-instance v0, Lcom/pinguo/camera360/cloud/exception/NetException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/NetException;-><init>()V
throw v0
:sswitch_102
const/4 v6, 0x1
return v6
:sswitch_104
new-instance v0, Lcom/pinguo/camera360/cloud/exception/UserAlreadyExistsException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/UserAlreadyExistsException;-><init>()V
throw v0
:sswitch_10a
new-instance v0, Lcom/pinguo/camera360/cloud/exception/UserInvalidException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/UserInvalidException;-><init>()V
throw v0
:sswitch_110
new-instance v0, Lcom/pinguo/camera360/cloud/exception/UserNameAndPassWordNotMatcherException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/UserNameAndPassWordNotMatcherException;-><init>()V
throw v0
:sswitch_116
new-instance v0, Lcom/pinguo/camera360/cloud/exception/GernelException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/GernelException;-><init>()V
throw v0
:sswitch_data_11c
.sparse-switch
0xc8 -> :sswitch_102
0x1a4 -> :sswitch_10a
0x1a5 -> :sswitch_104
0x1a6 -> :sswitch_10a
0x1a7 -> :sswitch_10a
0x1ae -> :sswitch_110
0x1b6 -> :sswitch_116
0x1f4 -> :sswitch_116
.end sparse-switch
.end method
.method protected declared-synchronized sendErrorFunction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.registers 10
monitor-enter p0
:try_start_1
const-string/jumbo v0, "Change Server"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Server : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lorg/pinguo/cloudshare/support/Config;->ACTIVE_SERVER_ADDRESS:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/cloud/controller/UploadHelperController;->getActiveServer()Z
:try_end_1c
.catchall {:try_start_1 .. :try_end_1c} :catchall_27
move-result v0
if-eqz v0, :cond_21
:goto_1f
monitor-exit p0
return-void
:cond_21
:try_start_21
const-string/jumbo v0, "https://cloudapi.camera360.com"
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strAddress:Ljava/lang/String;
:try_end_26
.catchall {:try_start_21 .. :try_end_26} :catchall_27
goto :goto_1f
:catchall_27
move-exception v0
monitor-exit p0
throw v0
.end method
.method public sendMethod()Z
.registers 13
const/4 v11, 0x3
const/4 v7, 0x0
const/4 v10, 0x0
const/4 v9, 0x0
:goto_4
:cond_4
if-lt v10, v11, :cond_7
:goto_6
:cond_6
return v7
:cond_7
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->bClose:Z
if-nez v0, :cond_6
const-string/jumbo v0, ""
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Send Count : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " TimeOut Count : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:try_start_2c
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->send()Z
:try_end_2f
.catch Lcom/pinguo/camera360/cloud/exception/GernelException; {:try_start_2c .. :try_end_2f} :catch_37
.catch Lcom/pinguo/camera360/cloud/exception/TimeOutException; {:try_start_2c .. :try_end_2f} :catch_70
.catch Lcom/pinguo/camera360/cloud/exception/UserInvalidException; {:try_start_2c .. :try_end_2f} :catch_79
.catch Lcom/pinguo/camera360/cloud/exception/RequestException; {:try_start_2c .. :try_end_2f} :catch_7b
.catch Lcom/pinguo/camera360/cloud/exception/UnknowException; {:try_start_2c .. :try_end_2f} :catch_af
.catch Lcom/pinguo/camera360/cloud/exception/UserAlreadyExistsException; {:try_start_2c .. :try_end_2f} :catch_bd
.catch Lcom/pinguo/camera360/cloud/exception/UserNameAndPassWordNotMatcherException; {:try_start_2c .. :try_end_2f} :catch_c7
.catch Lcom/pinguo/camera360/cloud/exception/NetException; {:try_start_2c .. :try_end_2f} :catch_d1
move-result v0
if-eqz v0, :cond_34
const/4 v7, 0x1
goto :goto_6
:cond_34
add-int/lit8 v10, v10, 0x1
goto :goto_4
:catch_37
move-exception v8
add-int/lit8 v10, v10, 0x1
if-lt v10, v11, :cond_42
new-instance v0, Lcom/pinguo/camera360/cloud/exception/DisableServerException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/DisableServerException;-><init>()V
throw v0
:cond_42
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nServiceStatusCode:I
sparse-switch v0, :sswitch_data_106
goto :goto_4
:sswitch_48
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nHttpStatusCode:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strResponse:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-object v5, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strAddress:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strPath:Ljava/lang/String;
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->sendErrorFunction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
goto :goto_4
:catch_70
move-exception v8
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/exception/TimeOutException;->printStackTrace()V
add-int/lit8 v9, v9, 0x1
if-lt v9, v11, :cond_4
throw v8
:catch_79
move-exception v8
throw v8
:catch_7b
move-exception v8
add-int/lit8 v10, v10, 0x1
if-lt v10, v11, :cond_86
new-instance v0, Lcom/pinguo/camera360/cloud/exception/DisableServerException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/DisableServerException;-><init>()V
throw v0
:cond_86
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nHttpStatusCode:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strResponse:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-object v5, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strAddress:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strPath:Ljava/lang/String;
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->sendErrorFunction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_4
:catch_af
move-exception v8
const-string/jumbo v0, "Unknow"
const-string/jumbo v1, "Unknow Exception"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v10, v10, 0x1
goto/16 :goto_4
:catch_bd
move-exception v8
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->context:Landroid/content/Context;
iget v1, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nServiceStatusCode:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/ResultSharedPreferences;->setREGISTER_ERROR_CODE(Landroid/content/Context;I)V
goto/16 :goto_6
:catch_c7
move-exception v8
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->context:Landroid/content/Context;
iget v1, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nServiceStatusCode:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/ResultSharedPreferences;->setLOGIN_ERROR_CODE(Landroid/content/Context;I)V
goto/16 :goto_6
:catch_d1
move-exception v8
add-int/lit8 v10, v10, 0x1
if-lt v10, v11, :cond_dc
new-instance v0, Lcom/pinguo/camera360/cloud/exception/DisableServerException;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/exception/DisableServerException;-><init>()V
throw v0
:cond_dc
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->nHttpStatusCode:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strResponse:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-object v5, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strSendData:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strAddress:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->strPath:Ljava/lang/String;
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/cloud/struct/HttpsRequestConsole;->sendErrorFunction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_4
nop
:sswitch_data_106
.sparse-switch
0x1b6 -> :sswitch_48
0x1f4 -> :sswitch_48
.end sparse-switch
.end method