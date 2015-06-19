.class public Lcom/ubermedia/c/b;
.super Lcom/ubermedia/c/a;
.source "SourceFile"
.method protected constructor <init>(Landroid/view/MotionEvent;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ubermedia/c/a;-><init>(Landroid/view/MotionEvent;)V
return-void
.end method
.method public a(I)F
.registers 3
iget-object v0, p0, Lcom/ubermedia/c/b;->a:Landroid/view/MotionEvent;
invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F
move-result v0
return v0
.end method
.method public b(I)F
.registers 3
iget-object v0, p0, Lcom/ubermedia/c/b;->a:Landroid/view/MotionEvent;
invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F
move-result v0
return v0
.end method
.method public c(I)I
.registers 3
iget-object v0, p0, Lcom/ubermedia/c/b;->a:Landroid/view/MotionEvent;
invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v0
return v0
.end method
.method public d()I
.registers 2
iget-object v0, p0, Lcom/ubermedia/c/b;->a:Landroid/view/MotionEvent;
invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v0
return v0
.end method