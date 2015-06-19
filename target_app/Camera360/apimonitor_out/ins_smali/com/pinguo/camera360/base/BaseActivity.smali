.class public abstract Lcom/pinguo/camera360/base/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"
.field private mIsPause:Z
.field protected mOrientationCompensation:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/base/BaseActivity;->mOrientationCompensation:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseActivity;->mIsPause:Z
return-void
.end method
.method public getOrientation()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/base/BaseActivity;->mOrientationCompensation:I
return v0
.end method
.method public isPaused()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/base/BaseActivity;->mIsPause:Z
return v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
return-void
.end method
.method protected abstract onCreate(Landroid/os/Bundle;Z)V
.end method
.method protected onPause()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseActivity;->mIsPause:Z
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z
if-eqz v0, :cond_13
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x80
invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
:cond_13
return-void
.end method
.method protected onResume()V
.registers 3
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
:cond_10
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/base/BaseActivity;->mIsPause:Z
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V
return-void
.end method
.method public showDialogTips(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.registers 9
const v2, 0x7f080329
const/16 v3, -0x3e7
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v4, p2
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
return-object v0
.end method
.method public showProgress(I)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseActivity;->getOrientation()I
move-result v1
invoke-static {p0, p1, v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
return-object v0
.end method
.method public showProgressCancel(I)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.registers 4
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseActivity;->getOrientation()I
move-result v1
invoke-static {p0, p1, v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
move-result-object v0
return-object v0
.end method
.method public showToastShort(I)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
.registers 4
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseActivity;->getOrientation()I
move-result v1
invoke-direct {v0, p0, p1, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
return-object v0
.end method
.method public showToastShort(Ljava/lang/String;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
.registers 4
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/base/BaseActivity;->getOrientation()I
move-result v1
invoke-direct {v0, p0, p1, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
return-object v0
.end method