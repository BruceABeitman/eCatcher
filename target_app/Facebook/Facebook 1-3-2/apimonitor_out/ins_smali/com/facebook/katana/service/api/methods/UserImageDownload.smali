.class public Lcom/facebook/katana/service/api/methods/UserImageDownload;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "UserImageDownload.java"
.implements Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
.field private final mContext:Landroid/content/Context;
.field private final mFilename:Ljava/lang/String;
.field private final mUserId:J
.field private mUserImage:Lcom/facebook/katana/binding/UserImage;
.field private final mUsername:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 15
const-string v2, "GET"
const/4 v3, 0x0
move-object v0, p0
move-object v1, p2
move-object v4, p6
move-object v5, p8
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mContext:Landroid/content/Context;
iput-wide p3, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mUserId:J
iput-object p5, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mUsername:Ljava/lang/String;
iput-object p7, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mFilename:Ljava/lang/String;
return-void
.end method
.method public getUserImage()Lcom/facebook/katana/binding/UserImage;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mUserImage:Lcom/facebook/katana/binding/UserImage;
return-object v0
.end method
.method public onHttpOperationComplete(Lcom/facebook/katana/service/api/methods/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
.registers 16
const/16 v0, 0xc8
if-ne p2, v0, :cond_14
:try_start_4
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mUsername:Ljava/lang/String;
iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mUserId:J
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mBaseUrl:Ljava/lang/String;
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mFilename:Ljava/lang/String;
invoke-static/range {v0 .. v5}, Lcom/facebook/katana/provider/FriendsProvider;->updateImage(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/UserImage;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mUserImage:Lcom/facebook/katana/binding/UserImage;
:cond_14
:goto_14
:try_end_14
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_47
new-instance v8, Ljava/io/File;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mFilename:Ljava/lang/String;
invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/io/File;->length()J
move-result-wide v3
invoke-virtual {v8}, Ljava/io/File;->delete()Z
move-object v7, p5
move v5, p2
move-object v6, p3
invoke-static {p2}, Lcom/facebook/katana/service/api/methods/ApiLogging;->reportAndCheckTrx(I)Z
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p1, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;
invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/HttpOperation;->calculateTimeElapsed()J
move-result-wide v1
invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiLogging;->logTransferResponse(Ljava/lang/String;JJI)V
:cond_3c
sget-object v0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;
invoke-direct {v1, p0, v5, v6, v7}, Lcom/facebook/katana/service/api/methods/UserImageDownload$1;-><init>(Lcom/facebook/katana/service/api/methods/UserImageDownload;ILjava/lang/String;Ljava/lang/Exception;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:catch_47
move-exception v0
move-object v9, v0
move-object p5, v9
const/4 p2, 0x0
const/4 p3, 0x0
goto :goto_14
.end method
.method public onHttpOperationProgress(Lcom/facebook/katana/service/api/methods/HttpOperation;JJ)V
.registers 6
return-void
.end method
.method public start()V
.registers 7
:try_start_0
new-instance v1, Lcom/facebook/katana/service/api/methods/HttpOperation;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mHttpMethod:Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mBaseUrl:Ljava/lang/String;
new-instance v4, Ljava/io/FileOutputStream;
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mFilename:Ljava/lang/String;
invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v2, v3, v4, p0}, Lcom/facebook/katana/service/api/methods/HttpOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;)V
iput-object v1, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/HttpOperation;->start()V
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v1
move-object v0, v1
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/UserImageDownload;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-interface {v1, p0, v2, v3, v0}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_17
.end method