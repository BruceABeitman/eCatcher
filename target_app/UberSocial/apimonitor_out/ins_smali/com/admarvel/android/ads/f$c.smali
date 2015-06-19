.class  Lcom/admarvel/android/ads/f$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private c:Ljava/io/FileOutputStream;
.field private d:I
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
.registers 5
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f$c;->d:I
iput-object p1, p0, Lcom/admarvel/android/ads/f$c;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/admarvel/android/ads/f$c;->b:Ljava/lang/String;
iput p3, p0, Lcom/admarvel/android/ads/f$c;->d:I
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
.registers 10
const/4 v7, 0x1
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/admarvel/android/ads/f$c;->isCancelled()Z
move-result v0
if-eqz v0, :cond_d
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_c
return-object v0
:cond_d
new-instance v1, Ljava/io/File;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/f$c;->b:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ".PROCESSING"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_32
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_c
:cond_32
invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
:try_start_35
invoke-virtual {p0}, Lcom/admarvel/android/ads/f$c;->isCancelled()Z
move-result v0
if-eqz v0, :cond_4a
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_44
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_44
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_c
:cond_4a
new-instance v0, Ljava/net/URL;
iget-object v2, p0, Lcom/admarvel/android/ads/f$c;->a:Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
const/16 v2, 0xbb8
invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V
const/16 v2, 0x2710
invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V
invoke-static {v0}, Ldroidbox/java/net/URLConnection;->connect(Ljava/net/URLConnection;)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f$c;->isCancelled()Z
move-result v2
if-eqz v2, :cond_77
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_71
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_71
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_c
:cond_77
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
if-nez v0, :cond_9c
new-instance v0, Ljava/lang/RuntimeException;
const-string v2, "stream is null"
invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_85
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_85} :catch_85
:catch_85
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_96
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_96
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_c
:cond_9c
:try_start_9c
invoke-virtual {p0}, Lcom/admarvel/android/ads/f$c;->isCancelled()Z
move-result v2
if-eqz v2, :cond_b2
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_ab
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_ab
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_c
:cond_b2
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_bf
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_c
:cond_bf
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
iput-object v2, p0, Lcom/admarvel/android/ads/f$c;->c:Ljava/io/FileOutputStream;
const/16 v2, 0x1000
new-array v2, v2, [B
:goto_ca
invoke-virtual {p0}, Lcom/admarvel/android/ads/f$c;->isCancelled()Z
move-result v3
if-nez v3, :cond_de
invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_de
iget-object v4, p0, Lcom/admarvel/android/ads/f$c;->c:Ljava/io/FileOutputStream;
const/4 v5, 0x0
invoke-virtual {v4, v2, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
goto :goto_ca
:cond_de
invoke-virtual {p0}, Lcom/admarvel/android/ads/f$c;->isCancelled()Z
move-result v2
if-eqz v2, :cond_f4
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_ed
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_ed
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_c
:cond_f4
new-instance v2, Ljava/io/File;
iget-object v3, p0, Lcom/admarvel/android/ads/f$c;->b:Ljava/lang/String;
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_104
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:cond_104
invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_110
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_110
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
iget-object v0, p0, Lcom/admarvel/android/ads/f$c;->c:Ljava/io/FileOutputStream;
invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/ads/f$c;->c:Ljava/io/FileOutputStream;
:try_end_11b
.catch Ljava/lang/Exception; {:try_start_9c .. :try_end_11b} :catch_85
invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_c
.end method
.method protected a(Ljava/lang/Boolean;)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x1
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_29
iget v0, p0, Lcom/admarvel/android/ads/f$c;->d:I
if-ge v0, v3, :cond_29
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xb
if-lt v0, v1, :cond_2d
const-string v0, "#### onPostExecute"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v0, Lcom/admarvel/android/ads/f$c;
iget-object v1, p0, Lcom/admarvel/android/ads/f$c;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/admarvel/android/ads/f$c;->b:Ljava/lang/String;
invoke-direct {v0, v1, v2, v3}, Lcom/admarvel/android/ads/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
new-array v2, v4, [Ljava/lang/Void;
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/f$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_29
:goto_29
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
return-void
:cond_2d
new-instance v0, Lcom/admarvel/android/ads/f$c;
iget-object v1, p0, Lcom/admarvel/android/ads/f$c;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/admarvel/android/ads/f$c;->b:Ljava/lang/String;
invoke-direct {v0, v1, v2, v3}, Lcom/admarvel/android/ads/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
new-array v1, v4, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/f$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_29
.end method
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f$c;->a([Ljava/lang/Void;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected onCancelled()V
.registers 3
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/admarvel/android/ads/f$c;->b:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_10
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_10
invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V
return-void
.end method
.method protected synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f$c;->a(Ljava/lang/Boolean;)V
return-void
.end method