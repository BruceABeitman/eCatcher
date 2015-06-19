.class  Lcom/twidroid/ui/widgets/DragableList$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/ui/widgets/DragableList;
.method constructor <init>(Lcom/twidroid/ui/widgets/DragableList;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/DragableList$1;->a:Lcom/twidroid/ui/widgets/DragableList;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
const/4 v0, 0x1
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList$1;->a:Lcom/twidroid/ui/widgets/DragableList;
invoke-static {v1}, Lcom/twidroid/ui/widgets/DragableList;->a(Lcom/twidroid/ui/widgets/DragableList;)Landroid/widget/ImageView;
move-result-object v1
if-eqz v1, :cond_47
const/high16 v1, 0x447a
cmpl-float v1, p3, v1
if-lez v1, :cond_46
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList$1;->a:Lcom/twidroid/ui/widgets/DragableList;
invoke-static {v1}, Lcom/twidroid/ui/widgets/DragableList;->b(Lcom/twidroid/ui/widgets/DragableList;)Landroid/graphics/Rect;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/widgets/DragableList$1;->a:Lcom/twidroid/ui/widgets/DragableList;
invoke-static {v2}, Lcom/twidroid/ui/widgets/DragableList;->a(Lcom/twidroid/ui/widgets/DragableList;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v2
iget v1, v1, Landroid/graphics/Rect;->right:I
mul-int/lit8 v1, v1, 0x2
div-int/lit8 v1, v1, 0x3
int-to-float v1, v1
cmpl-float v1, v2, v1
if-lez v1, :cond_46
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList$1;->a:Lcom/twidroid/ui/widgets/DragableList;
invoke-static {v1}, Lcom/twidroid/ui/widgets/DragableList;->c(Lcom/twidroid/ui/widgets/DragableList;)V
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList$1;->a:Lcom/twidroid/ui/widgets/DragableList;
invoke-static {v1}, Lcom/twidroid/ui/widgets/DragableList;->e(Lcom/twidroid/ui/widgets/DragableList;)Lcom/twidroid/ui/widgets/g;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/ui/widgets/DragableList$1;->a:Lcom/twidroid/ui/widgets/DragableList;
invoke-static {v2}, Lcom/twidroid/ui/widgets/DragableList;->d(Lcom/twidroid/ui/widgets/DragableList;)I
move-result v2
invoke-interface {v1, v2}, Lcom/twidroid/ui/widgets/g;->a(I)V
iget-object v1, p0, Lcom/twidroid/ui/widgets/DragableList$1;->a:Lcom/twidroid/ui/widgets/DragableList;
invoke-static {v1, v0}, Lcom/twidroid/ui/widgets/DragableList;->a(Lcom/twidroid/ui/widgets/DragableList;Z)V
:goto_46
:cond_46
return v0
:cond_47
const/4 v0, 0x0
goto :goto_46
.end method