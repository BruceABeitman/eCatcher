.class final Lit/sephiroth/android/library/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;
.field private final b:Lit/sephiroth/android/library/widget/x;
.field private c:I
.field private final d:Ljava/lang/Runnable;
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
.registers 4
iput-object p1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lit/sephiroth/android/library/widget/e$1;
invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/e$1;-><init>(Lit/sephiroth/android/library/widget/e;)V
iput-object v0, p0, Lit/sephiroth/android/library/widget/e;->d:Ljava/lang/Runnable;
new-instance v0, Lit/sephiroth/android/library/widget/x;
invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lit/sephiroth/android/library/widget/x;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
return-void
.end method
.method static synthetic a(Lit/sephiroth/android/library/widget/e;)Lit/sephiroth/android/library/widget/x;
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
return-object v0
.end method
.method final a()V
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I
move-result v1
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/x;->a(I)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, 0x6
iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
:goto_1f
return-void
:cond_20
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, -0x1
iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V
goto :goto_1f
.end method
.method final a(I)V
.registers 9
const v5, 0x7fffffff
const/4 v3, 0x0
if-gez p1, :cond_24
move v1, v5
:goto_7
iput v1, p0, Lit/sephiroth/android/library/widget/e;->c:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/x;->a(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
move v2, p1
move v4, v3
move v6, v3
invoke-virtual/range {v0 .. v6}, Lit/sephiroth/android/library/widget/x;->a(IIIIII)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, 0x4
iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
return-void
:cond_24
move v1, v3
goto :goto_7
.end method
.method final a(IIZ)V
.registers 7
if-gez p1, :cond_22
const v0, 0x7fffffff
:goto_5
iput v0, p0, Lit/sephiroth/android/library/widget/e;->c:I
iget-object v2, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
if-eqz p3, :cond_24
sget-object v1, Lit/sephiroth/android/library/widget/AbsHListView;->T:Landroid/view/animation/Interpolator;
:goto_d
invoke-virtual {v2, v1}, Lit/sephiroth/android/library/widget/x;->a(Landroid/view/animation/Interpolator;)V
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
invoke-virtual {v1, v0, p1, p2}, Lit/sephiroth/android/library/widget/x;->a(III)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, 0x4
iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
return-void
:cond_22
const/4 v0, 0x0
goto :goto_5
:cond_24
const/4 v1, 0x0
goto :goto_d
.end method
.method final b()V
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, -0x1
iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->d:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->k(Lit/sephiroth/android/library/widget/AbsHListView;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/x;->e()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->l(Lit/sephiroth/android/library/widget/AbsHListView;)Z
return-void
.end method
.method final b(I)V
.registers 9
const/4 v3, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/x;->a(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I
move-result v1
const/high16 v4, -0x8000
iget-object v2, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I
move-result v6
move v2, p1
move v5, v3
invoke-virtual/range {v0 .. v6}, Lit/sephiroth/android/library/widget/x;->a(IIIIII)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, 0x6
iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method final c()V
.registers 5
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->d:Ljava/lang/Runnable;
const-wide/16 v2, 0x28
invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public final run()V
.registers 9
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I
packed-switch v0, :pswitch_data_1c4
:pswitch_9
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/e;->b()V
:goto_c
:cond_c
return-void
:pswitch_d
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/x;->a()Z
move-result v0
if-nez v0, :cond_c
:pswitch_15
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z
if-eqz v0, :cond_20
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V
:cond_20
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I
if-eqz v0, :cond_2e
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I
move-result v0
if-nez v0, :cond_32
:cond_2e
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/e;->b()V
goto :goto_c
:cond_32
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/x;->d()Z
move-result v4
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/x;->b()I
move-result v5
iget v0, p0, Lit/sephiroth/android/library/widget/e;->c:I
sub-int/2addr v0, v5
if-lez v0, :cond_f5
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v6, v6, Lit/sephiroth/android/library/widget/AbsHListView;->V:I
iput v6, v1, Lit/sephiroth/android/library/widget/AbsHListView;->A:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
iput v1, v6, Lit/sephiroth/android/library/widget/AbsHListView;->B:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I
move-result v1
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I
move-result v6
sub-int/2addr v1, v6
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I
move-result v6
sub-int/2addr v1, v6
add-int/lit8 v1, v1, -0x1
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v0
:goto_71
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v6, v6, Lit/sephiroth/android/library/widget/AbsHListView;->A:I
iget-object v7, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v7, v7, Lit/sephiroth/android/library/widget/AbsHListView;->V:I
sub-int/2addr v6, v7
invoke-virtual {v1, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v6
if-eqz v6, :cond_1c1
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v1
:goto_86
iget-object v7, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v7, v0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)Z
move-result v7
if-eqz v7, :cond_91
if-eqz v0, :cond_91
move v2, v3
:cond_91
if-eqz v2, :cond_14e
if-eqz v6, :cond_ad
invoke-virtual {v6}, Landroid/view/View;->getLeft()I
move-result v2
sub-int v1, v2, v1
sub-int v1, v0, v1
neg-int v1, v1
iget-object v2, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v5, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v5}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I
move-result v5
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v6, v6, Lit/sephiroth/android/library/widget/AbsHListView;->R:I
invoke-static {v2, v1, v5, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;III)Z
:cond_ad
if-eqz v4, :cond_c
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
iget-object v2, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I
move-result v2
iget-object v4, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->R:I
invoke-virtual {v1, v2, v4}, Lit/sephiroth/android/library/widget/x;->a(II)V
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I
move-result v1
if-eqz v1, :cond_d0
if-ne v1, v3, :cond_13b
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->h(Lit/sephiroth/android/library/widget/AbsHListView;)Z
move-result v1
if-nez v1, :cond_13b
:cond_d0
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v2, 0x6
iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView;->F:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/x;->c()F
move-result v1
float-to-int v1, v1
if-lez v0, :cond_131
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->i(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/s;
move-result-object v0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/s;->a(I)V
:cond_e7
:goto_e7
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_c
:cond_f5
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v7, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v7, v7, Lit/sephiroth/android/library/widget/AbsHListView;->V:I
add-int/2addr v7, v1
iput v7, v6, Lit/sephiroth/android/library/widget/AbsHListView;->A:I
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v6, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
iput v1, v6, Lit/sephiroth/android/library/widget/AbsHListView;->B:I
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I
move-result v1
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I
move-result v6
sub-int/2addr v1, v6
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I
move-result v6
sub-int/2addr v1, v6
add-int/lit8 v1, v1, -0x1
neg-int v1, v1
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
goto/16 :goto_71
:cond_131
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->j(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/s;
move-result-object v0
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/s;->a(I)V
goto :goto_e7
:cond_13b
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, -0x1
iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/i;
if-eqz v0, :cond_e7
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/i;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/i;->a()V
goto :goto_e7
:cond_14e
if-eqz v4, :cond_164
if-nez v2, :cond_164
if-eqz v7, :cond_159
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V
:cond_159
iput v5, p0, Lit/sephiroth/android/library/widget/e;->c:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_c
:cond_164
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/e;->b()V
goto/16 :goto_c
:pswitch_169
iget-object v1, p0, Lit/sephiroth/android/library/widget/e;->b:Lit/sephiroth/android/library/widget/x;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/x;->d()Z
move-result v0
if-eqz v0, :cond_1bc
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I
move-result v4
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/x;->b()I
move-result v5
sub-int v0, v5, v4
iget-object v6, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v7, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v7, v7, Lit/sephiroth/android/library/widget/AbsHListView;->R:I
invoke-static {v6, v0, v4, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;III)Z
move-result v0
if-eqz v0, :cond_1ae
if-gtz v4, :cond_1a7
if-lez v5, :cond_1a7
move v0, v3
:goto_18e
if-ltz v4, :cond_193
if-gez v5, :cond_193
move v2, v3
:cond_193
if-nez v0, :cond_197
if-eqz v2, :cond_1a9
:cond_197
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/x;->c()F
move-result v0
float-to-int v0, v0
if-eqz v2, :cond_19f
neg-int v0, v0
:cond_19f
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/x;->e()V
invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/e;->a(I)V
goto/16 :goto_c
:cond_1a7
move v0, v2
goto :goto_18e
:cond_1a9
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/e;->a()V
goto/16 :goto_c
:cond_1ae
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V
goto/16 :goto_c
:cond_1bc
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/e;->b()V
goto/16 :goto_c
:cond_1c1
move v1, v2
goto/16 :goto_86
:pswitch_data_1c4
.packed-switch 0x3
:pswitch_d
:pswitch_15
:pswitch_9
:pswitch_169
.end packed-switch
.end method