.class  Lcom/facebook/katana/service/api/methods/ApiMethod$1;
.super Ljava/lang/Object;
.source "ApiMethod.java"
.implements Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
.field final synthetic this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
.method constructor <init>(Lcom/facebook/katana/service/api/methods/ApiMethod;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$1;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onHttpOperationComplete(Lcom/facebook/katana/service/api/methods/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
.registers 12
const/4 v2, 0x0
const/16 v3, 0xc8
if-ne p2, v3, :cond_1f
if-nez p5, :cond_1f
move-object v0, p4
check-cast v0, Ljava/io/ByteArrayOutputStream;
move-object v3, v0
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v2
:try_start_f
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$1;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
new-instance v4, Ljava/lang/String;
check-cast p4, Ljava/io/ByteArrayOutputStream;
invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
invoke-virtual {v3, v4}, Lcom/facebook/katana/service/api/methods/ApiMethod;->parseResponse(Ljava/lang/String;)V
:goto_1f
:try_end_1f
.catch Lcom/facebook/katana/service/api/FacebookApiException; {:try_start_f .. :try_end_1f} :catch_38
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_64
:cond_1f
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$1;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
invoke-virtual {v3, p2, p3, p5}, Lcom/facebook/katana/service/api/methods/ApiMethod;->onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V
invoke-static {p5}, Lcom/facebook/katana/service/api/methods/ApiLogging;->reportAndCheckApi(Ljava/lang/Exception;)Z
move-result v3
if-eqz v3, :cond_37
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/ApiMethod$1;->this$0:Lcom/facebook/katana/service/api/methods/ApiMethod;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/methods/ApiMethod;->generateLogParams()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/HttpOperation;->calculateTimeElapsed()J
move-result-wide v4
invoke-static {v3, v4, v5, v2, p5}, Lcom/facebook/katana/service/api/methods/ApiLogging;->logApiResponse(Ljava/lang/String;JILjava/lang/Exception;)V
:cond_37
return-void
:catch_38
move-exception v3
move-object v1, v3
const-string v3, "ApiMethod.onHttpOperationComplete"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "FacebookApiException: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorMsg()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 p2, 0x0
const/4 p3, 0x0
move-object p5, v1
goto :goto_1f
:catch_64
move-exception v3
move-object v1, v3
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
const/4 p2, 0x0
const/4 p3, 0x0
move-object p5, v1
goto :goto_1f
.end method
.method public onHttpOperationProgress(Lcom/facebook/katana/service/api/methods/HttpOperation;JJ)V
.registers 6
return-void
.end method