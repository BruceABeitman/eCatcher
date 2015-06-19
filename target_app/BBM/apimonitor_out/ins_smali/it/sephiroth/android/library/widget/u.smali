.class  Lit/sephiroth/android/library/widget/u;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"
.field private a:Landroid/os/Parcelable;
.field final synthetic b:Lit/sephiroth/android/library/widget/AdapterView;
.method constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;)V
.registers 3
iput-object p1, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lit/sephiroth/android/library/widget/u;->a:Landroid/os/Parcelable;
return-void
.end method
.method public onChanged()V
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
const/4 v1, 0x1
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ai:Z
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget v1, v1, Lit/sephiroth/android/library/widget/AdapterView;->an:I
iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I
move-result v1
iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->an:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->a:Landroid/os/Parcelable;
if-eqz v0, :cond_4c
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I
if-nez v0, :cond_4c
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->an:I
if-lez v0, :cond_4c
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/u;->a:Landroid/os/Parcelable;
invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/os/Parcelable;)V
const/4 v0, 0x0
iput-object v0, p0, Lit/sephiroth/android/library/widget/u;->a:Landroid/os/Parcelable;
:goto_41
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->l()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->requestLayout()V
return-void
:cond_4c
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->o()V
goto :goto_41
.end method
.method public onInvalidated()V
.registers 7
const-wide/high16 v4, -0x8000
const/4 v3, 0x0
const/4 v2, -0x1
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
const/4 v1, 0x1
iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ai:Z
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->a(Lit/sephiroth/android/library/widget/AdapterView;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Lit/sephiroth/android/library/widget/u;->a:Landroid/os/Parcelable;
:cond_1d
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget-object v1, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iget v1, v1, Lit/sephiroth/android/library/widget/AdapterView;->an:I
iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->ao:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->an:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->al:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput-wide v4, v0, Lit/sephiroth/android/library/widget/AdapterView;->am:J
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput-wide v4, v0, Lit/sephiroth/android/library/widget/AdapterView;->ak:J
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
iput-boolean v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->ac:Z
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->l()V
iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->requestLayout()V
return-void
.end method