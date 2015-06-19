.class public Lcom/pinguo/camera360/camera/controller/MiKeyPicturePreviewFragment;
.super Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;
.source "MiKeyPicturePreviewFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IntentPicturePreviewFragment;-><init>()V
return-void
.end method
.method protected createCaptureIntentManager()Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;
.registers 3
new-instance v0, Lcom/pinguo/camera360/camera/logic/MiKeyCaptureIntentManager;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/MiKeyPicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/logic/MiKeyCaptureIntentManager;-><init>(Landroid/app/Activity;)V
return-object v0
.end method