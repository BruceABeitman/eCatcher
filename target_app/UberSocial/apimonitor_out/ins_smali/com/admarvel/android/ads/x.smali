.class  Lcom/admarvel/android/ads/x;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/admarvel/android/ads/x; onDoubleTap "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/admarvel/android/ads/x; onDoubleTap"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method