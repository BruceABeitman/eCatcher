.class public final Lcom/spotify/mobile/android/util/bs;
.super Landroid/view/animation/Animation;
.source "SourceFile"
.implements Landroid/view/animation/Animation$AnimationListener;
.field private a:Landroid/view/View;
.field private b:Landroid/view/ViewGroup$MarginLayoutParams;
.field private c:I
.field private d:I
.field private e:I
.field private f:I
.field private g:I
.field private h:I
.field private i:I
.field private j:I
.method public constructor <init>(Landroid/view/View;)V
.registers 4
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
const-wide/16 v0, 0xc8
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/util/bs;->setDuration(J)V
iput-object p1, p0, Lcom/spotify/mobile/android/util/bs;->a:Landroid/view/View;
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
iput-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iput v0, p0, Lcom/spotify/mobile/android/util/bs;->g:I
iput v0, p0, Lcom/spotify/mobile/android/util/bs;->c:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iput v0, p0, Lcom/spotify/mobile/android/util/bs;->h:I
iput v0, p0, Lcom/spotify/mobile/android/util/bs;->d:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iput v0, p0, Lcom/spotify/mobile/android/util/bs;->i:I
iput v0, p0, Lcom/spotify/mobile/android/util/bs;->e:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
iput v0, p0, Lcom/spotify/mobile/android/util/bs;->j:I
iput v0, p0, Lcom/spotify/mobile/android/util/bs;->f:I
invoke-virtual {p0, p0}, Lcom/spotify/mobile/android/util/bs;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/util/bs;->f:I
return-void
.end method
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 9
invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V
iget v0, p0, Lcom/spotify/mobile/android/util/bs;->c:I
iget v1, p0, Lcom/spotify/mobile/android/util/bs;->g:I
iget v2, p0, Lcom/spotify/mobile/android/util/bs;->c:I
sub-int/2addr v1, v2
int-to-float v1, v1
mul-float/2addr v1, p1
float-to-int v1, v1
add-int/2addr v0, v1
iget v1, p0, Lcom/spotify/mobile/android/util/bs;->d:I
iget v2, p0, Lcom/spotify/mobile/android/util/bs;->h:I
iget v3, p0, Lcom/spotify/mobile/android/util/bs;->d:I
sub-int/2addr v2, v3
int-to-float v2, v2
mul-float/2addr v2, p1
float-to-int v2, v2
add-int/2addr v1, v2
iget v2, p0, Lcom/spotify/mobile/android/util/bs;->e:I
iget v3, p0, Lcom/spotify/mobile/android/util/bs;->i:I
iget v4, p0, Lcom/spotify/mobile/android/util/bs;->e:I
sub-int/2addr v3, v4
int-to-float v3, v3
mul-float/2addr v3, p1
float-to-int v3, v3
add-int/2addr v2, v3
iget v3, p0, Lcom/spotify/mobile/android/util/bs;->f:I
iget v4, p0, Lcom/spotify/mobile/android/util/bs;->j:I
iget v5, p0, Lcom/spotify/mobile/android/util/bs;->f:I
sub-int/2addr v4, v5
int-to-float v4, v4
mul-float/2addr v4, p1
float-to-int v4, v4
add-int/2addr v3, v4
iget-object v4, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
return-void
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/util/bs;->j:I
return-void
.end method
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v1, p0, Lcom/spotify/mobile/android/util/bs;->g:I
iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v1, p0, Lcom/spotify/mobile/android/util/bs;->h:I
iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v1, p0, Lcom/spotify/mobile/android/util/bs;->i:I
iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->b:Landroid/view/ViewGroup$MarginLayoutParams;
iget v1, p0, Lcom/spotify/mobile/android/util/bs;->j:I
iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/util/bs;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
return-void
.end method
.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public final onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public final willChangeBounds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method