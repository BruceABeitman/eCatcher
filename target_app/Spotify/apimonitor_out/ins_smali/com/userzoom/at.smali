.class final Lcom/userzoom/at;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.field private synthetic a:Lcom/userzoom/au;
.method constructor <init>(Lcom/userzoom/au;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/at;->a:Lcom/userzoom/au;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public final onLongPress(Landroid/view/MotionEvent;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/userzoom/at; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/at;->a:Lcom/userzoom/au;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v2
const/4 v3, 0x2
float-to-int v0, v0
float-to-int v1, v1
const-string v4, "Long Press"
invoke-virtual {v2, v3, v0, v1, v4}, Luserzoom/com/a;->a(IIILjava/lang/String;)V
const-string v1, " - Lcom/userzoom/at; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method