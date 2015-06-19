.class public Lcom/facebook/katana/util/EclairKeyHandler;
.super Ljava/lang/Object;
.source "EclairKeyHandler.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 3
invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v0
if-nez v0, :cond_b
invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public static onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 3
invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method