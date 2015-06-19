.class public Lco/vine/android/SetThumbnailTask;
.super Landroid/os/AsyncTask;
.source "SetThumbnailTask.java"
.field private final mFragmentRef:Ljava/lang/ref/WeakReference;
.field private final mSupportFragmentRef:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/app/Fragment;)V
.registers 3
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
.registers 3
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;
return-void
.end method
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
.registers 11
const/4 v5, 0x0
const/4 v8, 0x0
const/4 v0, 0x0
iget-object v6, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;
if-eqz v6, :cond_e
invoke-virtual {p0}, Lco/vine/android/SetThumbnailTask;->getSupportFragmentActivity()Landroid/app/Activity;
move-result-object v0
:cond_b
:goto_b
if-nez v0, :cond_17
:cond_d
:goto_d
return-object v5
:cond_e
iget-object v6, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;
if-eqz v6, :cond_b
invoke-virtual {p0}, Lco/vine/android/SetThumbnailTask;->getFragmentActivity()Landroid/app/Activity;
move-result-object v0
goto :goto_b
:cond_17
aget-object v1, p1, v8
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v6, 0x7f0b0087
invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v6
int-to-float v6, v6
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v7
iget v7, v7, Landroid/util/DisplayMetrics;->density:F
mul-float v4, v6, v7
invoke-static {v0, v1, v4, v4, v8}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_38
float-to-int v6, v4
invoke-static {v2, v6}, Lco/vine/android/util/image/ImageUtils;->getCroppedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v2
:cond_38
if-eqz v2, :cond_d
invoke-static {v0, v1, v2}, Lco/vine/android/util/image/ImageUtils;->adjustRotation(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v5
goto :goto_d
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Landroid/net/Uri;
invoke-virtual {p0, p1}, Lco/vine/android/SetThumbnailTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected getFragmentActivity()Landroid/app/Activity;
.registers 3
iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Fragment;
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
return-object v1
:cond_c
invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;
move-result-object v1
goto :goto_b
.end method
.method protected getSupportFragmentActivity()Landroid/app/Activity;
.registers 3
iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
return-object v1
:cond_c
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
goto :goto_b
.end method
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_13
iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mSupportFragmentRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
:goto_b
:cond_b
if-eqz v0, :cond_12
check-cast v0, Lco/vine/android/SetThumbnailTask$SetThumbnailListener;
invoke-interface {v0, p1}, Lco/vine/android/SetThumbnailTask$SetThumbnailListener;->setThumbnailImage(Landroid/graphics/Bitmap;)V
:cond_12
return-void
:cond_13
iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_b
iget-object v1, p0, Lco/vine/android/SetThumbnailTask;->mFragmentRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
goto :goto_b
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lco/vine/android/SetThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V
return-void
.end method