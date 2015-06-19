.class abstract Landroid/support/v7/internal/widget/AbsSpinnerICS;
.super Landroid/support/v7/internal/widget/l;
.source "SourceFile"
.field private E:Landroid/database/DataSetObserver;
.field  a:Landroid/widget/SpinnerAdapter;
.field  b:I
.field  c:I
.field  d:Z
.field  e:I
.field  f:I
.field  g:I
.field  h:I
.field final i:Landroid/graphics/Rect;
.field final j:Landroid/support/v7/internal/widget/b;
.method constructor <init>(Landroid/content/Context;I)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/l;-><init>(Landroid/content/Context;I)V
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e:I
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->f:I
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->g:I
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->h:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
new-instance v0, Landroid/support/v7/internal/widget/b;
invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/b;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerICS;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/b;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setFocusable(Z)V
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setWillNotDraw(Z)V
return-void
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/AbsSpinnerICS;Landroid/view/View;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->removeDetachedView(Landroid/view/View;Z)V
return-void
.end method
.method final a()V
.registers 4
const/4 v0, 0x0
const/4 v2, -0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->u:Z
iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->p:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->removeAllViewsInLayout()V
iput v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->B:I
const-wide/high16 v0, -0x8000
iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->C:J
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->b(I)V
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->c(I)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->invalidate()V
return-void
.end method
.method public final a(I)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->c(I)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->invalidate()V
return-void
.end method
.method public a(Landroid/widget/SpinnerAdapter;)V
.registers 5
const/4 v0, -0x1
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
if-eqz v1, :cond_f
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->E:Landroid/database/DataSetObserver;
invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a()V
:cond_f
iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->B:I
const-wide/high16 v1, -0x8000
iput-wide v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->C:J
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
if-eqz v1, :cond_4e
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->z:I
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->A:I
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v1
iput v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->z:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d()V
new-instance v1, Landroid/support/v7/internal/widget/m;
invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/m;-><init>(Landroid/support/v7/internal/widget/l;)V
iput-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->E:Landroid/database/DataSetObserver;
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->E:Landroid/database/DataSetObserver;
invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->z:I
if-lez v1, :cond_3d
const/4 v0, 0x0
:cond_3d
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->b(I)V
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->c(I)V
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->z:I
if-nez v0, :cond_4a
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->f()V
:cond_4a
:goto_4a
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V
return-void
:cond_4e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a()V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->f()V
goto :goto_4a
.end method
.method public final b()Landroid/view/View;
.registers 3
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->z:I
if-lez v0, :cond_12
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->x:I
if-ltz v0, :cond_12
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->x:I
iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->k:I
sub-int/2addr v0, v1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;
move-result-object v0
:goto_11
return-object v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final bridge synthetic c()Landroid/widget/Adapter;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
return-object v0
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
const/4 v1, -0x1
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
return-object v0
.end method
.method protected onMeasure(II)V
.registers 12
const/4 v5, 0x1
const/4 v4, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v6
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingLeft()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingTop()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingRight()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getPaddingBottom()I
move-result v3
iget-object v7, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v8, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e:I
if-le v0, v8, :cond_cf
:goto_1c
iput v0, v7, Landroid/graphics/Rect;->left:I
iget-object v7, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->f:I
if-le v1, v0, :cond_d3
move v0, v1
:goto_25
iput v0, v7, Landroid/graphics/Rect;->top:I
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->g:I
if-le v2, v0, :cond_d7
move v0, v2
:goto_2e
iput v0, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->h:I
if-le v3, v0, :cond_db
move v0, v3
:goto_37
iput v0, v1, Landroid/graphics/Rect;->bottom:I
iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->u:Z
if-eqz v0, :cond_40
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e()V
:cond_40
iget v1, p0, Landroid/support/v7/internal/widget/l;->v:I
if-ltz v1, :cond_df
iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
if-eqz v0, :cond_df
iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v0
if-ge v1, v0, :cond_df
iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/b;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/b;->a(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_5f
iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;
const/4 v2, 0x0
invoke-interface {v0, v1, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:cond_5f
if-eqz v0, :cond_66
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/b;
invoke-virtual {v2, v1, v0}, Landroid/support/v7/internal/widget/b;->a(ILandroid/view/View;)V
:cond_66
if-eqz v0, :cond_df
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-nez v1, :cond_79
iput-boolean v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iput-boolean v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d:Z
:cond_79
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->measureChild(Landroid/view/View;II)V
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
add-int/2addr v1, v2
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
add-int/2addr v1, v2
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v0, v2
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v0, v2
move v2, v4
:goto_99
if-eqz v2, :cond_af
iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
add-int/2addr v1, v2
if-nez v6, :cond_af
iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->i:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v0, v2
:cond_af
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSuggestedMinimumHeight()I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getSuggestedMinimumWidth()I
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {v1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resolveSize(II)I
move-result v1
invoke-static {v0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->resolveSize(II)I
move-result v0
invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->setMeasuredDimension(II)V
iput p2, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->b:I
iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->c:I
return-void
:cond_cf
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->e:I
goto/16 :goto_1c
:cond_d3
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->f:I
goto/16 :goto_25
:cond_d7
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->g:I
goto/16 :goto_2e
:cond_db
iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->h:I
goto/16 :goto_37
:cond_df
move v2, v5
move v0, v4
move v1, v4
goto :goto_99
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 7
const/4 v4, 0x1
check-cast p1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;
invoke-virtual {p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/support/v7/internal/widget/l;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget-wide v0, p1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->a:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-ltz v0, :cond_24
iput-boolean v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->u:Z
iput-boolean v4, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->p:Z
iget-wide v0, p1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->a:J
iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->n:J
iget v0, p1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->b:I
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->m:I
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->q:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->requestLayout()V
:cond_24
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 7
invoke-super {p0}, Landroid/support/v7/internal/widget/l;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;
invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;-><init>(Landroid/os/Parcelable;)V
iget-wide v2, p0, Landroid/support/v7/internal/widget/l;->w:J
iput-wide v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->a:J
iget-wide v2, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->a:J
const-wide/16 v4, 0x0
cmp-long v0, v2, v4
if-ltz v0, :cond_1a
iget v0, p0, Landroid/support/v7/internal/widget/l;->v:I
iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->b:I
:goto_19
return-object v1
:cond_1a
const/4 v0, -0x1
iput v0, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS$SavedState;->b:I
goto :goto_19
.end method
.method public requestLayout()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->d:Z
if-nez v0, :cond_7
invoke-super {p0}, Landroid/support/v7/internal/widget/l;->requestLayout()V
:cond_7
return-void
.end method