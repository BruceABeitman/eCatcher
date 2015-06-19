.class final Lcom/instagram/feed/comments/a/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CommentRowViewBinder.java"
.field final synthetic a:Lcom/instagram/feed/comments/a/d;
.method constructor <init>(Lcom/instagram/feed/comments/a/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public final onDown(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public final onLongPress(Landroid/view/MotionEvent;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/feed/comments/a/e; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;
iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z
iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->d:Lcom/instagram/feed/comments/a/a;
invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Lcom/instagram/feed/comments/a/a;)Lcom/instagram/feed/comments/a/g;
move-result-object v0
iget-object v1, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v1, v1, Lcom/instagram/feed/comments/a/d;->c:Lcom/instagram/feed/d/b;
invoke-interface {v0, v1}, Lcom/instagram/feed/comments/a/g;->a(Lcom/instagram/feed/d/b;)V
iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;
iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V
const-string v1, " - Lcom/instagram/feed/comments/a/e; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onShowPress(Landroid/view/MotionEvent;)V
.registers 4
iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;
iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V
return-void
.end method
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
.registers 5
const/4 v2, 0x1
iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;
iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->isPressed()Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;
iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V
:goto_17
iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->d:Lcom/instagram/feed/comments/a/a;
invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Lcom/instagram/feed/comments/a/a;)Lcom/instagram/feed/comments/a/g;
move-result-object v0
iget-object v1, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v1, v1, Lcom/instagram/feed/comments/a/d;->c:Lcom/instagram/feed/d/b;
invoke-interface {v0, v1}, Lcom/instagram/feed/comments/a/g;->a(Lcom/instagram/feed/d/b;)V
return v2
:cond_27
iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;
iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V
iget-object v0, p0, Lcom/instagram/feed/comments/a/e;->a:Lcom/instagram/feed/comments/a/d;
iget-object v0, v0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;
iget-object v0, v0, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
new-instance v1, Lcom/instagram/feed/comments/a/f;
invoke-direct {v1, p0}, Lcom/instagram/feed/comments/a/f;-><init>(Lcom/instagram/feed/comments/a/e;)V
invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
goto :goto_17
.end method