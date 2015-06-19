.class public Lco/vine/android/ImageFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "ImageFragment.java"
.implements Landroid/view/View$OnTouchListener;
.field public static final ARG_IMAGE_URL:Ljava/lang/String; = "image_url"
.field public static final STATE_IMAGE_BITMAP:Ljava/lang/String; = "state_image_bitmap"
.field private mFirstTouch:J
.field private final mHandler:Landroid/os/Handler;
.field private mImageBitmap:Landroid/graphics/Bitmap;
.field private mImageKey:Lco/vine/android/util/image/ImageKey;
.field private mImageView:Landroid/widget/ImageView;
.field private mProgress:Landroid/widget/ProgressBar;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lco/vine/android/ImageFragment;->mHandler:Landroid/os/Handler;
return-void
.end method
.method static synthetic access$100(Lco/vine/android/ImageFragment;)Lco/vine/android/util/image/ImageKey;
.registers 2
iget-object v0, p0, Lco/vine/android/ImageFragment;->mImageKey:Lco/vine/android/util/image/ImageKey;
return-object v0
.end method
.method static synthetic access$200(Lco/vine/android/ImageFragment;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lco/vine/android/ImageFragment;->mProgress:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic access$300(Lco/vine/android/ImageFragment;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lco/vine/android/ImageFragment;->mImageView:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$400(Lco/vine/android/ImageFragment;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lco/vine/android/ImageFragment;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V
if-nez p1, :cond_35
invoke-virtual {p0}, Lco/vine/android/ImageFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v3, "image_url"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_28
new-instance v3, Lco/vine/android/util/image/ImageKey;
invoke-direct {v3, v2}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lco/vine/android/ImageFragment;->mImageKey:Lco/vine/android/util/image/ImageKey;
iget-object v3, p0, Lco/vine/android/ImageFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v4, p0, Lco/vine/android/ImageFragment;->mImageKey:Lco/vine/android/util/image/ImageKey;
invoke-virtual {v3, v4}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_2e
iput-object v1, p0, Lco/vine/android/ImageFragment;->mImageBitmap:Landroid/graphics/Bitmap;
:cond_28
:goto_28
iget-object v3, p0, Lco/vine/android/ImageFragment;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
:goto_2d
return-void
:cond_2e
iget-object v3, p0, Lco/vine/android/ImageFragment;->mProgress:Landroid/widget/ProgressBar;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto :goto_28
:cond_35
const-string v3, "state_image_bitmap"
invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v3
check-cast v3, Landroid/graphics/Bitmap;
iput-object v3, p0, Lco/vine/android/ImageFragment;->mImageBitmap:Landroid/graphics/Bitmap;
goto :goto_2d
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/ImageFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lco/vine/android/ImageFragment$ImageSessionListener;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lco/vine/android/ImageFragment$ImageSessionListener;-><init>(Lco/vine/android/ImageFragment;Lco/vine/android/ImageFragment$1;)V
iput-object v0, p0, Lco/vine/android/ImageFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
const-string v1, " - Lco/vine/android/ImageFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
const v1, 0x7f030049
const/4 v2, 0x0
invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0046
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lco/vine/android/ImageFragment;->mImageView:Landroid/widget/ImageView;
const v1, 0x7f0a0030
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ProgressBar;
iput-object v1, p0, Lco/vine/android/ImageFragment;->mProgress:Landroid/widget/ProgressBar;
return-object v0
.end method
.method public onResume()V
.registers 5
const-string v1, " + Lco/vine/android/ImageFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onResume()V
iget-object v0, p0, Lco/vine/android/ImageFragment;->mImageBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_15
iget-object v1, p0, Lco/vine/android/ImageFragment;->mImageView:Landroid/widget/ImageView;
new-instance v2, Lco/vine/android/drawable/RecyclableBitmapDrawable;
invoke-virtual {p0}, Lco/vine/android/ImageFragment;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-direct {v2, v3, v0}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_15
const-string v1, " - Lco/vine/android/ImageFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/ImageFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/ImageFragment;->mImageBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_e
const-string v0, "state_image_bitmap"
iget-object v1, p0, Lco/vine/android/ImageFragment;->mImageBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_e
const-string v1, " - Lco/vine/android/ImageFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 10
const/4 v2, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v3
if-eq v3, v2, :cond_9
const/4 v2, 0x0
:goto_8
return v2
:cond_9
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v3, p0, Lco/vine/android/ImageFragment;->mFirstTouch:J
sub-long v3, v0, v3
const-wide/16 v5, 0x190
cmp-long v3, v3, v5
if-gez v3, :cond_1f
invoke-virtual {p0}, Lco/vine/android/ImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_8
:cond_1f
iput-wide v0, p0, Lco/vine/android/ImageFragment;->mFirstTouch:J
goto :goto_8
.end method