.class final Lcom/bbm/ui/activities/fe;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChildActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ev;
.field private b:Lcom/bbm/ui/activities/ff;
.method public constructor <init>(Lcom/bbm/ui/activities/ev;Lcom/bbm/ui/activities/ff;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/fe;->a:Lcom/bbm/ui/activities/ev;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/fe;->b:Lcom/bbm/ui/activities/ff;
iput-object p2, p0, Lcom/bbm/ui/activities/fe;->b:Lcom/bbm/ui/activities/ff;
return-void
.end method
.method public final onDown(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 10
const/4 v0, 0x0
const/high16 v4, 0x4348
if-eqz p1, :cond_21
if-eqz p2, :cond_21
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
sub-float/2addr v2, v3
cmpl-float v1, v1, v4
if-lez v1, :cond_22
:cond_21
:goto_21
return v0
:cond_22
const/high16 v1, 0x42f0
cmpl-float v1, v2, v1
if-lez v1, :cond_37
invoke-static {p3}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpl-float v1, v1, v4
if-lez v1, :cond_37
iget-object v0, p0, Lcom/bbm/ui/activities/fe;->b:Lcom/bbm/ui/activities/ff;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ff;->c()V
const/4 v0, 0x1
goto :goto_21
:cond_37
const/high16 v1, -0x3d10
cmpg-float v1, v2, v1
if-gez v1, :cond_21
invoke-static {p3}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpl-float v1, v1, v4
if-lez v1, :cond_21
iget-object v1, p0, Lcom/bbm/ui/activities/fe;->b:Lcom/bbm/ui/activities/ff;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ff;->a()V
goto :goto_21
.end method
.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/fe; onSingleTapConfirmed "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/fe;->b:Lcom/bbm/ui/activities/ff;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ff;->b()V
const/4 v0, 0x0
move v2, v0
const-string v1, " - Lcom/bbm/ui/activities/fe; onSingleTapConfirmed"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method