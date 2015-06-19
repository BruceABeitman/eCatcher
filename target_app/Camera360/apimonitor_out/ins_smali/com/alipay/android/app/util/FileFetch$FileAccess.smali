.class final Lcom/alipay/android/app/util/FileFetch$FileAccess;
.super Ljava/lang/Object;
.source "FileFetch.java"
.field private outStream:Ljava/io/FileOutputStream;
.field final synthetic this$0:Lcom/alipay/android/app/util/FileFetch;
.method public constructor <init>(Lcom/alipay/android/app/util/FileFetch;)V
.registers 6
iput-object p1, p0, Lcom/alipay/android/app/util/FileFetch$FileAccess;->this$0:Lcom/alipay/android/app/util/FileFetch;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_5
new-instance v1, Ljava/io/FileOutputStream;
#getter for: Lcom/alipay/android/app/util/FileFetch;->savePath:Ljava/lang/String;
invoke-static {p1}, Lcom/alipay/android/app/util/FileFetch;->access$0(Lcom/alipay/android/app/util/FileFetch;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
iput-object v1, p0, Lcom/alipay/android/app/util/FileFetch$FileAccess;->outStream:Ljava/io/FileOutputStream;
:try_end_11
.catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_12
:goto_11
return-void
:catch_12
move-exception v0
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
goto :goto_11
.end method
.method public close()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/alipay/android/app/util/FileFetch$FileAccess;->outStream:Ljava/io/FileOutputStream;
invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public declared-synchronized write([BII)I
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/alipay/android/app/util/FileFetch$FileAccess;->outStream:Ljava/io/FileOutputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return p3
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method