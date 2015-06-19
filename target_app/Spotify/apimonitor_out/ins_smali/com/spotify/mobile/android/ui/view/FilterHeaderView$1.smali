.class final Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_62
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v0
const/4 v1, 0x2
aget-object v0, v0, v1
if-eqz v0, :cond_62
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/TextView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I
move-result v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/TextView;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I
move-result v3
sub-int/2addr v2, v3
iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/TextView;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I
move-result v3
sub-int/2addr v2, v3
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v0
sub-int v0, v2, v0
int-to-float v0, v0
cmpl-float v0, v1, v0
if-ltz v0, :cond_62
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/TextView;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->c(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V
:cond_62
const/4 v0, 0x0
return v0
.end method