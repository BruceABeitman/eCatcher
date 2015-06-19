.class final Lcom/instagram/android/maps/ui/ak;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoOverlay.java"
.field final synthetic a:Lcom/instagram/android/maps/ui/ah;
.method private constructor <init>(Lcom/instagram/android/maps/ui/ah;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/ak;->a:Lcom/instagram/android/maps/ui/ah;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/maps/ui/ah;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/maps/ui/ak;-><init>(Lcom/instagram/android/maps/ui/ah;)V
return-void
.end method
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/ui/ak; onDoubleTap "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iget-object v1, p0, Lcom/instagram/android/maps/ui/ak;->a:Lcom/instagram/android/maps/ui/ah;
invoke-static {v1}, Lcom/instagram/android/maps/ui/ah;->b(Lcom/instagram/android/maps/ui/ah;)Z
move-result v1
if-eqz v1, :cond_a
:goto_9
move v2, v0
const-string v1, " - Lcom/instagram/android/maps/ui/ak; onDoubleTap"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_a
iget-object v1, p0, Lcom/instagram/android/maps/ui/ak;->a:Lcom/instagram/android/maps/ui/ah;
invoke-static {v1}, Lcom/instagram/android/maps/ui/ah;->e(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/ui/a/a;
move-result-object v1
if-eqz v1, :cond_22
iget-object v1, p0, Lcom/instagram/android/maps/ui/ak;->a:Lcom/instagram/android/maps/ui/ah;
invoke-static {v1}, Lcom/instagram/android/maps/ui/ah;->e(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/ui/a/a;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/maps/ui/ak;->a:Lcom/instagram/android/maps/ui/ah;
invoke-static {v2}, Lcom/instagram/android/maps/ui/ah;->d(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/b/f;
move-result-object v2
invoke-interface {v1, v2}, Lcom/instagram/android/maps/ui/a/a;->a(Lcom/instagram/android/maps/b/f;)Z
goto :goto_9
:cond_22
invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_9
.end method
.method public final onDown(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/ui/ak; onSingleTapConfirmed "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iget-object v1, p0, Lcom/instagram/android/maps/ui/ak;->a:Lcom/instagram/android/maps/ui/ah;
invoke-static {v1}, Lcom/instagram/android/maps/ui/ah;->b(Lcom/instagram/android/maps/ui/ah;)Z
move-result v1
if-eqz v1, :cond_a
:cond_9
:goto_9
move v2, v0
const-string v1, " - Lcom/instagram/android/maps/ui/ak; onSingleTapConfirmed"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_a
iget-object v1, p0, Lcom/instagram/android/maps/ui/ak;->a:Lcom/instagram/android/maps/ui/ah;
invoke-static {v1}, Lcom/instagram/android/maps/ui/ah;->c(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/ui/a/c;
move-result-object v1
if-eqz v1, :cond_24
iget-object v1, p0, Lcom/instagram/android/maps/ui/ak;->a:Lcom/instagram/android/maps/ui/ah;
invoke-static {v1}, Lcom/instagram/android/maps/ui/ah;->c(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/ui/a/c;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/maps/ui/ak;->a:Lcom/instagram/android/maps/ui/ah;
invoke-static {v2}, Lcom/instagram/android/maps/ui/ah;->d(Lcom/instagram/android/maps/ui/ah;)Lcom/instagram/android/maps/b/f;
move-result-object v2
invoke-interface {v1, v2}, Lcom/instagram/android/maps/ui/a/c;->a(Lcom/instagram/android/maps/b/f;)Z
move-result v1
if-nez v1, :cond_9
:cond_24
invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_9
.end method