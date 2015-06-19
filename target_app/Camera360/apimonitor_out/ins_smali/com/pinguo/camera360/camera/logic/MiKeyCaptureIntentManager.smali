.class public Lcom/pinguo/camera360/camera/logic/MiKeyCaptureIntentManager;
.super Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;
.source "MiKeyCaptureIntentManager.java"
.method public constructor <init>(Landroid/app/Activity;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method protected setCanceledResult()V
.registers 1
return-void
.end method
.method protected setSuccessResultByData(Landroid/graphics/Bitmap;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.pinguo.camera360.IMAGE_CAPTURE_RET"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "data"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/logic/MiKeyCaptureIntentManager;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method protected setSuccessResultByFile()V
.registers 3
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "com.pinguo.camera360.IMAGE_CAPTURE_RET"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/logic/MiKeyCaptureIntentManager;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method