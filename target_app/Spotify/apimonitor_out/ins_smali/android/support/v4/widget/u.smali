.class final Landroid/support/v4/widget/u;
.super Landroid/support/v4/widget/ae;
.source "SourceFile"
.field final synthetic a:Landroid/support/v4/widget/SlidingPaneLayout;
.method private constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-direct {p0}, Landroid/support/v4/widget/ae;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;B)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/widget/u;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ad;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/widget/ad;->a()I
move-result v0
if-nez v0, :cond_32
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/support/v4/widget/SlidingPaneLayout;)F
move-result v0
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-nez v0, :cond_33
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b()V
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
:goto_32
:cond_32
return-void
:cond_33
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a()V
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
const/4 v1, 0x1
invoke-static {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
goto :goto_32
.end method
.method public final a(II)V
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ad;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1, p2}, Landroid/support/v4/widget/ad;->a(Landroid/view/View;I)V
return-void
.end method
.method public final a(Landroid/view/View;F)V
.registers 6
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I
move-result v1
iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
add-int/2addr v0, v1
cmpl-float v1, p2, v2
if-gtz v1, :cond_24
cmpl-float v1, p2, v2
if-nez v1, :cond_2b
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->c(Landroid/support/v4/widget/SlidingPaneLayout;)F
move-result v1
const/high16 v2, 0x3f00
cmpl-float v1, v1, v2
if-lez v1, :cond_2b
:cond_24
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/support/v4/widget/SlidingPaneLayout;)I
move-result v1
add-int/2addr v0, v1
:cond_2b
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->b(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ad;
move-result-object v1
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v2
invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ad;->a(II)Z
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V
return-void
.end method
.method public final a(Landroid/view/View;I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v0, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;I)V
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidate()V
return-void
.end method
.method public final a(Landroid/view/View;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/support/v4/widget/SlidingPaneLayout;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->b:Z
goto :goto_9
.end method
.method public final b(Landroid/view/View;I)I
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I
move-result v1
iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I
add-int/2addr v0, v1
iget-object v1, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/support/v4/widget/SlidingPaneLayout;)I
move-result v1
add-int/2addr v1, v0
invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
return v0
.end method
.method public final b(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->c()V
return-void
.end method
.method public final c(Landroid/view/View;)I
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/u;->a:Landroid/support/v4/widget/SlidingPaneLayout;
invoke-static {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/support/v4/widget/SlidingPaneLayout;)I
move-result v0
return v0
.end method