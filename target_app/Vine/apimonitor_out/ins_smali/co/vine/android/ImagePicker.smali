.class public Lco/vine/android/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"
.field private mActiveUserId:J
.field private mActivity:Landroid/app/Activity;
.field private mListener:Lco/vine/android/ImagePicker$Listener;
.field private mSavedImageUri:Landroid/net/Uri;
.method public constructor <init>(Landroid/app/Activity;Lco/vine/android/ImagePicker$Listener;J)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
iput-wide p3, p0, Lco/vine/android/ImagePicker;->mActiveUserId:J
iput-object p2, p0, Lco/vine/android/ImagePicker;->mListener:Lco/vine/android/ImagePicker$Listener;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/ImagePicker;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
return-object v0
.end method
.method public captureImage(I)V
.registers 13
const/4 v10, 0x0
const-string v0, "android.media.action.IMAGE_CAPTURE"
iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
iget-wide v8, p0, Lco/vine/android/ImagePicker;->mActiveUserId:J
invoke-static {v7, v10, v8, v9}, Lco/vine/android/util/image/ImageUtils;->getTempPic(Landroid/content/Context;ZJ)Ljava/io/File;
move-result-object v4
if-eqz v4, :cond_15
iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
invoke-static {v7}, Lco/vine/android/util/image/ImageUtils;->hasEnoughExternalStorageForNewPhoto(Landroid/content/Context;)Z
move-result v7
if-nez v7, :cond_22
:cond_15
iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
const v8, 0x7f0e0055
invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v7
invoke-virtual {v7}, Landroid/widget/Toast;->show()V
:goto_21
return-void
:cond_22
iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
const v8, 0x7f0e019d
invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v3
new-instance v6, Landroid/content/ContentValues;
invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V
const-string v7, "title"
invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v7, "description"
invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v5
iget-object v7, p0, Lco/vine/android/ImagePicker;->mListener:Lco/vine/android/ImagePicker$Listener;
invoke-interface {v7, v5}, Lco/vine/android/ImagePicker$Listener;->setAvatarUrl(Landroid/net/Uri;)V
new-instance v7, Landroid/content/Intent;
const-string v8, "android.media.action.IMAGE_CAPTURE"
invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v8, "output"
invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
move-result-object v1
:try_start_50
iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
invoke-virtual {v7, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:try_end_55
.catch Landroid/content/ActivityNotFoundException; {:try_start_50 .. :try_end_55} :catch_56
goto :goto_21
:catch_56
move-exception v2
iget-object v7, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
const v8, 0x7f0e0256
invoke-static {v7, v8}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-static {v5}, Lco/vine/android/util/image/ImageUtils;->deleteTempPic(Landroid/net/Uri;)Z
iget-object v7, p0, Lco/vine/android/ImagePicker;->mListener:Lco/vine/android/ImagePicker$Listener;
const/4 v8, 0x0
invoke-interface {v7, v8}, Lco/vine/android/ImagePicker$Listener;->setAvatarUrl(Landroid/net/Uri;)V
goto :goto_21
.end method
.method public chooseImage(I)V
.registers 6
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.PICK"
sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
:try_start_9
iget-object v2, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
:try_end_e
.catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
iget-object v2, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
const v3, 0x7f0e0256
invoke-static {v2, v3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_e
.end method
.method public getSavedImageUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lco/vine/android/ImagePicker;->mSavedImageUri:Landroid/net/Uri;
return-object v0
.end method
.method public saveProfileImage(Landroid/graphics/Bitmap;)V
.registers 9
new-instance v3, Ljava/io/File;
iget-object v5, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
invoke-static {v5}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v5
const-string v6, "twitter_profile.jpg"
invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v6, 0x64
invoke-virtual {p1, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
:try_start_1d
new-instance v4, Ljava/io/FileOutputStream;
invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v5
iput-object v5, p0, Lco/vine/android/ImagePicker;->mSavedImageUri:Landroid/net/Uri;
const-string v5, "Pending Uri for profile photo is {}."
iget-object v6, p0, Lco/vine/android/ImagePicker;->mSavedImageUri:Landroid/net/Uri;
invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v5, p0, Lco/vine/android/ImagePicker;->mListener:Lco/vine/android/ImagePicker$Listener;
iget-object v6, p0, Lco/vine/android/ImagePicker;->mSavedImageUri:Landroid/net/Uri;
invoke-interface {v5, v6}, Lco/vine/android/ImagePicker$Listener;->setAvatarUrl(Landroid/net/Uri;)V
:try_end_3c
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3c} :catch_3d
:goto_3c
return-void
:catch_3d
move-exception v2
iget-object v5, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
if-eqz v5, :cond_4c
iget-object v5, p0, Lco/vine/android/ImagePicker;->mActivity:Landroid/app/Activity;
new-instance v6, Lco/vine/android/ImagePicker$1;
invoke-direct {v6, p0}, Lco/vine/android/ImagePicker$1;-><init>(Lco/vine/android/ImagePicker;)V
invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_4c
iget-object v5, p0, Lco/vine/android/ImagePicker;->mListener:Lco/vine/android/ImagePicker$Listener;
const/4 v6, 0x0
invoke-interface {v5, v6}, Lco/vine/android/ImagePicker$Listener;->setAvatarUrl(Landroid/net/Uri;)V
goto :goto_3c
.end method