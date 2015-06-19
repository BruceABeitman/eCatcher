.class  Landroid/support/v7/internal/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Landroid/support/v7/internal/widget/AbsSpinnerICS;
.field private final b:Landroid/util/SparseArray;
.method constructor <init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/support/v7/internal/widget/AbsSpinnerICS;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/b;->b:Landroid/util/SparseArray;
return-void
.end method
.method  a(I)Landroid/view/View;
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/b;->b:Landroid/util/SparseArray;
invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
iget-object v1, p0, Landroid/support/v7/internal/widget/b;->b:Landroid/util/SparseArray;
invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
:cond_f
return-object v0
.end method
.method  a()V
.registers 7
iget-object v2, p0, Landroid/support/v7/internal/widget/b;->b:Landroid/util/SparseArray;
invoke-virtual {v2}, Landroid/util/SparseArray;->size()I
move-result v3
const/4 v0, 0x0
move v1, v0
:goto_8
if-ge v1, v3, :cond_1c
invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_18
iget-object v4, p0, Landroid/support/v7/internal/widget/b;->a:Landroid/support/v7/internal/widget/AbsSpinnerICS;
const/4 v5, 0x1
invoke-static {v4, v0, v5}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/support/v7/internal/widget/AbsSpinnerICS;Landroid/view/View;Z)V
:cond_18
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_1c
invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
return-void
.end method
.method public a(ILandroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/b;->b:Landroid/util/SparseArray;
invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
return-void
.end method