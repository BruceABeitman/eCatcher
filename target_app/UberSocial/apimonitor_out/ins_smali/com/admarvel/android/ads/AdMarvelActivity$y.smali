.class  Lcom/admarvel/android/ads/AdMarvelActivity$y;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/io/InputStream;
.field  d:Landroid/graphics/Bitmap;
.field private final e:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->c:Ljava/io/InputStream;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->e:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->b:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 8
const/4 v6, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->e:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-nez v0, :cond_c
:cond_b
:goto_b
return-void
:cond_c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;
invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:try_start_29
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
if-eqz v2, :cond_4c
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
const-string v3, "/mnt/sdcard"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_e5
new-instance v2, Ljava/io/File;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_93
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
:goto_4c
:cond_4c
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
if-nez v2, :cond_64
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->c:Ljava/io/InputStream;
if-eqz v2, :cond_64
new-instance v2, Ljava/lang/Thread;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelActivity$y$2;
invoke-direct {v3, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$y$2;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$y;)V
invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
invoke-virtual {v2}, Ljava/lang/Thread;->join()V
:cond_64
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
if-nez v2, :cond_14a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "(\"NO\")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_86
.catchall {:try_start_29 .. :try_end_86} :catchall_117
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_86} :catch_b2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
goto/16 :goto_b
:cond_93
:try_start_93
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "javascript:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "(\"NO\")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_b1
.catchall {:try_start_93 .. :try_end_b1} :catchall_117
.catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b1} :catch_b2
goto :goto_4c
:catch_b2
move-exception v1
:try_start_b3
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "javascript:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "(\"NO\")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_d8
.catchall {:try_start_b3 .. :try_end_d8} :catchall_117
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
goto/16 :goto_b
:cond_e5
:try_start_e5
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
const-string v3, "http:"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f9
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
const-string v3, "https:"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_124
:cond_f9
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/Thread;
new-instance v3, Lcom/admarvel/android/ads/AdMarvelActivity$y$1;
invoke-direct {v3, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$y$1;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity$y;)V
invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v2}, Ljava/lang/Thread;->start()V
invoke-virtual {v2}, Ljava/lang/Thread;->join()V
:try_end_115
.catchall {:try_start_e5 .. :try_end_115} :catchall_117
.catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_115} :catch_b2
goto/16 :goto_4c
:catchall_117
move-exception v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
if-eqz v1, :cond_123
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
iput-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
:cond_123
throw v0
:try_start_124
:cond_124
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
const-string v3, "file:///android_asset/"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_4c
const-string v2, "file:///android_asset/"
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->a:Ljava/lang/String;
invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v2
iput-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->c:Ljava/io/InputStream;
goto/16 :goto_4c
:cond_14a
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_158
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
:cond_158
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".jpg"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
if-eqz v2, :cond_18d
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
if-eqz v3, :cond_18d
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v5, 0x5a
invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:cond_18d
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
new-instance v3, Ljava/io/File;
invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "(\"YES\")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:try_end_1c5
.catchall {:try_start_124 .. :try_end_1c5} :catchall_117
.catch Ljava/lang/Exception; {:try_start_124 .. :try_end_1c5} :catch_b2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$y;->d:Landroid/graphics/Bitmap;
goto/16 :goto_b
.end method