.class  Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$4;
.super Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;
.source "EasyContextRecognizer.java"
.field final synthetic this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
.method constructor <init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$4;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$Worker;-><init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
return-void
.end method
.method public processRecognize()V
.registers 9
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
iget-object v6, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$4;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#calls: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getCurSnapLight()Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
invoke-static {v6}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$14(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
move-result-object v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long v0, v6, v4
const-wide/16 v6, 0xc8
sub-long v0, v6, v0
const-wide/16 v6, 0xa
cmp-long v6, v0, v6
if-lez v6, :cond_25
iget-object v6, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$4;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
invoke-static {v6}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$0(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Z
move-result v6
if-nez v6, :cond_25
:try_start_22
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:goto_25
:cond_25
:try_end_25
.catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_34
if-eqz v3, :cond_33
iget-object v6, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$4;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
iget v7, v3, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
#calls: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->setStableLightId(I)V
invoke-static {v6, v7}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$15(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;I)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$4;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#calls: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->updateDebugText()V
invoke-static {v6}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$13(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)V
:cond_33
return-void
:catch_34
move-exception v2
invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_25
.end method