.class  Lcom/millennialmedia/android/p;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field  a:I
.field  b:I
.field  c:I
.field  d:I
.field private final e:Landroid/widget/Button;
.method constructor <init>(Landroid/widget/Button;IIII)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/millennialmedia/android/p;->e:Landroid/widget/Button;
iput p2, p0, Lcom/millennialmedia/android/p;->a:I
iput p3, p0, Lcom/millennialmedia/android/p;->b:I
iput p4, p0, Lcom/millennialmedia/android/p;->c:I
iput p5, p0, Lcom/millennialmedia/android/p;->d:I
return-void
.end method
.method public run()V
.registers 4
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iget-object v1, p0, Lcom/millennialmedia/android/p;->e:Landroid/widget/Button;
invoke-virtual {v1, v0}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V
iget v1, v0, Landroid/graphics/Rect;->top:I
iget v2, p0, Lcom/millennialmedia/android/p;->a:I
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->top:I
iget v1, v0, Landroid/graphics/Rect;->right:I
iget v2, p0, Lcom/millennialmedia/android/p;->d:I
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget v1, v0, Landroid/graphics/Rect;->bottom:I
iget v2, p0, Lcom/millennialmedia/android/p;->c:I
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->bottom:I
iget v1, v0, Landroid/graphics/Rect;->left:I
iget v2, p0, Lcom/millennialmedia/android/p;->b:I
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->left:I
new-instance v1, Landroid/view/TouchDelegate;
iget-object v2, p0, Lcom/millennialmedia/android/p;->e:Landroid/widget/Button;
invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V
const-class v0, Landroid/view/View;
iget-object v2, p0, Lcom/millennialmedia/android/p;->e:Landroid/widget/Button;
invoke-virtual {v2}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/millennialmedia/android/p;->e:Landroid/widget/Button;
invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V
:cond_46
return-void
.end method