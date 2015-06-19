.class public Lco/vine/android/CropActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "CropActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field private static final DIALOG_CROPPING_PROGRESS_ID:I = 0x0
.field private static final DIALOG_LOADING_PROGRESS_ID:I = 0x1
.field public static final EXTRA_CROP_RECT:Ljava/lang/String; = "cropped_rect"
.field public static final EXTRA_CROP_TYPE:Ljava/lang/String; = "crop_type"
.field public static final EXTRA_URI:Ljava/lang/String; = "uri"
.field private static final STATE_DEGREES:Ljava/lang/String; = "degrees"
.field  mBitmapHeight:I
.field  mBitmapHeightOffset:I
.field protected mBitmapLoaded:Z
.field  mBitmapWidth:I
.field  mBitmapWidthOffset:I
.field protected mCropTask:Lco/vine/android/CropActivity$CropImageTask;
.field private mCurrDegrees:I
.field  mFileToViewScale:I
.field protected mUri:Landroid/net/Uri;
.field protected mView:Lco/vine/android/widget/CroppableImageView;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V
return-void
.end method
.method protected doCrop()V
.registers 3
iget-boolean v0, p0, Lco/vine/android/CropActivity;->mBitmapLoaded:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
invoke-virtual {v0}, Lco/vine/android/CropActivity$CropImageTask;->detachActivity()V
:cond_e
new-instance v0, Lco/vine/android/CropActivity$CropImageTask;
invoke-direct {v0, p0}, Lco/vine/android/CropActivity$CropImageTask;-><init>(Lco/vine/android/CropActivity;)V
iput-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lco/vine/android/CropActivity$CropImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_4
.end method
.method protected onBitmapProcessingDone(Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/widget/CroppableImageView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;
invoke-virtual {v0, p1}, Lco/vine/android/widget/CroppableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->setResult(I)V
invoke-virtual {p0}, Lco/vine/android/CropActivity;->finish()V
return-void
.end method
.method public onClickHandler(Landroid/view/View;)V
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_14
:goto_7
return-void
:pswitch_8
invoke-virtual {p0}, Lco/vine/android/CropActivity;->doCrop()V
goto :goto_7
:pswitch_c
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->setResult(I)V
invoke-virtual {p0}, Lco/vine/android/CropActivity;->finish()V
goto :goto_7
:pswitch_data_14
.packed-switch 0x7f0a00c8
:pswitch_c
:pswitch_8
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;I)V
.registers 6
const-string v1, " + Lco/vine/android/CropActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0, p1, p2, v2}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V
invoke-virtual {p0}, Lco/vine/android/CropActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "uri"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lco/vine/android/CropActivity;->mUri:Landroid/net/Uri;
const v0, 0x7f0a0046
invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lco/vine/android/widget/CroppableImageView;
iput-object v0, p0, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;
iget-object v0, p0, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lco/vine/android/widget/CroppableImageView;->setVisibility(I)V
if-eqz p1, :cond_44
const-string v0, "degrees"
invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I
:goto_2d
invoke-virtual {p0}, Lco/vine/android/CropActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/CropActivity$CropImageTask;
iput-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
if-nez v0, :cond_47
new-instance v0, Lco/vine/android/CropActivity$LoadImageTask;
invoke-direct {v0, p0, p0}, Lco/vine/android/CropActivity$LoadImageTask;-><init>(Lco/vine/android/CropActivity;Lco/vine/android/CropActivity;)V
new-array v1, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lco/vine/android/CropActivity$LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:goto_43
const-string v1, " - Lco/vine/android/CropActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_44
iput v2, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I
goto :goto_2d
:cond_47
iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
invoke-virtual {v0, p0}, Lco/vine/android/CropActivity$CropImageTask;->attachActivity(Lco/vine/android/CropActivity;)V
goto :goto_43
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
const/4 v2, 0x0
new-instance v0, Landroid/app/ProgressDialog;
const v1, 0x7f0f0037
invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
packed-switch p1, :pswitch_data_30
invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onCreateDialog(I)Landroid/app/Dialog;
move-result-object v0
:goto_19
return-object v0
:pswitch_1a
const v1, 0x7f0e00a6
invoke-virtual {p0, v1}, Lco/vine/android/CropActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_19
:pswitch_25
const v1, 0x7f0e011d
invoke-virtual {p0, v1}, Lco/vine/android/CropActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_19
:pswitch_data_30
.packed-switch 0x0
:pswitch_1a
:pswitch_25
.end packed-switch
.end method
.method public onCropDone(ZLandroid/content/Intent;)V
.registers 5
if-eqz p1, :cond_a
const/4 v0, -0x1
invoke-virtual {p0, v0, p2}, Lco/vine/android/CropActivity;->setResult(ILandroid/content/Intent;)V
:goto_6
invoke-virtual {p0}, Lco/vine/android/CropActivity;->finish()V
return-void
:cond_a
const v0, 0x7f0e00a7
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->setResult(I)V
goto :goto_6
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lco/vine/android/CropActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onPause()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->removeDialog(I)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lco/vine/android/CropActivity;->removeDialog(I)V
const-string v1, " - Lco/vine/android/CropActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
invoke-virtual {v0}, Lco/vine/android/CropActivity$CropImageTask;->detachActivity()V
:cond_9
iget-object v0, p0, Lco/vine/android/CropActivity;->mCropTask:Lco/vine/android/CropActivity$CropImageTask;
return-object v0
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/CropActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "degrees"
iget v1, p0, Lco/vine/android/CropActivity;->mCurrDegrees:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, " - Lco/vine/android/CropActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSearchRequested()Z
.registers 2
const/4 v0, 0x0
return v0
.end method