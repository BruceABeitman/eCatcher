.class public abstract Lcom/pinguo/camera360/cloud/struct/RequestConsole;
.super Ljava/lang/Object;
.source "RequestConsole.java"
.field protected static final BUFFER_SIZE:I = 0x1000
.field protected static final CONSOLE_TIME_OUT:I = 0x7530
.field public static final FORM_DATA:Ljava/lang/String; = "multipart/form-data"
.field public static final GERENAL:Ljava/lang/String; = "application/x-www-form-urlencoded"
.field protected static final boundary:Ljava/lang/String; = "----PinguoCloudShareUploadStructData"
.field protected static final flag:Ljava/lang/String; = "\r\n"
.field protected static final lastboundary:Ljava/lang/String; = "\r\n------PinguoCloudShareUploadStructData--\r\n"
.field protected static final lastboundary_len:I = 0x0
.field protected static final nextboundary:Ljava/lang/String; = "------PinguoCloudShareUploadStructData\r\n"
.field protected static final nextboundary_len:I = 0x0
.field protected static final twoHyphens:Ljava/lang/String; = "--"
.field protected bClose:Z
.field protected bEnable:Z
.field protected conn:Ljava/net/HttpURLConnection;
.field protected context:Landroid/content/Context;
.field protected mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
.field protected nHttpStatusCode:I
.field protected nPackageType:I
.field protected nSendSize:I
.field protected nServiceStatusCode:I
.field protected strAddress:Ljava/lang/String;
.field protected strDstName:Ljava/lang/String;
.field protected strPath:Ljava/lang/String;
.field protected strResponse:Ljava/lang/String;
.field protected strSendData:Ljava/lang/String;
.field protected strServiceMessage:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "------PinguoCloudShareUploadStructData\r\n"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
sput v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nextboundary_len:I
const-string/jumbo v0, "\r\n------PinguoCloudShareUploadStructData--\r\n"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
sput v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->lastboundary_len:I
return-void
.end method
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strAddress:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strPath:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
iput v1, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nPackageType:I
iput-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
iput v1, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
iput-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strDstName:Ljava/lang/String;
iput v1, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nServiceStatusCode:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strServiceMessage:Ljava/lang/String;
iput v1, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nHttpStatusCode:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->bEnable:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->bClose:Z
new-array v0, p1, [Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
iput-object p2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strAddress:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strPath:Ljava/lang/String;
return-void
.end method
.method private initConnection()V
.registers 8
const/4 v6, 0x0
const/4 v5, 0x1
:try_start_2
new-instance v1, Ljava/net/URL;
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strAddress:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strPath:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v2
check-cast v2, Ljava/net/HttpURLConnection;
iput-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v3, "POST"
invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v3, "Accept"
const-string/jumbo v4, "*/*"
invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v3, "Connection"
const-string/jumbo v4, "keep-alive"
invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nPackageType:I
if-nez v2, :cond_7d
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v3, "Content-Type"
const-string/jumbo v4, "application/x-www-form-urlencoded"
invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:cond_63
:goto_63
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v3, "User-Agent"
const-string/jumbo v4, "Mozilla/5.0 (Android ; Linux) AppleWebKit/535.2 (KHTML, like Gecko) Chrome/15.0.874.120 Safari/535.2"
invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const/16 v3, 0x7530
invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const/16 v3, 0x7530
invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
:goto_7c
return-void
:cond_7d
iget v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nPackageType:I
if-ne v2, v5, :cond_63
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v3, "Content-Type"
const-string/jumbo v4, "multipart/form-data; boundary=----PinguoCloudShareUploadStructData"
invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:try_end_8c
.catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_8c} :catch_8d
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_8c} :catch_94
goto :goto_63
:catch_8d
move-exception v0
invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
iput-object v6, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
goto :goto_7c
:catch_94
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
iput-object v6, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
goto :goto_7c
.end method
.method public getDstName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strDstName:Ljava/lang/String;
return-object v0
.end method
.method public getEnable()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->bEnable:Z
return v0
.end method
.method public getHttpStatusCode()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nHttpStatusCode:I
return v0
.end method
.method public getResponse()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
return-object v0
.end method
.method public getServiceStatus(Ljava/lang/String;)I
.registers 8
const/4 v1, -0x1
:try_start_1
new-instance v2, Lcom/google/gson/stream/JsonReader;
new-instance v4, Ljava/io/StringReader;
invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-direct {v2, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->beginObject()V
const/4 v3, 0x0
:goto_f
invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z
move-result v4
if-nez v4, :cond_1c
invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->endObject()V
invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
:goto_1b
return v1
:cond_1c
invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;
move-result-object v3
sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "status"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_38
invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->nextInt()I
move-result v1
goto :goto_f
:cond_38
invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->skipValue()V
:try_end_3b
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_3b} :catch_3c
.catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_3b} :catch_41
.catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_3b} :catch_46
goto :goto_f
:catch_3c
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_1b
:catch_41
move-exception v0
invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
goto :goto_1b
:catch_46
move-exception v0
invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
goto :goto_1b
.end method
.method public getServiceStatusCode()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nServiceStatusCode:I
return v0
.end method
.method protected send()Z
.registers 22
move-object/from16 v0, p0
iget-boolean v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->bEnable:Z
if-nez v15, :cond_8
const/4 v2, 0x0
:goto_7
return v2
:cond_8
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->initConnection()V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
if-nez v15, :cond_13
const/4 v2, 0x0
goto :goto_7
:cond_13
const/4 v15, 0x0
move-object/from16 v0, p0
iput v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nHttpStatusCode:I
const/4 v15, 0x0
move-object/from16 v0, p0
iput v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nServiceStatusCode:I
const-string/jumbo v15, ""
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strServiceMessage:Ljava/lang/String;
const-string/jumbo v15, ""
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
const-string/jumbo v15, ""
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
const/4 v2, 0x0
const/4 v13, 0x0
:try_start_34
move-object/from16 v0, p0
iget v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nPackageType:I
if-nez v15, :cond_1bc
const/4 v15, 0x0
move-object/from16 v0, p0
iput v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
const/4 v8, 0x0
const/4 v6, 0x0
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
array-length v12, v15
:goto_46
if-lt v6, v12, :cond_138
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z
move-result v15
if-nez v15, :cond_186
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
const/16 v16, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
move-result v17
add-int/lit8 v17, v17, -0x1
invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v15
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
const-string/jumbo v15, "i"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
move-object/from16 v16, v0
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B
move-result-object v15
array-length v15, v15
move-object/from16 v0, p0
iput v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v16, "Content-Length"
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
move/from16 v17, v0
invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:goto_99
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
move/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
invoke-static {v15}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
new-instance v14, Ljava/io/DataOutputStream;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_ba
.catchall {:try_start_34 .. :try_end_ba} :catchall_19c
.catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_ba} :catch_195
.catch Ljava/net/SocketTimeoutException; {:try_start_34 .. :try_end_ba} :catch_27a
.catch Ljava/io/IOException; {:try_start_34 .. :try_end_ba} :catch_2fb
:try_start_ba
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V
:try_end_c4
.catchall {:try_start_ba .. :try_end_c4} :catchall_367
.catch Ljava/lang/NullPointerException; {:try_start_ba .. :try_end_c4} :catch_2d7
.catch Ljava/net/SocketTimeoutException; {:try_start_ba .. :try_end_c4} :catch_2e3
.catch Ljava/io/IOException; {:try_start_ba .. :try_end_c4} :catch_36b
move-object v13, v14
:cond_c5
:goto_c5
:try_start_c5
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v15
move-object/from16 v0, p0
iput v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nHttpStatusCode:I
:try_start_d1
:try_end_d1
.catchall {:try_start_c5 .. :try_end_d1} :catchall_19c
.catch Ljava/lang/NumberFormatException; {:try_start_c5 .. :try_end_d1} :catch_2e6
.catch Ljava/lang/NullPointerException; {:try_start_c5 .. :try_end_d1} :catch_195
.catch Ljava/net/SocketTimeoutException; {:try_start_c5 .. :try_end_d1} :catch_27a
.catch Ljava/io/IOException; {:try_start_c5 .. :try_end_d1} :catch_2fb
move-object/from16 v0, p0
iget v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nHttpStatusCode:I
const/16 v16, 0xc8
move/from16 v0, v16
if-ne v15, v0, :cond_33a
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v7
const/4 v11, 0x0
const/16 v15, 0x1000
new-array v3, v15, [B
:goto_e8
invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I
move-result v11
const/4 v15, -0x1
if-ne v11, v15, :cond_305
const-string/jumbo v15, "I"
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
move-object/from16 v16, v0
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/InputStream;->close()V
const/4 v6, 0x0
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
array-length v12, v15
:goto_104
if-lt v6, v12, :cond_32d
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->getServiceStatus(Ljava/lang/String;)I
move-result v15
move-object/from16 v0, p0
iput v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nServiceStatusCode:I
:try_end_114
.catchall {:try_start_d1 .. :try_end_114} :catchall_19c
.catch Ljava/lang/NullPointerException; {:try_start_d1 .. :try_end_114} :catch_195
.catch Ljava/net/SocketTimeoutException; {:try_start_d1 .. :try_end_114} :catch_27a
.catch Ljava/io/IOException; {:try_start_d1 .. :try_end_114} :catch_2fb
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
if-eqz v15, :cond_126
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
invoke-static {v15}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
const/4 v15, 0x0
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
:cond_126
if-eqz v13, :cond_12b
:try_start_128
invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
:try_end_12b
.catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_346
:cond_12b
:goto_12b
move-object/from16 v0, p0
iget v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nServiceStatusCode:I
sparse-switch v15, :sswitch_data_36e
new-instance v15, Lcom/pinguo/camera360/cloud/exception/UnknowException;
invoke-direct {v15}, Lcom/pinguo/camera360/cloud/exception/UnknowException;-><init>()V
throw v15
:cond_138
:try_start_138
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
aget-object v8, v15, v6
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getType()Ljava/lang/String;
move-result-object v15
const-string/jumbo v16, "null"
invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v15
if-nez v15, :cond_182
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
new-instance v16, Ljava/lang/StringBuilder;
invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
move-object/from16 v0, v16
invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getName()Ljava/lang/String;
move-result-object v15
move-object/from16 v0, v16
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string/jumbo v16, "="
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getValue()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
const-string/jumbo v16, "&"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
:cond_182
add-int/lit8 v6, v6, 0x1
goto/16 :goto_46
:cond_186
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v16, "Content-Length"
const-string/jumbo v17, "0"
invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:try_end_193
.catchall {:try_start_138 .. :try_end_193} :catchall_19c
.catch Ljava/lang/NullPointerException; {:try_start_138 .. :try_end_193} :catch_195
.catch Ljava/net/SocketTimeoutException; {:try_start_138 .. :try_end_193} :catch_27a
.catch Ljava/io/IOException; {:try_start_138 .. :try_end_193} :catch_2fb
goto/16 :goto_99
:catch_195
move-exception v4
:try_start_196
:goto_196
new-instance v15, Lcom/pinguo/camera360/cloud/exception/GernelException;
invoke-direct {v15}, Lcom/pinguo/camera360/cloud/exception/GernelException;-><init>()V
throw v15
:catchall_19c
:try_end_19c
.catchall {:try_start_196 .. :try_end_19c} :catchall_19c
move-exception v15
:goto_19d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
move-object/from16 v16, v0
if-eqz v16, :cond_1b6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
move-object/from16 v16, v0
invoke-static/range {v16 .. v16}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
const/16 v16, 0x0
move-object/from16 v0, v16
move-object/from16 v1, p0
iput-object v0, v1, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
:cond_1b6
if-eqz v13, :cond_1bb
:try_start_1b8
invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
:try_end_1bb
.catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_340
:goto_1bb
:cond_1bb
throw v15
:try_start_1bc
:cond_1bc
move-object/from16 v0, p0
iget v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nPackageType:I
const/16 v16, 0x1
move/from16 v0, v16
if-ne v15, v0, :cond_c5
const/4 v15, 0x0
move-object/from16 v0, p0
iput v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
const/4 v8, 0x0
const/4 v6, 0x0
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
array-length v12, v15
:goto_1d2
if-lt v6, v12, :cond_23c
move-object/from16 v0, p0
iget v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
if-eqz v15, :cond_26c
move-object/from16 v0, p0
iget v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
sget v16, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->lastboundary_len:I
add-int v15, v15, v16
move-object/from16 v0, p0
iput v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v16, "Content-Length"
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
move/from16 v17, v0
invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:goto_1fa
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
move/from16 v16, v0
invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
invoke-static {v15}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
new-instance v14, Ljava/io/DataOutputStream;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_21b
.catchall {:try_start_1bc .. :try_end_21b} :catchall_19c
.catch Ljava/lang/NullPointerException; {:try_start_1bc .. :try_end_21b} :catch_195
.catch Ljava/net/SocketTimeoutException; {:try_start_1bc .. :try_end_21b} :catch_27a
.catch Ljava/io/IOException; {:try_start_1bc .. :try_end_21b} :catch_2fb
const/4 v6, 0x0
:try_start_21c
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
array-length v12, v15
:goto_221
if-lt v6, v12, :cond_284
move-object/from16 v0, p0
iget v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
if-eqz v15, :cond_233
const-string/jumbo v15, "\r\n------PinguoCloudShareUploadStructData--\r\n"
invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/DataOutputStream;->write([B)V
:cond_233
invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V
invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V
:try_end_239
.catchall {:try_start_21c .. :try_end_239} :catchall_367
.catch Ljava/lang/NullPointerException; {:try_start_21c .. :try_end_239} :catch_2d7
.catch Ljava/net/SocketTimeoutException; {:try_start_21c .. :try_end_239} :catch_2e3
.catch Ljava/io/IOException; {:try_start_21c .. :try_end_239} :catch_36b
move-object v13, v14
goto/16 :goto_c5
:cond_23c
:try_start_23c
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
aget-object v8, v15, v6
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getType()Ljava/lang/String;
move-result-object v15
const-string/jumbo v16, "null"
invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v15
if-nez v15, :cond_268
move-object/from16 v0, p0
iget v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
int-to-long v15, v15
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getSendSize()J
move-result-wide v17
sget v19, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nextboundary_len:I
move/from16 v0, v19
int-to-long v0, v0
move-wide/from16 v19, v0
add-long v17, v17, v19
add-long v15, v15, v17
long-to-int v15, v15
move-object/from16 v0, p0
iput v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nSendSize:I
:cond_268
add-int/lit8 v6, v6, 0x1
goto/16 :goto_1d2
:cond_26c
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
const-string/jumbo v16, "Content-Length"
const-string/jumbo v17, "0"
invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:try_end_279
.catchall {:try_start_23c .. :try_end_279} :catchall_19c
.catch Ljava/lang/NullPointerException; {:try_start_23c .. :try_end_279} :catch_195
.catch Ljava/net/SocketTimeoutException; {:try_start_23c .. :try_end_279} :catch_27a
.catch Ljava/io/IOException; {:try_start_23c .. :try_end_279} :catch_2fb
goto :goto_1fa
:catch_27a
move-exception v4
:try_start_27b
:goto_27b
invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->printStackTrace()V
new-instance v15, Lcom/pinguo/camera360/cloud/exception/TimeOutException;
invoke-direct {v15}, Lcom/pinguo/camera360/cloud/exception/TimeOutException;-><init>()V
throw v15
:cond_284
:try_start_284
:try_end_284
.catchall {:try_start_27b .. :try_end_284} :catchall_19c
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
aget-object v8, v15, v6
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getType()Ljava/lang/String;
move-result-object v15
const-string/jumbo v16, "null"
invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v15
if-nez v15, :cond_2ce
const-string/jumbo v15, "------PinguoCloudShareUploadStructData\r\n"
invoke-virtual {v14, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getType()Ljava/lang/String;
move-result-object v15
const-string/jumbo v16, "binary"
invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v15
if-eqz v15, :cond_2db
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getBody()[B
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/DataOutputStream;->write([B)V
const/16 v15, 0x1000
new-array v9, v15, [B
const/4 v10, 0x0
new-instance v5, Ljava/io/File;
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getValue()Ljava/lang/String;
move-result-object v15
invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v7, Ljava/io/FileInputStream;
invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:goto_2c4
invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I
move-result v10
const/4 v15, -0x1
if-ne v10, v15, :cond_2d2
invoke-virtual {v7}, Ljava/io/InputStream;->close()V
:cond_2ce
:goto_2ce
add-int/lit8 v6, v6, 0x1
goto/16 :goto_221
:cond_2d2
const/4 v15, 0x0
invoke-virtual {v14, v9, v15, v10}, Ljava/io/DataOutputStream;->write([BII)V
goto :goto_2c4
:catch_2d7
move-exception v4
move-object v13, v14
goto/16 :goto_196
:cond_2db
invoke-virtual {v8}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->getBody()[B
move-result-object v15
invoke-virtual {v14, v15}, Ljava/io/DataOutputStream;->write([B)V
:try_end_2e2
.catchall {:try_start_284 .. :try_end_2e2} :catchall_367
.catch Ljava/lang/NullPointerException; {:try_start_284 .. :try_end_2e2} :catch_2d7
.catch Ljava/net/SocketTimeoutException; {:try_start_284 .. :try_end_2e2} :catch_2e3
.catch Ljava/io/IOException; {:try_start_284 .. :try_end_2e2} :catch_36b
goto :goto_2ce
:catch_2e3
move-exception v4
move-object v13, v14
goto :goto_27b
:catch_2e6
move-exception v4
:try_start_2e7
new-instance v15, Ljava/lang/NullPointerException;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v15
:try_end_2fb
.catchall {:try_start_2e7 .. :try_end_2fb} :catchall_19c
.catch Ljava/lang/NullPointerException; {:try_start_2e7 .. :try_end_2fb} :catch_195
.catch Ljava/net/SocketTimeoutException; {:try_start_2e7 .. :try_end_2fb} :catch_27a
.catch Ljava/io/IOException; {:try_start_2e7 .. :try_end_2fb} :catch_2fb
:catch_2fb
move-exception v4
:try_start_2fc
:goto_2fc
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
new-instance v15, Lcom/pinguo/camera360/cloud/exception/NetException;
invoke-direct {v15}, Lcom/pinguo/camera360/cloud/exception/NetException;-><init>()V
throw v15
:try_start_305
:try_end_305
.catchall {:try_start_2fc .. :try_end_305} :catchall_19c
:cond_305
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
new-instance v16, Ljava/lang/StringBuilder;
invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
move-object/from16 v0, v16
invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v15, Ljava/lang/String;
const/16 v17, 0x0
move/from16 v0, v17
invoke-direct {v15, v3, v0, v11}, Ljava/lang/String;-><init>([BII)V
move-object/from16 v0, v16
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
goto/16 :goto_e8
:cond_32d
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->mData:[Lcom/pinguo/camera360/cloud/struct/PostStruct;
aget-object v15, v15, v6
invoke-virtual {v15}, Lcom/pinguo/camera360/cloud/struct/PostStruct;->release()V
add-int/lit8 v6, v6, 0x1
goto/16 :goto_104
:cond_33a
new-instance v15, Lcom/pinguo/camera360/cloud/exception/RequestException;
invoke-direct {v15}, Lcom/pinguo/camera360/cloud/exception/RequestException;-><init>()V
throw v15
:catch_340
:try_end_340
.catchall {:try_start_305 .. :try_end_340} :catchall_19c
.catch Ljava/lang/NullPointerException; {:try_start_305 .. :try_end_340} :catch_195
.catch Ljava/net/SocketTimeoutException; {:try_start_305 .. :try_end_340} :catch_27a
.catch Ljava/io/IOException; {:try_start_305 .. :try_end_340} :catch_2fb
move-exception v4
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_1bb
:catch_346
move-exception v4
invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_12b
:sswitch_34c
const/4 v2, 0x1
goto/16 :goto_7
:sswitch_34f
new-instance v15, Lcom/pinguo/camera360/cloud/exception/UserAlreadyExistsException;
invoke-direct {v15}, Lcom/pinguo/camera360/cloud/exception/UserAlreadyExistsException;-><init>()V
throw v15
:sswitch_355
new-instance v15, Lcom/pinguo/camera360/cloud/exception/UserInvalidException;
invoke-direct {v15}, Lcom/pinguo/camera360/cloud/exception/UserInvalidException;-><init>()V
throw v15
:sswitch_35b
new-instance v15, Lcom/pinguo/camera360/cloud/exception/UserNameAndPassWordNotMatcherException;
invoke-direct {v15}, Lcom/pinguo/camera360/cloud/exception/UserNameAndPassWordNotMatcherException;-><init>()V
throw v15
:sswitch_361
new-instance v15, Lcom/pinguo/camera360/cloud/exception/GernelException;
invoke-direct {v15}, Lcom/pinguo/camera360/cloud/exception/GernelException;-><init>()V
throw v15
:catchall_367
move-exception v15
move-object v13, v14
goto/16 :goto_19d
:catch_36b
move-exception v4
move-object v13, v14
goto :goto_2fc
:sswitch_data_36e
.sparse-switch
0xc8 -> :sswitch_34c
0x1a4 -> :sswitch_355
0x1a5 -> :sswitch_34f
0x1a6 -> :sswitch_355
0x1a7 -> :sswitch_355
0x1ae -> :sswitch_35b
0x1b6 -> :sswitch_361
0x1f4 -> :sswitch_361
.end sparse-switch
.end method
.method protected abstract sendErrorFunction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
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
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->bClose:Z
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
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->send()Z
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
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nServiceStatusCode:I
sparse-switch v0, :sswitch_data_106
goto :goto_4
:sswitch_48
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nHttpStatusCode:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-object v5, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strAddress:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strPath:Ljava/lang/String;
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->sendErrorFunction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
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
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nHttpStatusCode:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-object v5, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strAddress:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strPath:Ljava/lang/String;
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->sendErrorFunction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
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
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->context:Landroid/content/Context;
iget v1, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nServiceStatusCode:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/cloud/service/ResultSharedPreferences;->setREGISTER_ERROR_CODE(Landroid/content/Context;I)V
goto/16 :goto_6
:catch_c7
move-exception v8
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->context:Landroid/content/Context;
iget v1, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nServiceStatusCode:I
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
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->nHttpStatusCode:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strResponse:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-object v5, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strSendData:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strAddress:Ljava/lang/String;
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strPath:Ljava/lang/String;
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->sendErrorFunction(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_4
nop
:sswitch_data_106
.sparse-switch
0x1b6 -> :sswitch_48
0x1f4 -> :sswitch_48
.end sparse-switch
.end method
.method public setContext(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->context:Landroid/content/Context;
return-void
.end method
.method public setDstName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->strDstName:Ljava/lang/String;
return-void
.end method
.method public stop()V
.registers 3
const-string/jumbo v0, ""
const-string/jumbo v1, "Socket Close"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->conn:Ljava/net/HttpURLConnection;
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_12
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/RequestConsole;->bClose:Z
return-void
.end method