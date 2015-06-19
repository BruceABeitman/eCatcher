.class public Lco/vine/android/recorder/RecordingActivityHelper;
.super Ljava/lang/Object;
.source "RecordingActivityHelper.java"
.field private mConnection:Landroid/content/ServiceConnection;
.field public mIsBound:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lco/vine/android/recorder/RecordingActivityHelper$1;
invoke-direct {v0, p0}, Lco/vine/android/recorder/RecordingActivityHelper$1;-><init>(Lco/vine/android/recorder/RecordingActivityHelper;)V
iput-object v0, p0, Lco/vine/android/recorder/RecordingActivityHelper;->mConnection:Landroid/content/ServiceConnection;
return-void
.end method
.method public bindCameraService(Landroid/app/Activity;)V
.registers 5
const/4 v2, 0x1
iget-boolean v0, p0, Lco/vine/android/recorder/RecordingActivityHelper;->mIsBound:Z
if-nez v0, :cond_1d
new-instance v0, Landroid/content/Intent;
const-class v1, Lco/vine/android/service/ResourceService;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lco/vine/android/recorder/RecordingActivityHelper;->mConnection:Landroid/content/ServiceConnection;
invoke-virtual {p1, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
if-eqz v0, :cond_17
iput-boolean v2, p0, Lco/vine/android/recorder/RecordingActivityHelper;->mIsBound:Z
:goto_16
return-void
:cond_17
const-string v0, "Failed to bind camera service."
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_16
:cond_1d
const-string v0, "Camera service already binded. "
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_16
.end method
.method public unBindCameraService(Landroid/app/Activity;)V
.registers 3
iget-boolean v0, p0, Lco/vine/android/recorder/RecordingActivityHelper;->mIsBound:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/recorder/RecordingActivityHelper;->mConnection:Landroid/content/ServiceConnection;
invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/recorder/RecordingActivityHelper;->mIsBound:Z
:cond_c
return-void
.end method