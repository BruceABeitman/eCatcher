.class public Lcom/pinguo/album/utils/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getCameraIntent(Landroid/content/Context;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "android.intent.action.MAIN"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "com.android.camera2"
const-string/jumbo v2, "com.android.camera.CameraLauncher"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public static getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "android.intent.action.MAIN"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "com.android.gallery3d"
const-string/jumbo v2, "com.android.gallery3d.app.GalleryActivity"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method