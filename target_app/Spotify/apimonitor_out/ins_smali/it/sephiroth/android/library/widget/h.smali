.class final Lit/sephiroth/android/library/widget/h;
.super Lit/sephiroth/android/library/widget/l;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field  a:I
.field final synthetic b:Lit/sephiroth/android/library/widget/AbsHListView;
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
.registers 3
iput-object p1, p0, Lit/sephiroth/android/library/widget/h;->b:Lit/sephiroth/android/library/widget/AbsHListView;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/l;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;B)V
return-void
.end method
.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;B)V
.registers 3
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/h;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
return-void
.end method
.method public final run()V
.registers 7
iget-object v0, p0, Lit/sephiroth/android/library/widget/h;->b:Lit/sephiroth/android/library/widget/AbsHListView;
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z
if-eqz v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lit/sephiroth/android/library/widget/h;->b:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;
iget v1, p0, Lit/sephiroth/android/library/widget/h;->a:I
if-eqz v0, :cond_6
iget-object v2, p0, Lit/sephiroth/android/library/widget/h;->b:Lit/sephiroth/android/library/widget/AbsHListView;
iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->an:I
if-lez v2, :cond_6
const/4 v2, -0x1
if-eq v1, v2, :cond_6
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v2
if-ge v1, v2, :cond_6
invoke-virtual {p0}, Lit/sephiroth/android/library/widget/h;->b()Z
move-result v2
if-eqz v2, :cond_6
iget-object v2, p0, Lit/sephiroth/android/library/widget/h;->b:Lit/sephiroth/android/library/widget/AbsHListView;
iget-object v3, p0, Lit/sephiroth/android/library/widget/h;->b:Lit/sephiroth/android/library/widget/AbsHListView;
iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->V:I
sub-int v3, v1, v3
invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_6
iget-object v3, p0, Lit/sephiroth/android/library/widget/h;->b:Lit/sephiroth/android/library/widget/AbsHListView;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v4
invoke-virtual {v3, v2, v1, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;IJ)Z
goto :goto_6
.end method