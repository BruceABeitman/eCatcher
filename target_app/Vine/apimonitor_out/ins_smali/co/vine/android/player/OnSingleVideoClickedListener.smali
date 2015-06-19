.class public Lco/vine/android/player/OnSingleVideoClickedListener;
.super Ljava/lang/Object;
.source "OnSingleVideoClickedListener.java"
.implements Landroid/view/View$OnClickListener;
.field private mState:I
.field private final mViewPlayer:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lco/vine/android/player/VideoViewInterface;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lco/vine/android/player/OnSingleVideoClickedListener;->mViewPlayer:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public onClick()V
.registers 3
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/player/OnSingleVideoClickedListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/player/OnSingleVideoClickedListener;->mViewPlayer:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/player/VideoViewInterface;
if-eqz v0, :cond_29
invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->hasStarted()Z
move-result v1
if-eqz v1, :cond_29
const-string v1, "Change player state."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->isPaused()Z
move-result v1
if-eqz v1, :cond_22
invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->resume()V
const/4 v1, 0x1
iput v1, p0, Lco/vine/android/player/OnSingleVideoClickedListener;->mState:I
:goto_21
const-string v1, " - Lco/vine/android/player/OnSingleVideoClickedListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_22
invoke-interface {v0}, Lco/vine/android/player/VideoViewInterface;->pause()V
const/4 v1, 0x0
iput v1, p0, Lco/vine/android/player/OnSingleVideoClickedListener;->mState:I
goto :goto_21
:cond_29
const-string v1, "Ignore because it is not in playing state."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
const/4 v1, -0x1
iput v1, p0, Lco/vine/android/player/OnSingleVideoClickedListener;->mState:I
goto :goto_21
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/player/OnSingleVideoClickedListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/player/OnSingleVideoClickedListener;->onClick()V
const-string v1, " - Lco/vine/android/player/OnSingleVideoClickedListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method