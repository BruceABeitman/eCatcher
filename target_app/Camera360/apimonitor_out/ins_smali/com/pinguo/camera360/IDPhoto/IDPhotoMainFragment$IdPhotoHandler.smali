.class  Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$IdPhotoHandler;
.super Landroid/os/Handler;
.source "IDPhotoMainFragment.java"
.field private weakReference:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
.registers 3
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$IdPhotoHandler;->weakReference:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 8
const/4 v5, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$IdPhotoHandler;->weakReference:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
if-nez v1, :cond_c
:cond_b
:goto_b
return-void
:cond_c
iget v2, p1, Landroid/os/Message;->what:I
packed-switch v2, :pswitch_data_58
goto :goto_b
:pswitch_12
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_b
:pswitch_20
const/4 v2, 0x1
#setter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mIsFinishing:Z
invoke-static {v1, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;Z)V
#calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->cancelFaceDetectUI()V
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$1(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->isAdded()Z
move-result v2
if-eqz v2, :cond_39
const v2, 0x7f0801c1
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const/16 v4, 0x5dc
invoke-static {v2, v3, v4, v5}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V
:cond_39
const-wide/16 v2, 0x5dc
invoke-virtual {p0, v5, v2, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$IdPhotoHandler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_b
:pswitch_3f
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
#getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$2(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_b
:pswitch_4f
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_b
nop
:pswitch_data_58
.packed-switch 0x0
:pswitch_12
:pswitch_20
:pswitch_3f
:pswitch_4f
.end packed-switch
.end method