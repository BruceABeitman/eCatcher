.class final Lcom/userzoom/av;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.field private synthetic a:Lcom/userzoom/aw;
.method constructor <init>(Lcom/userzoom/aw;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/av;->a:Lcom/userzoom/aw;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 10
const/4 v4, 0x0
const/high16 v3, 0x4348
const/high16 v2, 0x42f0
:try_start_5
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
sub-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
const/high16 v1, 0x437a
cmpl-float v0, v0, v1
if-lez v0, :cond_19
:cond_18
:goto_18
return v4
:cond_19
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
sub-float/2addr v0, v1
cmpl-float v0, v0, v2
if-lez v0, :cond_40
invoke-static {p3}, Ljava/lang/Math;->abs(F)F
move-result v0
cmpl-float v0, v0, v3
if-lez v0, :cond_40
iget-object v0, p0, Lcom/userzoom/av;->a:Lcom/userzoom/aw;
const-string v0, "LEFT"
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-static {v0, v1, v2}, Lcom/userzoom/aw;->a(Ljava/lang/String;FF)V
goto :goto_18
:catch_3e
move-exception v0
goto :goto_18
:cond_40
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
sub-float/2addr v0, v1
cmpl-float v0, v0, v2
if-lez v0, :cond_18
invoke-static {p3}, Ljava/lang/Math;->abs(F)F
move-result v0
cmpl-float v0, v0, v3
if-lez v0, :cond_18
iget-object v0, p0, Lcom/userzoom/av;->a:Lcom/userzoom/aw;
const-string v0, "RIGHT"
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-static {v0, v1, v2}, Lcom/userzoom/aw;->a(Ljava/lang/String;FF)V
:try_end_64
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_64} :catch_3e
goto :goto_18
.end method