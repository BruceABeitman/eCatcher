.class final Lcom/instagram/creation/video/ui/m;
.super Ljava/lang/Object;
.source "SoftDeletePopupWindow.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Landroid/graphics/Rect;
.field final synthetic b:Landroid/view/View;
.field final synthetic c:Lcom/instagram/creation/video/ui/l;
.method constructor <init>(Lcom/instagram/creation/video/ui/l;Landroid/graphics/Rect;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lcom/instagram/creation/video/ui/m;->c:Lcom/instagram/creation/video/ui/l;
iput-object p2, p0, Lcom/instagram/creation/video/ui/m;->a:Landroid/graphics/Rect;
iput-object p3, p0, Lcom/instagram/creation/video/ui/m;->b:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 6
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lcom/instagram/creation/video/ui/m;->c:Lcom/instagram/creation/video/ui/l;
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-static {v0, v1}, Lcom/instagram/creation/video/ui/l;->a(Lcom/instagram/creation/video/ui/l;F)F
iget-object v0, p0, Lcom/instagram/creation/video/ui/m;->c:Lcom/instagram/creation/video/ui/l;
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
invoke-static {v0, v1}, Lcom/instagram/creation/video/ui/l;->b(Lcom/instagram/creation/video/ui/l;F)F
iget-object v0, p0, Lcom/instagram/creation/video/ui/m;->a:Landroid/graphics/Rect;
iget-object v1, p0, Lcom/instagram/creation/video/ui/m;->c:Lcom/instagram/creation/video/ui/l;
invoke-static {v1}, Lcom/instagram/creation/video/ui/l;->a(Lcom/instagram/creation/video/ui/l;)F
move-result v1
float-to-int v1, v1
iget-object v2, p0, Lcom/instagram/creation/video/ui/m;->c:Lcom/instagram/creation/video/ui/l;
invoke-static {v2}, Lcom/instagram/creation/video/ui/l;->b(Lcom/instagram/creation/video/ui/l;)F
move-result v2
float-to-int v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/instagram/creation/video/ui/m;->b:Landroid/view/View;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V
:cond_34
const/4 v0, 0x0
return v0
.end method