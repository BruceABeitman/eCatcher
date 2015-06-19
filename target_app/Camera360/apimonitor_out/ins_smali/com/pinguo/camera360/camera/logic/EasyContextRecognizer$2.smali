.class  Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;
.super Ljava/lang/Thread;
.source "EasyContextRecognizer.java"
.field final synthetic this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
.method constructor <init>(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
invoke-static {v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$1(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/faceplusplus/api/FaceDetecter;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$2(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Landroid/content/Context;
move-result-object v3
const-string/jumbo v4, "5mizjzcsify5094mocb4"
invoke-virtual {v2, v3, v4}, Lcom/faceplusplus/api/FaceDetecter;->init(Landroid/content/Context;Ljava/lang/String;)Z
iget-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
invoke-static {v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$3(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/faceplusplus/api/FaceDetecter;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$2(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Landroid/content/Context;
move-result-object v3
const-string/jumbo v4, "5mizjzcsify5094mocb4"
invoke-virtual {v2, v3, v4}, Lcom/faceplusplus/api/FaceDetecter;->init(Landroid/content/Context;Ljava/lang/String;)Z
const-string/jumbo v2, "EasyContextRecognizer"
const-string/jumbo v3, "face detector init finished."
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mIsJpgData:Z
invoke-static {v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$0(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Z
move-result v2
if-nez v2, :cond_56
iget-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
invoke-static {v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$1(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/faceplusplus/api/FaceDetecter;
move-result-object v2
invoke-virtual {v2, v7}, Lcom/faceplusplus/api/FaceDetecter;->setTrackingMode(Z)I
iget-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
invoke-static {v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$3(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/faceplusplus/api/FaceDetecter;
move-result-object v2
invoke-virtual {v2, v7}, Lcom/faceplusplus/api/FaceDetecter;->setTrackingMode(Z)I
const-string/jumbo v2, "EasyContextRecognizer"
const-string/jumbo v3, "face detector set tracking mode."
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_56
const-string/jumbo v2, "EasyContextRecognizer"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "first init time cost "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long/2addr v4, v0
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$4()Ljava/util/HashMap;
move-result-object v2
if-nez v2, :cond_78
:goto_77
return-void
:cond_78
invoke-static {}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$4()Ljava/util/HashMap;
move-result-object v2
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter1:Lcom/faceplusplus/api/FaceDetecter;
invoke-static {v4}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$1(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/faceplusplus/api/FaceDetecter;
move-result-object v4
invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$4()Ljava/util/HashMap;
move-result-object v2
const/16 v3, 0x5a
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#getter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetecter2:Lcom/faceplusplus/api/FaceDetecter;
invoke-static {v4}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$3(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;)Lcom/faceplusplus/api/FaceDetecter;
move-result-object v4
invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#setter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersInited:Z
invoke-static {v2, v7}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$5(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Z)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#setter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mFaceDetectersIniting:Z
invoke-static {v2, v6}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$6(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Z)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$2;->this$0:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;
#setter for: Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->mForceStopFaceDetect:Z
invoke-static {v2, v6}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->access$7(Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;Z)V
const-string/jumbo v2, "EasyContextRecognizer"
const-string/jumbo v3, "\u4eba\u8138\u8bc6\u522b\u5668\u521d\u59cb\u5316\u5b8c\u6bd5"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_77
.end method