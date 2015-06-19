.class public Lcom/instagram/android/creation/activity/MediaCaptureActivity;
.super Lcom/instagram/base/activity/d;
.source "MediaCaptureActivity.java"
.implements Lcom/instagram/creation/b/a/e;
.implements Lcom/instagram/creation/base/a;
.implements Lcom/instagram/creation/base/b;
.implements Lcom/instagram/creation/photo/a/a;
.implements Lcom/instagram/creation/photo/camera/s;
.implements Lcom/instagram/creation/photo/crop/k;
.implements Lcom/instagram/creation/video/k/a;
.field private p:Lcom/instagram/creation/b/c/a;
.field private q:Z
.field private r:I
.field private s:F
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->r:I
const/high16 v0, -0x3d3a
iput v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->s:F
return-void
.end method
.method private b(Landroid/support/v4/app/Fragment;)V
.registers 6
const/4 v0, 0x1
const/high16 v3, -0x3d3a
iget v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->r:I
const/4 v2, -0x1
if-ne v1, v2, :cond_12
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-static {v1}, Lcom/instagram/camera/h;->a(Landroid/content/ContentResolver;)I
move-result v1
iput v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->r:I
:cond_12
iget v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->r:I
if-ne v1, v0, :cond_42
instance-of v1, p1, Lcom/instagram/creation/video/f/a;
if-nez v1, :cond_1e
instance-of v1, p1, Lcom/instagram/creation/photo/camera/c;
if-eqz v1, :cond_43
:goto_1e
:cond_1e
if-nez v0, :cond_25
sget-object v1, Lcom/instagram/l/c;->c:Lcom/instagram/l/a;
invoke-virtual {v1}, Lcom/instagram/l/a;->g()V
:cond_25
iget-boolean v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Z
if-eqz v1, :cond_42
if-eqz v0, :cond_45
const v0, 0x3f333333
:goto_2e
cmpl-float v1, v0, v3
if-eqz v1, :cond_42
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-static {v1, v0}, Lcom/instagram/camera/h;->a(Landroid/view/Window;F)F
move-result v0
iget v1, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->s:F
cmpl-float v1, v1, v3
if-nez v1, :cond_42
iput v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->s:F
:cond_42
return-void
:cond_43
const/4 v0, 0x0
goto :goto_1e
:cond_45
iget v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->s:F
goto :goto_2e
.end method
.method private j()I
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "mediaSource"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method private k()Z
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "directShare"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final a(IZ)V
.registers 7
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v0, "directShare"
invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
sget v0, Lcom/instagram/creation/base/c;->b:I
if-ne p1, v0, :cond_28
new-instance v0, Lcom/instagram/creation/video/f/a;
invoke-direct {v0}, Lcom/instagram/creation/video/f/a;-><init>()V
:goto_13
new-instance v2, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v3
invoke-direct {v2, v3}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
invoke-virtual {v2, v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->b()Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
:cond_28
new-instance v0, Lcom/instagram/creation/photo/camera/c;
invoke-direct {v0}, Lcom/instagram/creation/photo/camera/c;-><init>()V
goto :goto_13
.end method
.method public final a(Landroid/net/Uri;Ljava/lang/String;Z)V
.registers 7
sget-object v0, Lcom/instagram/o/a;->j:Lcom/instagram/o/a;
invoke-virtual {v0}, Lcom/instagram/o/a;->c()V
invoke-static {p0, p1}, Lcom/instagram/creation/photo/crop/a;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/a;->a(I)Lcom/instagram/creation/photo/crop/a;
invoke-virtual {v0, p2}, Lcom/instagram/creation/photo/crop/a;->a(Ljava/lang/String;)Lcom/instagram/creation/photo/crop/a;
invoke-virtual {v0, p3}, Lcom/instagram/creation/photo/crop/a;->a(Z)Lcom/instagram/creation/photo/crop/a;
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/creation/photo/crop/b;
invoke-direct {v2}, Lcom/instagram/creation/photo/crop/b;-><init>()V
invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/a;->a()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;
move-result-object v0
const-string v1, "camera_capture"
invoke-virtual {v0, p0, v1}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
new-instance v0, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-direct {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;-><init>()V
invoke-virtual {v0, v1, p1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final a(Landroid/support/v4/app/Fragment;)V
.registers 2
invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->a(Landroid/support/v4/app/Fragment;)V
invoke-direct {p0, p1}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->b(Landroid/support/v4/app/Fragment;)V
return-void
.end method
.method public final a(Lcom/instagram/creation/b/a/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Lcom/instagram/creation/b/c/a;
invoke-static {p1}, Lcom/instagram/creation/b/c/a;->b(Lcom/instagram/creation/b/a/b;)V
return-void
.end method
.method public final a(Ljava/lang/Runnable;)V
.registers 3
invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/creation/b/d/c;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
sget-object v0, Lcom/instagram/o/a;->k:Lcom/instagram/o/a;
invoke-virtual {v0}, Lcom/instagram/o/a;->c()V
const-string v0, "mediaFilePath"
invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-direct {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;-><init>()V
invoke-virtual {v0, v1, p2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final a(Ljava/lang/String;Z)V
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->a(Ljava/lang/String;ZLandroid/os/Bundle;)V
return-void
.end method
.method public final a(Ljava/lang/String;ZLandroid/os/Bundle;)V
.registers 6
const-string v0, "pendingMediaKey"
invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "directShare"
invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v0
sget-object v1, Lcom/instagram/o/a;->b:Lcom/instagram/o/a;
invoke-virtual {v1}, Lcom/instagram/o/a;->c()V
invoke-virtual {v0}, Landroid/support/v4/app/s;->c()Z
move-result v1
if-eqz v1, :cond_36
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-direct {v1, v0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v0, Lcom/instagram/android/creation/a/ah;
invoke-direct {v0}, Lcom/instagram/android/creation/a/ah;-><init>()V
invoke-virtual {v1, v0, p3}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
const-string v1, "next"
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
const-string v1, "METADATA_FRAGMENT"
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
:cond_36
return-void
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
.registers 3
invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
move-result-object v0
return-object v0
.end method
.method public final b(Lcom/instagram/creation/b/a/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Lcom/instagram/creation/b/c/a;
invoke-virtual {v0, p1}, Lcom/instagram/creation/b/c/a;->c(Lcom/instagram/creation/b/a/b;)V
return-void
.end method
.method public final c(Lcom/instagram/creation/b/a/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Lcom/instagram/creation/b/c/a;
invoke-virtual {v0, p1}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/a/b;)V
return-void
.end method
.method public final d(Lcom/instagram/creation/b/a/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Lcom/instagram/creation/b/c/a;
invoke-virtual {v0, p1}, Lcom/instagram/creation/b/c/a;->d(Lcom/instagram/creation/b/a/b;)V
return-void
.end method
.method public final g()V
.registers 1
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->onBackPressed()V
return-void
.end method
.method public final h()V
.registers 2
invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V
return-void
.end method
.method public final i()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Lcom/instagram/creation/b/c/a;
invoke-virtual {v0}, Lcom/instagram/creation/b/c/a;->b()V
iget-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Lcom/instagram/creation/b/c/a;
invoke-virtual {v0}, Lcom/instagram/creation/b/c/a;->c()V
return-void
.end method
.method public onBackPressed()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v0
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lcom/instagram/common/p/a;
if-eqz v1, :cond_2a
check-cast v0, Lcom/instagram/common/p/a;
invoke-interface {v0}, Lcom/instagram/common/p/a;->b()Z
move-result v0
if-eqz v0, :cond_2a
const/4 v0, 0x1
:goto_17
if-nez v0, :cond_1c
invoke-super {p0}, Lcom/instagram/base/activity/d;->onBackPressed()V
:cond_1c
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v0
sget v1, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->b(Landroid/support/v4/app/Fragment;)V
return-void
:cond_2a
const/4 v0, 0x0
goto :goto_17
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/instagram/android/creation/activity/MediaCaptureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/instagram/creation/b/c/a;->a(Landroid/content/Context;)Lcom/instagram/creation/b/c/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->p:Lcom/instagram/creation/b/c/a;
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v0
if-nez v0, :cond_16
invoke-static {p0}, Lcom/instagram/android/activity/a;->a(Landroid/app/Activity;)V
:cond_16
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
sget-object v0, Lcom/instagram/l/c;->c:Lcom/instagram/l/a;
invoke-virtual {v0}, Lcom/instagram/l/a;->a()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Z
iget-boolean v0, p0, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->q:Z
if-nez v0, :cond_3e
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/camera/h;->a(Landroid/view/Window;Landroid/content/ContentResolver;)V
:cond_3e
sget v0, Lcom/facebook/aw;->activity_single_container:I
invoke-virtual {p0, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->setContentView(I)V
invoke-static {}, Lcom/instagram/user/userservice/b/f;->e()J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
cmp-long v0, v0, v2
if-gez v0, :cond_5e
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/instagram/user/userservice/UserService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "suggestions"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:cond_5e
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v2
const-string v0, "isCrop"
invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_99
new-instance v0, Lcom/instagram/creation/photo/crop/b;
invoke-direct {v0}, Lcom/instagram/creation/photo/crop/b;-><init>()V
invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V
:cond_7a
:goto_7a
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v1
sget v2, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v1
if-nez v1, :cond_98
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;
move-result-object v1
sget v2, Lcom/facebook/av;->layout_container_main:I
const-string v3, "MediaCaptureActivity"
invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;
invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I
:cond_98
:goto_98
const-string v1, " - Lcom/instagram/android/creation/activity/MediaCaptureActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_99
const-string v0, "videoFilePath"
invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_fd
const-string v0, "videoFilePath"
invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/instagram/creation/video/l/g;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
move-result-object v0
const-string v1, "video_invalid_url"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_f9
invoke-static {v0}, Lcom/instagram/creation/video/i/a;->a(Ljava/lang/String;)Lcom/instagram/creation/video/i/a;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/video/l/g;->a(Lcom/instagram/creation/video/i/a;)Z
move-result v1
if-eqz v1, :cond_f5
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->j()I
move-result v3
invoke-static {v1, v3}, Lcom/instagram/creation/video/l/g;->a(Landroid/content/Context;I)Lcom/instagram/creation/b/a/b;
move-result-object v1
const-string v3, "caption"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_da
invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V
:cond_da
invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;
move-result-object v2
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3, v1}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;Lcom/instagram/creation/b/a/b;)V
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->d()Landroid/support/v4/app/s;
move-result-object v2
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;
move-result-object v1
invoke-direct {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->k()Z
move-result v3
invoke-static {v2, v1, v0, v5, v3}, Lcom/instagram/creation/video/l/g;->a(Landroid/support/v4/app/s;Ljava/lang/String;Lcom/instagram/creation/video/i/a;ZZ)V
goto :goto_98
:cond_f5
invoke-virtual {p0}, Lcom/instagram/android/creation/activity/MediaCaptureActivity;->finish()V
goto :goto_98
:cond_f9
invoke-static {p0}, Lcom/instagram/creation/video/l/g;->a(Landroid/app/Activity;)V
goto :goto_98
:cond_fd
invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->e()Lcom/instagram/creation/b/a/b;
move-result-object v0
if-eqz v0, :cond_129
new-instance v0, Lcom/instagram/creation/video/f/a;
invoke-direct {v0}, Lcom/instagram/creation/video/f/a;-><init>()V
:goto_10c
const-string v2, "directShare"
invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_7a
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string v3, "directShare"
const-string v4, "directShare"
invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V
goto/16 :goto_7a
:cond_129
new-instance v0, Lcom/instagram/creation/photo/camera/c;
invoke-direct {v0}, Lcom/instagram/creation/photo/camera/c;-><init>()V
goto :goto_10c
.end method