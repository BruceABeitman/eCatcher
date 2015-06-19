.class final Lcom/spotify/android/paste/widget/HeaderView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/android/paste/widget/HeaderView;
.method constructor <init>(Lcom/spotify/android/paste/widget/HeaderView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/android/paste/widget/HeaderView$3;->a:Lcom/spotify/android/paste/widget/HeaderView;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/android/paste/widget/HeaderView$3; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p3}, Ljava/lang/Math;->abs(F)F
move-result v0
invoke-static {p4}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpl-float v0, v0, v1
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
move v2, v0
const-string v1, " - Lcom/spotify/android/paste/widget/HeaderView$3; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method