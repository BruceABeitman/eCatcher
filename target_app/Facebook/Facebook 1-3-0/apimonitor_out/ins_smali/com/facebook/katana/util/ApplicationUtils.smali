.class public final Lcom/facebook/katana/util/ApplicationUtils;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"
.field private static final PHOTO_FILENAME:Ljava/lang/String; = "Facebook-photo.jpg"
.field public static final TEMP_PHOTO_FILE:Ljava/io/File;
.field public static final TEMP_PHOTO_URI:Landroid/net/Uri;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
const-string v2, "Facebook-photo.jpg"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
sput-object v0, Lcom/facebook/katana/util/ApplicationUtils;->TEMP_PHOTO_FILE:Ljava/io/File;
sget-object v0, Lcom/facebook/katana/util/ApplicationUtils;->TEMP_PHOTO_FILE:Ljava/io/File;
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/facebook/katana/util/ApplicationUtils;->TEMP_PHOTO_URI:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static OpenUserProfile(Landroid/content/Context;J)V
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/katana/ProfileTabHostActivity;->intentForProfile(Landroid/content/Context;J)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static OpenUserProfileForResult(Landroid/app/Activity;JI)V
.registers 5
invoke-static {p0, p1, p2}, Lcom/facebook/katana/ProfileTabHostActivity;->intentForProfile(Landroid/content/Context;J)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public static onSearchRequested(Landroid/content/Context;)Z
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/UsersTabHostActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const/4 v1, 0x1
return v1
.end method
.method public static startDefaultActivity(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/facebook/katana/HomeActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v2, 0x1
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
move-object v0, p1
if-nez v0, :cond_19
new-instance v0, Landroid/content/Intent;
const-class v2, Lcom/facebook/katana/StreamActivity;
invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
:cond_19
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static takePicture(Landroid/app/Activity;I)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-string v1, "android.media.action.IMAGE_CAPTURE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "output"
sget-object v2, Lcom/facebook/katana/util/ApplicationUtils;->TEMP_PHOTO_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public static uploadCameraResult(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
.registers 8
sget-object v3, Lcom/facebook/katana/util/ApplicationUtils;->TEMP_PHOTO_FILE:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v1
const/4 v0, 0x0
if-nez v1, :cond_13
if-eqz p1, :cond_13
const-string v3, "data"
invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
:cond_13
if-nez v1, :cond_17
if-eqz v0, :cond_3d
:cond_17
new-instance v2, Landroid/content/Intent;
const-class v3, Lcom/facebook/katana/UploadPhotoActivity;
invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "com.facebook.katana.upload.bitmap"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
if-eqz v1, :cond_37
const-string v3, "android.intent.extra.STREAM"
sget-object v4, Lcom/facebook/katana/util/ApplicationUtils;->TEMP_PHOTO_URI:Landroid/net/Uri;
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:goto_2c
if-eqz p2, :cond_33
const-string v3, "extra_album_id"
invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_33
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_36
return-void
:cond_37
const-string v3, "extra_photo_data"
invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
goto :goto_2c
:cond_3d
const v3, 0x7f080176
invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/Toast;->show()V
goto :goto_36
.end method