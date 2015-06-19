.class public final Lcom/instagram/android/activity/c;
.super Ljava/lang/Object;
.source "CaptureFlowHelper.java"
.field public a:Ljava/io/File;
.field private b:Landroid/content/Context;
.field private c:Lcom/instagram/android/activity/e;
.field private d:I
.field private e:Z
.method public constructor <init>(Landroid/app/Activity;)V
.registers 3
move-object v0, p1
check-cast v0, Lcom/instagram/android/activity/e;
invoke-direct {p0, p1, v0}, Lcom/instagram/android/activity/c;-><init>(Landroid/content/Context;Lcom/instagram/android/activity/e;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/activity/e;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/activity/c;)Lcom/instagram/android/activity/e;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;
return-object v0
.end method
.method private a()V
.registers 6
iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
sget v1, Lcom/facebook/az;->legacy_camera_capture_options_item_photo:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
sget v2, Lcom/facebook/az;->legacy_camera_capture_options_item_video:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
sget v3, Lcom/facebook/az;->legacy_camera_capture_options_item_gallery:I
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/instagram/creation/c/a;->d()Z
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/CharSequence;
const/4 v4, 0x0
aput-object v0, v3, v4
const/4 v4, 0x1
aput-object v2, v3, v4
new-instance v2, Lcom/instagram/ui/dialog/b;
iget-object v4, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
invoke-direct {v2, v4}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v4, Lcom/facebook/az;->legacy_camera_capture_options_title:I
invoke-virtual {v2, v4}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v2
new-instance v4, Lcom/instagram/android/activity/d;
invoke-direct {v4, p0, v3, v0, v1}, Lcom/instagram/android/activity/d;-><init>(Lcom/instagram/android/activity/c;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
invoke-virtual {v2, v3, v4}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method private a(Landroid/net/Uri;)V
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p0, p1, v0, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;ILjava/lang/String;)V
return-void
.end method
.method private a(Landroid/net/Uri;I)V
.registers 5
const/16 v0, 0x2711
const/4 v1, 0x0
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;IILjava/lang/String;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/activity/c;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
return-object v0
.end method
.method private b()V
.registers 3
sget-object v0, Lcom/instagram/o/a;->g:Lcom/instagram/o/a;
invoke-virtual {v0}, Lcom/instagram/o/a;->c()V
iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/instagram/common/u/a;->b(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;
iget-object v1, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-interface {v0, v1}, Lcom/instagram/android/activity/e;->a(Ljava/io/File;)V
return-void
.end method
.method private c()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->isFile()Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v1
if-nez v1, :cond_26
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Failed to delete "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_26
iget-object v1, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
:cond_30
return-void
.end method
.method static synthetic c(Lcom/instagram/android/activity/c;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/activity/c;->b()V
return-void
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 7
const/4 v0, -0x1
if-eq p2, v0, :cond_1f
invoke-direct {p0}, Lcom/instagram/android/activity/c;->c()V
sget-object v0, Lcom/instagram/o/a;->f:Lcom/instagram/o/a;
invoke-virtual {v0}, Lcom/instagram/o/a;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "reason"
const-string v2, "backed_out_of_flow"
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;
iget v1, p0, Lcom/instagram/android/activity/c;->d:I
invoke-interface {v0, p1, v1}, Lcom/instagram/android/activity/e;->a(II)V
:goto_1e
return-void
:cond_1f
packed-switch p1, :pswitch_data_60
goto :goto_1e
:pswitch_23
iget v0, p0, Lcom/instagram/android/activity/c;->d:I
if-eqz v0, :cond_2c
iget v0, p0, Lcom/instagram/android/activity/c;->d:I
const/4 v1, 0x2
if-ne v0, v1, :cond_2f
:cond_2c
invoke-direct {p0}, Lcom/instagram/android/activity/c;->c()V
:cond_2f
iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;
invoke-interface {v0}, Lcom/instagram/android/activity/e;->g_()V
goto :goto_1e
:pswitch_35
iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-static {p3, v0}, Lcom/instagram/creation/base/e;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;I)V
goto :goto_1e
:pswitch_40
iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-static {v0, v1}, Lcom/instagram/creation/photo/b/a;->a(Landroid/content/ContentResolver;Ljava/io/File;)V
iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-static {p3, v0}, Lcom/instagram/creation/photo/b/a;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;I)V
goto :goto_1e
:pswitch_56
iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/activity/c;->a(Landroid/net/Uri;)V
goto :goto_1e
:pswitch_data_60
.packed-switch 0x2711
:pswitch_23
:pswitch_35
:pswitch_40
:pswitch_23
:pswitch_56
.end packed-switch
.end method
.method public final a(Landroid/net/Uri;IILjava/lang/String;)V
.registers 9
sget-object v0, Lcom/instagram/o/a;->j:Lcom/instagram/o/a;
invoke-virtual {v0}, Lcom/instagram/o/a;->c()V
iput p2, p0, Lcom/instagram/android/activity/c;->d:I
iget-object v0, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/instagram/creation/photo/crop/a;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
move-result-object v0
iget v1, p0, Lcom/instagram/android/activity/c;->d:I
invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/a;->a(I)Lcom/instagram/creation/photo/crop/a;
iget-boolean v1, p0, Lcom/instagram/android/activity/c;->e:Z
invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/a;->a(Z)Lcom/instagram/creation/photo/crop/a;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
const-class v3, Lcom/instagram/android/creation/activity/MediaCaptureActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/a;->a()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
if-eqz p4, :cond_2e
const-string v0, "caption"
invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_2e
iget-object v0, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;
invoke-interface {v0, v1, p3}, Lcom/instagram/android/activity/e;->a_(Landroid/content/Intent;I)V
return-void
.end method
.method public final a(Landroid/net/Uri;ILjava/lang/String;)V
.registers 7
iput p2, p0, Lcom/instagram/android/activity/c;->d:I
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
const-class v2, Lcom/instagram/android/creation/activity/MediaCaptureActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "videoFilePath"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "mediaSource"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
if-eqz p3, :cond_1c
const-string v1, "caption"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_1c
iget-object v1, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;
const/16 v2, 0x2714
invoke-interface {v1, v0, v2}, Lcom/instagram/android/activity/e;->a_(Landroid/content/Intent;I)V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
if-eqz v0, :cond_f
const-string v0, "tempPhotoFile"
iget-object v1, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_f
const-string v0, "isDirectShare"
iget-boolean v1, p0, Lcom/instagram/android/activity/c;->e:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "mediaSource"
iget v1, p0, Lcom/instagram/android/activity/c;->d:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public final a(Z)V
.registers 7
const/4 v4, 0x0
iput-boolean p1, p0, Lcom/instagram/android/activity/c;->e:Z
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-static {}, Lcom/instagram/o/a;->a()V
sget-object v1, Lcom/instagram/o/a;->a:Lcom/instagram/o/a;
invoke-virtual {v1}, Lcom/instagram/o/a;->b()Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "is_direct_share"
iget-boolean v3, p0, Lcom/instagram/android/activity/c;->e:Z
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
invoke-virtual {v0}, Lcom/instagram/k/a/b;->f()Z
move-result v0
iget-object v2, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
invoke-static {v2}, Lcom/instagram/camera/a;->a(Landroid/content/pm/PackageManager;)Z
move-result v2
if-nez v2, :cond_33
const-string v0, "has_built_in_camera"
invoke-virtual {v1, v0, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
invoke-direct {p0}, Lcom/instagram/android/activity/c;->b()V
:goto_2f
invoke-virtual {v1}, Lcom/instagram/common/analytics/b;->a()V
return-void
:cond_33
if-eqz v0, :cond_3b
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x8
if-gt v0, v2, :cond_44
:cond_3b
const-string v0, "advanced_camera_enabled"
invoke-virtual {v1, v0, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
invoke-direct {p0}, Lcom/instagram/android/activity/c;->a()V
goto :goto_2f
:cond_44
const-string v0, "advanced_camera_enabled"
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
new-instance v0, Landroid/content/Intent;
iget-object v2, p0, Lcom/instagram/android/activity/c;->b:Landroid/content/Context;
const-class v3, Lcom/instagram/android/creation/activity/MediaCaptureActivity;
invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v2, 0x1
invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string v2, "directShare"
iget-boolean v3, p0, Lcom/instagram/android/activity/c;->e:Z
invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v2, p0, Lcom/instagram/android/activity/c;->c:Lcom/instagram/android/activity/e;
const/16 v3, 0x2711
invoke-interface {v2, v0, v3}, Lcom/instagram/android/activity/e;->a_(Landroid/content/Intent;I)V
goto :goto_2f
.end method
.method public final b(Landroid/os/Bundle;)V
.registers 4
if-eqz p1, :cond_28
const-string v0, "tempPhotoFile"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_17
new-instance v0, Ljava/io/File;
const-string v1, "tempPhotoFile"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/instagram/android/activity/c;->a:Ljava/io/File;
:cond_17
const-string v0, "isDirectShare"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/activity/c;->e:Z
const-string v0, "mediaSource"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/instagram/android/activity/c;->d:I
:cond_28
return-void
.end method