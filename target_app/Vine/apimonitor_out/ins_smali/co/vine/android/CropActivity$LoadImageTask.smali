.class  Lco/vine/android/CropActivity$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"
.field private final mActivity:Ljava/lang/ref/WeakReference;
.field final synthetic this$0:Lco/vine/android/CropActivity;
.method constructor <init>(Lco/vine/android/CropActivity;Lco/vine/android/CropActivity;)V
.registers 4
iput-object p1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lco/vine/android/CropActivity$LoadImageTask;->mActivity:Ljava/lang/ref/WeakReference;
const/4 v0, 0x0
iput-boolean v0, p1, Lco/vine/android/CropActivity;->mBitmapLoaded:Z
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
.registers 10
iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
invoke-virtual {v3}, Lco/vine/android/CropActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
iget-object v4, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
iget-object v4, v4, Lco/vine/android/CropActivity;->mUri:Landroid/net/Uri;
iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I
iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I
const/4 v7, 0x1
invoke-static {v3, v4, v5, v6, v7}, Lco/vine/android/util/image/ImageUtils;->safeDecode(Landroid/content/Context;Landroid/net/Uri;IIZ)Lco/vine/android/util/image/ImageUtils$BitmapInfo;
move-result-object v0
if-eqz v0, :cond_3e
iget v2, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->scale:I
iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
iget v4, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origWidth:I
iput v4, v3, Lco/vine/android/CropActivity;->mBitmapWidth:I
iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
iget v4, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origHeight:I
iput v4, v3, Lco/vine/android/CropActivity;->mBitmapHeight:I
iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
iget v4, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origWidth:I
rem-int/2addr v4, v2
iput v4, v3, Lco/vine/android/CropActivity;->mBitmapWidthOffset:I
iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
iget v4, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origHeight:I
rem-int/2addr v4, v2
iput v4, v3, Lco/vine/android/CropActivity;->mBitmapHeightOffset:I
iget-object v3, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
iput v2, v3, Lco/vine/android/CropActivity;->mFileToViewScale:I
iget-object v3, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;
:goto_3d
return-object v3
:cond_3e
const/4 v3, 0x0
goto :goto_3d
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lco/vine/android/CropActivity$LoadImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
.registers 6
const/4 v3, 0x1
iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->mActivity:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/CropActivity;
if-nez v0, :cond_c
:goto_b
return-void
:cond_c
if-eqz p1, :cond_19
iput-boolean v3, v0, Lco/vine/android/CropActivity;->mBitmapLoaded:Z
invoke-virtual {v0, p1}, Lco/vine/android/CropActivity;->onBitmapProcessingDone(Landroid/graphics/Bitmap;)V
:goto_13
iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
invoke-virtual {v1, v3}, Lco/vine/android/CropActivity;->removeDialog(I)V
goto :goto_b
:cond_19
iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
const v2, 0x7f0e0119
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
invoke-virtual {v1, v3}, Lco/vine/android/CropActivity;->removeDialog(I)V
iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lco/vine/android/CropActivity;->setResult(I)V
iget-object v1, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
invoke-virtual {v1}, Lco/vine/android/CropActivity;->finish()V
goto :goto_13
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lco/vine/android/CropActivity$LoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V
return-void
.end method
.method protected onPreExecute()V
.registers 3
iget-object v0, p0, Lco/vine/android/CropActivity$LoadImageTask;->this$0:Lco/vine/android/CropActivity;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lco/vine/android/CropActivity;->showDialog(I)V
return-void
.end method