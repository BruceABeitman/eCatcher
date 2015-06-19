.class  Lcom/admarvel/android/ads/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Ljava/io/File;
.method public constructor <init>(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/io/File;)V
.registers 5
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/k;->a:Ljava/lang/ref/WeakReference;
iput-object p3, p0, Lcom/admarvel/android/ads/k;->c:Ljava/io/File;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/k;->b:Ljava/lang/ref/WeakReference;
return-void
.end method
.method private a(Ljava/lang/String;Ljava/io/File;)V
.registers 9
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-string v3, "download begining"
invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "download url:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "downloaded file name:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
invoke-virtual {p0}, Lcom/admarvel/android/ads/k;->isCancelled()Z
move-result v3
if-eqz v3, :cond_49
:cond_48
:goto_48
return-void
:cond_49
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
new-instance v3, Ljava/io/BufferedInputStream;
invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;
const/16 v4, 0x32
invoke-direct {v0, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
:cond_59
invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_6b
int-to-byte v4, v4
invoke-virtual {v0, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/k;->isCancelled()Z
move-result v4
if-eqz v4, :cond_59
goto :goto_48
:cond_6b
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/k;->isCancelled()Z
move-result v3
if-nez v3, :cond_48
invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
invoke-virtual {p0}, Lcom/admarvel/android/ads/k;->isCancelled()Z
move-result v3
if-nez v3, :cond_48
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
move-result-object v0
invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "download ready in"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
sub-long v1, v3, v1
const-wide/16 v3, 0x3e8
div-long/2addr v1, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " sec"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_48
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 14
const/4 v11, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/k;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-nez v0, :cond_d
:cond_c
:goto_c
return-object v11
:cond_d
aget-object v1, p1, v1
check-cast v1, Ljava/lang/String;
const/4 v2, 0x1
aget-object v2, p1, v2
check-cast v2, Ljava/lang/String;
const/4 v3, 0x2
aget-object v3, p1, v3
check-cast v3, Ljava/lang/Integer;
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
:try_start_1f
new-instance v4, Ljava/net/URL;
invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;
move-result-object v4
const-string v5, "\\?"
invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
aget-object v4, v4, v5
new-instance v5, Ljava/io/File;
iget-object v6, p0, Lcom/admarvel/android/ads/k;->c:Ljava/io/File;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "/data/com.admarvel.android.admarvelcachedads/cachedads"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v6, Ljava/io/File;
iget-object v7, p0, Lcom/admarvel/android/ads/k;->c:Ljava/io/File;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "/data/com.admarvel.android.admarvelcachedads/cachedads"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ".tmp"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "file: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "tmpfile: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v7
if-eqz v7, :cond_15b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
invoke-virtual {v5}, Ljava/io/File;->lastModified()J
move-result-wide v9
sub-long/2addr v7, v9
int-to-long v9, v3
cmp-long v3, v7, v9
if-lez v3, :cond_c5
invoke-virtual {v5}, Ljava/io/File;->delete()Z
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_bf
invoke-virtual {v6}, Ljava/io/File;->delete()Z
:cond_bf
invoke-direct {p0, v1, v6}, Lcom/admarvel/android/ads/k;->a(Ljava/lang/String;Ljava/io/File;)V
invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:goto_c5
:cond_c5
iget-object v3, p0, Lcom/admarvel/android/ads/k;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v3, :cond_c
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "content://"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ".AdMarvelLocalFileContentProvider"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, "/cachedads"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "javascript:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "(true,\""
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\", \""
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "\")"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_126
.catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_126} :catch_128
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_126} :catch_16c
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_126} :catch_19f
goto/16 :goto_c
:catch_128
move-exception v0
iget-object v0, p0, Lcom/admarvel/android/ads/k;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_c
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "javascript:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "(false,\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\", \"\")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
goto/16 :goto_c
:try_start_15b
:cond_15b
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_164
invoke-virtual {v6}, Ljava/io/File;->delete()Z
:cond_164
invoke-direct {p0, v1, v6}, Lcom/admarvel/android/ads/k;->a(Ljava/lang/String;Ljava/io/File;)V
invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:try_end_16a
.catch Ljava/lang/RuntimeException; {:try_start_15b .. :try_end_16a} :catch_128
.catch Ljava/io/IOException; {:try_start_15b .. :try_end_16a} :catch_16c
.catch Ljava/lang/Exception; {:try_start_15b .. :try_end_16a} :catch_19f
goto/16 :goto_c5
:catch_16c
move-exception v0
iget-object v0, p0, Lcom/admarvel/android/ads/k;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_c
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "javascript:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "(false,\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\", \"\")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
goto/16 :goto_c
:catch_19f
move-exception v0
iget-object v0, p0, Lcom/admarvel/android/ads/k;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_c
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "javascript:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "(false,\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\", \"\")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
goto/16 :goto_c
.end method