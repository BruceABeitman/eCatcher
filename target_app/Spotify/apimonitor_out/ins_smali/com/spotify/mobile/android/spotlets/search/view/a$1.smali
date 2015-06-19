.class final Lcom/spotify/mobile/android/spotlets/search/view/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/a;
.field private final b:Landroid/graphics/Rect;
.field private c:Z
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/a;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->b:Landroid/graphics/Rect;
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 10
const/4 v1, 0x0
const/4 v0, 0x1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
iget-boolean v2, v2, Lcom/spotify/mobile/android/spotlets/search/view/a;->e:Z
if-eqz v2, :cond_81
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v2
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v3
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
iget-object v4, v4, Lcom/spotify/mobile/android/spotlets/search/view/a;->d:Landroid/graphics/drawable/Drawable;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->b:Landroid/graphics/Rect;
invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->b:Landroid/graphics/Rect;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
iget-object v5, v5, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
invoke-virtual {v5}, Landroid/widget/EditText;->getWidth()I
move-result v5
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
iget-object v6, v6, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingRight()I
move-result v6
sub-int/2addr v5, v6
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->b:Landroid/graphics/Rect;
invoke-virtual {v6}, Landroid/graphics/Rect;->width()I
move-result v6
sub-int/2addr v5, v6
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
iget-object v6, v6, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingTop()I
move-result v6
invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->b:Landroid/graphics/Rect;
iget v5, v4, Landroid/graphics/Rect;->left:I
add-int/lit8 v5, v5, -0x5
iput v5, v4, Landroid/graphics/Rect;->left:I
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->b:Landroid/graphics/Rect;
iget v5, v4, Landroid/graphics/Rect;->top:I
add-int/lit8 v5, v5, -0x5
iput v5, v4, Landroid/graphics/Rect;->top:I
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->b:Landroid/graphics/Rect;
iget v5, v4, Landroid/graphics/Rect;->right:I
add-int/lit8 v5, v5, 0x5
iput v5, v4, Landroid/graphics/Rect;->right:I
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->b:Landroid/graphics/Rect;
iget v5, v4, Landroid/graphics/Rect;->bottom:I
add-int/lit8 v5, v5, 0x5
iput v5, v4, Landroid/graphics/Rect;->bottom:I
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->b:Landroid/graphics/Rect;
float-to-int v2, v2
float-to-int v3, v3
invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_81
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-nez v1, :cond_71
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->c:Z
:cond_70
:goto_70
return v0
:cond_71
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-ne v1, v0, :cond_70
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->c:Z
if-eqz v1, :cond_70
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/a;->c()V
goto :goto_70
:cond_81
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_89
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$1;->c:Z
:cond_89
move v0, v1
goto :goto_70
.end method