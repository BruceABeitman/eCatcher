.class public Lcom/facebook/katana/service/LoggingService;
.super Landroid/app/IntentService;
.source "LoggingService.java"
.implements Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
.field public static final DATA_PARAM:Ljava/lang/String; = "com.facebook.katana.service.LoggingService.data"
.field private static final TAG:Ljava/lang/String; = "LoggingService"
.field public static final URI_PARAM:Ljava/lang/String; = "com.facebook.katana.service.LoggingService.uri"
.method public constructor <init>()V
.registers 2
const-string v0, "LoggingService"
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 10
const-string v3, "com.facebook.katana.service.LoggingService.data"
invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v3, "com.facebook.katana.service.LoggingService.uri"
invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
:try_start_15
new-instance v0, Lcom/facebook/katana/service/api/methods/HttpOperation;
new-instance v3, Ljava/io/ByteArrayOutputStream;
const/16 v4, 0x2000
invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
const-string v4, "application/x-www-form-urlencoded;"
move-object v5, p0
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/HttpOperation;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->start()V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->join()V
:goto_2a
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_2b
return-void
:catch_2b
move-exception v3
move-object v6, v3
const-string v3, "LoggingService"
invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_2a
.end method
.method public onHttpOperationComplete(Lcom/facebook/katana/service/api/methods/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
.registers 9
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/facebook/katana/service/LoggingService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
if-nez p5, :cond_10
const/16 v1, 0xc8
if-ne p2, v1, :cond_10
sget-object v1, Lcom/facebook/katana/provider/LoggingProvider;->SESSIONS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
:cond_10
return-void
.end method
.method public onHttpOperationProgress(Lcom/facebook/katana/service/api/methods/HttpOperation;JJ)V
.registers 6
return-void
.end method