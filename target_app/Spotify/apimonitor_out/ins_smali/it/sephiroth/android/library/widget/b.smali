.class final Lit/sephiroth/android/library/widget/b;
.super Lit/sephiroth/android/library/widget/l;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
.registers 3
iput-object p1, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/l;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;B)V
return-void
.end method
.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;B)V
.registers 3
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
return-void
.end method
.method public final run()V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isPressed()Z
move-result v0
if-eqz v0, :cond_42
iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I
if-ltz v0, :cond_42
iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I
iget-object v2, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->V:I
sub-int/2addr v0, v2
iget-object v2, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z
if-nez v0, :cond_43
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/b;->b()Z
move-result v0
if-eqz v0, :cond_4e
iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v3, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->al:I
iget-object v4, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
iget-wide v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->am:J
invoke-virtual {v0, v2, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Z
move-result v0
:goto_38
if-eqz v0, :cond_42
iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V
invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V
:goto_42
:cond_42
return-void
:cond_43
iget-object v0, p0, Lit/sephiroth/android/library/widget/b;->a:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V
if-eqz v2, :cond_42
invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V
goto :goto_42
:cond_4e
move v0, v1
goto :goto_38
.end method