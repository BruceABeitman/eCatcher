.class public final Lit/sephiroth/android/library/a/a/b;
.super Ljava/lang/Object;
.source "MultiChoiceModeWrapper.java"
.implements Lit/sephiroth/android/library/a/a/a;
.field public a:Lit/sephiroth/android/library/a/a/a;
.field private b:Lit/sephiroth/android/library/widget/AbsHListView;
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;
return-void
.end method
.method public final a(Landroid/view/ActionMode;IJZ)V
.registers 12
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;
move-object v1, p1
move v2, p2
move-wide v3, p3
move v5, p5
invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/a/a/a;->a(Landroid/view/ActionMode;IJZ)V
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCheckedItemCount()I
move-result v0
if-nez v0, :cond_14
invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V
:cond_14
return-void
.end method
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;
invoke-interface {v0, p1, p2}, Lit/sephiroth/android/library/a/a/a;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;
invoke-interface {v1, p1, p2}, Lit/sephiroth/android/library/a/a/a;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
move-result v1
if-eqz v1, :cond_f
iget-object v1, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V
const/4 v0, 0x1
:cond_f
return v0
.end method
.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
.registers 5
const/4 v2, 0x1
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;
invoke-interface {v0, p1}, Lit/sephiroth/android/library/a/a/a;->onDestroyActionMode(Landroid/view/ActionMode;)V
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v1, 0x0
iput-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a()V
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;
iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->o()V
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->b:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V
return-void
.end method
.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;
invoke-interface {v0, p1, p2}, Lit/sephiroth/android/library/a/a/a;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
move-result v0
return v0
.end method