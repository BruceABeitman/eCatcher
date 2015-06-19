.class public Lcom/pinguo/camera360/AppCrashHandler;
.super Ljava/lang/Object;
.source "AppCrashHandler.java"
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.field private mContext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/AppCrashHandler;->mContext:Landroid/content/Context;
return-void
.end method
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/SoundManager;->restoreSysRingerMode()V
const-string/jumbo v1, "Fatal"
const-string/jumbo v2, "Fatal exception start ======================================"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "Fatal"
invoke-static {v1, p2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const-string/jumbo v1, "Fatal"
const-string/jumbo v2, "Fatal exception end ======================================"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/AppCrashHandler;->mContext:Landroid/content/Context;
const-class v2, Lcom/pinguo/camera360/CrashReportActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "Stacktrace"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
:try_start_37
iget-object v1, p0, Lcom/pinguo/camera360/AppCrashHandler;->mContext:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_3c
.catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3c} :catch_50
:goto_3c
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->destroy()V
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v1
invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
const/16 v1, 0xa
invoke-static {v1}, Ljava/lang/System;->exit(I)V
return-void
:catch_50
move-exception v1
goto :goto_3c
.end method