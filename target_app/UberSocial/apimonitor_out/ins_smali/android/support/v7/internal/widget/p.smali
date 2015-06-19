.class  Landroid/support/v7/internal/widget/p;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:Landroid/support/v7/internal/widget/n;
.field private b:Landroid/os/Parcelable;
.method constructor <init>(Landroid/support/v7/internal/widget/n;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;
return-void
.end method
.method public a()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;
return-void
.end method
.method public onChanged()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/internal/widget/n;->A:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iget v1, v1, Landroid/support/v7/internal/widget/n;->F:I
iput v1, v0, Landroid/support/v7/internal/widget/n;->G:I
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I
move-result v1
iput v1, v0, Landroid/support/v7/internal/widget/n;->F:I
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;
if-eqz v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iget v0, v0, Landroid/support/v7/internal/widget/n;->G:I
if-nez v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iget v0, v0, Landroid/support/v7/internal/widget/n;->F:I
if-lez v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/n;->a(Landroid/support/v7/internal/widget/n;Landroid/os/Parcelable;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;
:goto_41
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/n;->q()V
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/n;->requestLayout()V
return-void
:cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/n;->v()V
goto :goto_41
.end method
.method public onInvalidated()V
.registers 7
const-wide/high16 v4, -0x8000
const/4 v3, 0x0
const/4 v2, -0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/internal/widget/n;->A:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-static {v0}, Landroid/support/v7/internal/widget/n;->a(Landroid/support/v7/internal/widget/n;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/p;->b:Landroid/os/Parcelable;
:cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iget v1, v1, Landroid/support/v7/internal/widget/n;->F:I
iput v1, v0, Landroid/support/v7/internal/widget/n;->G:I
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iput v3, v0, Landroid/support/v7/internal/widget/n;->F:I
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iput v2, v0, Landroid/support/v7/internal/widget/n;->D:I
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iput-wide v4, v0, Landroid/support/v7/internal/widget/n;->E:J
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iput v2, v0, Landroid/support/v7/internal/widget/n;->B:I
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iput-wide v4, v0, Landroid/support/v7/internal/widget/n;->C:J
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
iput-boolean v3, v0, Landroid/support/v7/internal/widget/n;->r:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/n;->q()V
iget-object v0, p0, Landroid/support/v7/internal/widget/p;->a:Landroid/support/v7/internal/widget/n;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/n;->requestLayout()V
return-void
.end method