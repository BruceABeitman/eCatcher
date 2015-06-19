.class final Landroid/support/v7/internal/widget/m;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:Landroid/support/v7/internal/widget/l;
.field private b:Landroid/os/Parcelable;
.method constructor <init>(Landroid/support/v7/internal/widget/l;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;
return-void
.end method
.method public final onChanged()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/internal/widget/l;->u:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iget v1, v1, Landroid/support/v7/internal/widget/l;->z:I
iput v1, v0, Landroid/support/v7/internal/widget/l;->A:I
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I
move-result v1
iput v1, v0, Landroid/support/v7/internal/widget/l;->z:I
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;
if-eqz v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iget v0, v0, Landroid/support/v7/internal/widget/l;->A:I
if-nez v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iget v0, v0, Landroid/support/v7/internal/widget/l;->z:I
if-lez v0, :cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/l;->a(Landroid/support/v7/internal/widget/l;Landroid/os/Parcelable;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;
:goto_41
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->d()V
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->requestLayout()V
return-void
:cond_4c
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->g()V
goto :goto_41
.end method
.method public final onInvalidated()V
.registers 7
const-wide/high16 v4, -0x8000
const/4 v3, 0x0
const/4 v2, -0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/internal/widget/l;->u:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-static {v0}, Landroid/support/v7/internal/widget/l;->a(Landroid/support/v7/internal/widget/l;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/m;->b:Landroid/os/Parcelable;
:cond_1d
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iget v1, v1, Landroid/support/v7/internal/widget/l;->z:I
iput v1, v0, Landroid/support/v7/internal/widget/l;->A:I
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iput v3, v0, Landroid/support/v7/internal/widget/l;->z:I
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iput v2, v0, Landroid/support/v7/internal/widget/l;->x:I
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iput-wide v4, v0, Landroid/support/v7/internal/widget/l;->y:J
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iput v2, v0, Landroid/support/v7/internal/widget/l;->v:I
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iput-wide v4, v0, Landroid/support/v7/internal/widget/l;->w:J
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
iput-boolean v3, v0, Landroid/support/v7/internal/widget/l;->p:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->d()V
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/l;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->requestLayout()V
return-void
.end method