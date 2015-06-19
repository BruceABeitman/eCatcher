.class  Lcom/alipay/android/app/util/FileDownloader$1;
.super Ljava/lang/Object;
.source "FileDownloader.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/alipay/android/app/util/FileDownloader;
.field private final synthetic val$output:Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;
.method constructor <init>(Lcom/alipay/android/app/util/FileDownloader;Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;)V
.registers 3
iput-object p1, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
iput-object p2, p0, Lcom/alipay/android/app/util/FileDownloader$1;->val$output:Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 12
const-wide/16 v9, 0x0
const/4 v8, 0x0
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
new-instance v4, Lcom/alipay/android/app/util/FileFetch;
iget-object v5, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fileUrl:Ljava/lang/String;
invoke-static {v5}, Lcom/alipay/android/app/util/FileDownloader;->access$3(Lcom/alipay/android/app/util/FileDownloader;)Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->savePath:Ljava/lang/String;
invoke-static {v6}, Lcom/alipay/android/app/util/FileDownloader;->access$4(Lcom/alipay/android/app/util/FileDownloader;)Ljava/lang/String;
move-result-object v6
iget-object v7, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/app/util/FileFetch;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/util/FileDownloader;)V
#setter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v3, v4}, Lcom/alipay/android/app/util/FileDownloader;->access$5(Lcom/alipay/android/app/util/FileDownloader;Lcom/alipay/android/app/util/FileFetch;)V
const-wide/16 v1, -0x1
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
iget-boolean v3, v3, Lcom/alipay/android/app/util/FileDownloader;->showProgress:Z
if-eqz v3, :cond_33
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#calls: Lcom/alipay/android/app/util/FileDownloader;->getFileSize()J
invoke-static {v3}, Lcom/alipay/android/app/util/FileDownloader;->access$6(Lcom/alipay/android/app/util/FileDownloader;)J
move-result-wide v1
cmp-long v3, v1, v9
if-gtz v3, :cond_38
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->val$output:Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;
invoke-virtual {v3, v8}, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->sendEmptyMessage(I)Z
:goto_32
return-void
:cond_33
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#calls: Lcom/alipay/android/app/util/FileDownloader;->deleteFile()V
invoke-static {v3}, Lcom/alipay/android/app/util/FileDownloader;->access$2(Lcom/alipay/android/app/util/FileDownloader;)V
:cond_38
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
iget-boolean v3, v3, Lcom/alipay/android/app/util/FileDownloader;->showProgress:Z
if-eqz v3, :cond_68
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#calls: Lcom/alipay/android/app/util/FileDownloader;->readTempFile()V
invoke-static {v3}, Lcom/alipay/android/app/util/FileDownloader;->access$7(Lcom/alipay/android/app/util/FileDownloader;)V
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v3}, Lcom/alipay/android/app/util/FileDownloader;->access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
move-result-object v3
invoke-virtual {v3}, Lcom/alipay/android/app/util/FileFetch;->getFileEnd()J
move-result-wide v3
cmp-long v3, v3, v1
if-eqz v3, :cond_68
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#calls: Lcom/alipay/android/app/util/FileDownloader;->deleteFile()V
invoke-static {v3}, Lcom/alipay/android/app/util/FileDownloader;->access$2(Lcom/alipay/android/app/util/FileDownloader;)V
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v3}, Lcom/alipay/android/app/util/FileDownloader;->access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
move-result-object v3
invoke-virtual {v3, v9, v10}, Lcom/alipay/android/app/util/FileFetch;->setFileStart(J)V
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v3}, Lcom/alipay/android/app/util/FileDownloader;->access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
move-result-object v3
invoke-virtual {v3, v1, v2}, Lcom/alipay/android/app/util/FileFetch;->setFileEnd(J)V
:cond_68
new-instance v3, Ljava/lang/Thread;
iget-object v4, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v4}, Lcom/alipay/android/app/util/FileDownloader;->access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v3}, Ljava/lang/Thread;->start()V
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->val$output:Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;
#setter for: Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->isFinished:Z
invoke-static {v3, v8}, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->access$1(Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;Z)V
:goto_7b
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->this$0:Lcom/alipay/android/app/util/FileDownloader;
#getter for: Lcom/alipay/android/app/util/FileDownloader;->fetch:Lcom/alipay/android/app/util/FileFetch;
invoke-static {v3}, Lcom/alipay/android/app/util/FileDownloader;->access$1(Lcom/alipay/android/app/util/FileDownloader;)Lcom/alipay/android/app/util/FileFetch;
move-result-object v3
invoke-virtual {v3}, Lcom/alipay/android/app/util/FileFetch;->isStop()Z
move-result v3
if-eqz v3, :cond_8d
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->val$output:Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;
invoke-virtual {v3, v8}, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->sendEmptyMessage(I)Z
goto :goto_32
:cond_8d
const-wide/16 v3, 0x5dc
:try_start_8f
invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
:try_end_92
.catch Ljava/lang/InterruptedException; {:try_start_8f .. :try_end_92} :catch_98
:goto_92
iget-object v3, p0, Lcom/alipay/android/app/util/FileDownloader$1;->val$output:Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;
invoke-virtual {v3, v8}, Lcom/alipay/android/app/util/FileDownloader$ProgressOutput;->sendEmptyMessage(I)Z
goto :goto_7b
:catch_98
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_92
.end method