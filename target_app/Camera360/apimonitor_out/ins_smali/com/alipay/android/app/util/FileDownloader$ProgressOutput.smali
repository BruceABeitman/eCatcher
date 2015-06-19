.class  Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;
.super Landroid/os/Handler;
.source "FileDownloader.java"
.field  fileDownloader:Ljava/lang/ref/WeakReference;
.field private isFinished:Z
.method private constructor <init>(Landroid/os/Looper;Lcom/alipay/android/app/util/FileDownloader;)V
.registers 4
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->isFinished:Z
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Looper;Lcom/alipay/android/app/util/FileDownloader;Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;-><init>(Landroid/os/Looper;Lcom/alipay/android/app/util/FileDownloader;)V
return-void
.end method
.method static synthetic access$1(Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;Z)V
.registers 2
iput-boolean p1, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->isFinished:Z
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
const/high16 v7, 0x42c8
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->progressOutput:Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$0(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
move-result-object v2
if-nez v2, :cond_11
:cond_10
:goto_10
return-void
:cond_11
const/high16 v1, 0x4248
:try_start_13
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
iget-boolean v2, v2, Lcom/alipay/android/app/util/FileDownloader;->showProgress:Z
if-eqz v2, :cond_84
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
move-result-object v2
invoke-virtual {v2}, Lcom/alipay/android/app/util/FileFetch;->getFileStart()J
move-result-wide v2
const-wide/16 v4, 0x64
mul-long v3, v2, v4
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
move-result-object v2
invoke-virtual {v2}, Lcom/alipay/android/app/util/FileFetch;->getFileEnd()J
move-result-wide v5
div-long v2, v3, v5
long-to-float v1, v2
:goto_46
:cond_46
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
move-result-object v2
invoke-virtual {v2}, Lcom/alipay/android/app/util/FileFetch;->isStop()Z
move-result v2
if-eqz v2, :cond_ce
cmpl-float v2, v1, v7
if-nez v2, :cond_99
iget-boolean v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->isFinished:Z
if-nez v2, :cond_99
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->progressOutput:Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$0(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
move-result-object v2
invoke-interface {v2}, Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;->downloadSucess()V
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->isFinished:Z
:try_end_72
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_72} :catch_73
goto :goto_10
:catch_73
move-exception v0
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->progressOutput:Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$0(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
move-result-object v2
invoke-interface {v2}, Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;->downloadFail()V
goto :goto_10
:cond_84
:try_start_84
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
move-result-object v2
invoke-virtual {v2}, Lcom/alipay/android/app/util/FileFetch;->isStop()Z
move-result v2
if-eqz v2, :cond_46
const/high16 v1, 0x42c8
goto :goto_46
:cond_99
cmpl-float v2, v1, v7
if-lez v2, :cond_b9
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#calls: Lcom/alipay/android/app/util/FileDownloader;->deleteFile()V
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$2(Lcom/alipay/android/app/util/FileDownloader;)V
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->progressOutput:Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$0(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
move-result-object v2
invoke-interface {v2}, Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;->downloadFail()V
goto/16 :goto_10
:cond_b9
iget-boolean v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->isFinished:Z
if-nez v2, :cond_10
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->progressOutput:Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$0(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
move-result-object v2
invoke-interface {v2}, Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;->downloadFail()V
goto/16 :goto_10
:cond_ce
iget-object v2, p0, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->fileDownloader:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->progressOutput:Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
invoke-static {v2}, Lcom/alipay/android/app/util/FileDownloader;->access$0(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;
move-result-object v2
invoke-interface {v2, v1}, Lcom/alipay/android/app/util/FileDownloader$IDownloadProgress;->downloadProgress(F)V
:try_end_dd
.catch Ljava/lang/Exception; {:try_start_84 .. :try_end_dd} :catch_73
goto/16 :goto_10
.end method