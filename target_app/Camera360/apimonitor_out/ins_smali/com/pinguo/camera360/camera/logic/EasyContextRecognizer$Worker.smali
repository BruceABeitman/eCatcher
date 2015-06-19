.class abstract Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
.super Ljava/lang/Thread;
.source "EasyContextRecognizer.java"
.field private mIsJpgSrc:Z
.field private mLatch:Ljava/util/concurrent/CountDownLatch;
.field private mProcessing:Z
.field final synthetic this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
.method public constructor <init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
.registers 6
const/4 v1, 0x0
iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mLatch:Ljava/util/concurrent/CountDownLatch;
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mProcessing:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mIsJpgSrc:Z
iput-object p2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mLatch:Ljava/util/concurrent/CountDownLatch;
return-void
.end method
.method public abstract processRecognize()V
.end method
.method public run()V
.registers 4
const/4 v2, 0x0
:goto_1
:cond_1
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mProcessing:Z
if-nez v1, :cond_21
const-string/jumbo v1, "EasyContextRecognizer"
const-string/jumbo v2, "\u5de5\u4f5c\u7ebf\u7a0b\u7ed3\u675f"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mLatch:Ljava/util/concurrent/CountDownLatch;
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mLatch:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
const-string/jumbo v1, "EasyContextRecognizer"
const-string/jumbo v2, "\u8ba1\u6570\u5668\u9012\u51cf"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_20
return-void
:cond_21
:try_start_21
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
invoke-static {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$0(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Z
move-result v1
if-eqz v1, :cond_4b
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBytes:[B
invoke-static {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$8(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)[B
move-result-object v1
if-eqz v1, :cond_39
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mJpgBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$9(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Landroid/graphics/Bitmap;
move-result-object v1
if-nez v1, :cond_4b
:cond_39
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mProcessing:Z
:try_end_3c
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_3d
goto :goto_1
:catch_3d
move-exception v0
const-string/jumbo v1, "EasyContextRecognizer"
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_44
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mIsJpgSrc:Z
if-eqz v1, :cond_1
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mProcessing:Z
goto :goto_1
:cond_4b
:try_start_4b
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
invoke-static {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$0(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Z
move-result v1
if-nez v1, :cond_5b
iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mPreviewData:[B
invoke-static {v1}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$10(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)[B
move-result-object v1
if-eqz v1, :cond_1
:cond_5b
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->processRecognize()V
:try_end_5e
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5e} :catch_3d
goto :goto_44
.end method
.method public setIsJpgSrc(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mIsJpgSrc:Z
return-void
.end method
.method public startProcess()V
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mProcessing:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mProcessing:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->start()V
goto :goto_4
.end method
.method public stopProcess()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;->mProcessing:Z
return-void
.end method