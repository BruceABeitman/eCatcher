.class abstract Landroid/support/v7/internal/widget/l;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field  A:I
.field  B:I
.field  C:J
.field  D:Z
.field private a:I
.field private b:Landroid/view/View;
.field private c:Z
.field private d:Z
.field private e:Landroid/support/v7/internal/widget/q;
.field  k:I
.field  l:I
.field  m:I
.field  n:J
.field  o:J
.field  p:Z
.field  q:I
.field  r:Z
.field  s:Landroid/support/v7/internal/widget/p;
.field  t:Landroid/support/v7/internal/widget/n;
.field  u:Z
.field  v:I
.field  w:J
.field  x:I
.field  y:J
.field  z:I
.method constructor <init>(Landroid/content/Context;I)V
.registers 8
const/4 v4, -0x1
const-wide/high16 v2, -0x8000
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v1, p0, Landroid/support/v7/internal/widget/l;->k:I
iput-wide v2, p0, Landroid/support/v7/internal/widget/l;->n:J
iput-boolean v1, p0, Landroid/support/v7/internal/widget/l;->p:Z
iput-boolean v1, p0, Landroid/support/v7/internal/widget/l;->r:Z
iput v4, p0, Landroid/support/v7/internal/widget/l;->v:I
iput-wide v2, p0, Landroid/support/v7/internal/widget/l;->w:J
iput v4, p0, Landroid/support/v7/internal/widget/l;->x:I
iput-wide v2, p0, Landroid/support/v7/internal/widget/l;->y:J
iput v4, p0, Landroid/support/v7/internal/widget/l;->B:I
iput-wide v2, p0, Landroid/support/v7/internal/widget/l;->C:J
iput-boolean v1, p0, Landroid/support/v7/internal/widget/l;->D:Z
return-void
.end method
.method private a(I)J
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_8
if-gez p1, :cond_b
:cond_8
const-wide/high16 v0, -0x8000
:goto_a
return-wide v0
:cond_b
invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v0
goto :goto_a
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/l;)Landroid/os/Parcelable;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
return-object v0
.end method
.method private a()V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->s:Landroid/support/v7/internal/widget/p;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget v0, p0, Landroid/support/v7/internal/widget/l;->v:I
if-ltz v0, :cond_19
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->b()Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/internal/widget/l;->s:Landroid/support/v7/internal/widget/p;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v2
invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J
invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/p;->a(I)V
goto :goto_4
:cond_19
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->s:Landroid/support/v7/internal/widget/p;
goto :goto_4
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/l;Landroid/os/Parcelable;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/l;->onRestoreInstanceState(Landroid/os/Parcelable;)V
return-void
.end method
.method static synthetic b(Landroid/support/v7/internal/widget/l;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->a()V
return-void
.end method
.method public a(Landroid/support/v7/internal/widget/n;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/l;->t:Landroid/support/v7/internal/widget/n;
return-void
.end method
.method public final a(Landroid/view/View;I)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/internal/widget/l;->t:Landroid/support/v7/internal/widget/n;
if-eqz v2, :cond_14
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/l;->playSoundEffect(I)V
if-eqz p1, :cond_e
invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V
:cond_e
iget-object v1, p0, Landroid/support/v7/internal/widget/l;->t:Landroid/support/v7/internal/widget/n;
invoke-interface {v1, p1, p2}, Landroid/support/v7/internal/widget/n;->a(Landroid/view/View;I)V
:goto_13
return v0
:cond_14
move v0, v1
goto :goto_13
.end method
.method public addView(Landroid/view/View;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "addView(View) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public addView(Landroid/view/View;I)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "addView(View, int) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public abstract b()Landroid/view/View;
.end method
.method final b(I)V
.registers 4
iput p1, p0, Landroid/support/v7/internal/widget/l;->x:I
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/l;->a(I)J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v7/internal/widget/l;->y:J
return-void
.end method
.method public abstract c()Landroid/widget/Adapter;
.end method
.method final c(I)V
.registers 4
iput p1, p0, Landroid/support/v7/internal/widget/l;->v:I
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/l;->a(I)J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v7/internal/widget/l;->w:J
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->p:Z
if-eqz v0, :cond_18
iget v0, p0, Landroid/support/v7/internal/widget/l;->q:I
if-nez v0, :cond_18
if-ltz p1, :cond_18
iput p1, p0, Landroid/support/v7/internal/widget/l;->m:I
iget-wide v0, p0, Landroid/support/v7/internal/widget/l;->w:J
iput-wide v0, p0, Landroid/support/v7/internal/widget/l;->n:J
:cond_18
return-void
.end method
.method protected canAnimate()Z
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z
move-result v0
if-eqz v0, :cond_c
iget v0, p0, Landroid/support/v7/internal/widget/l;->z:I
if-lez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method final d()V
.registers 7
const/16 v5, 0x8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v4
if-eqz v4, :cond_10
invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I
move-result v0
if-nez v0, :cond_5b
:cond_10
move v0, v2
:goto_11
if-nez v0, :cond_5d
move v3, v2
:goto_14
if-eqz v3, :cond_5f
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->d:Z
if-eqz v0, :cond_5f
move v0, v2
:goto_1b
invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V
if-eqz v3, :cond_61
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->c:Z
if-eqz v0, :cond_61
move v0, v2
:goto_25
invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->b:Landroid/view/View;
if-eqz v0, :cond_5a
if-eqz v4, :cond_34
invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_63
:goto_34
:cond_34
if-eqz v2, :cond_69
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->b:Landroid/view/View;
if-eqz v0, :cond_65
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->b:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/l;->setVisibility(I)V
:goto_42
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->u:Z
if-eqz v0, :cond_5a
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->getLeft()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->getTop()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->getRight()I
move-result v4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->getBottom()I
move-result v5
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/l;->onLayout(ZIIII)V
:goto_5a
:cond_5a
return-void
:cond_5b
move v0, v1
goto :goto_11
:cond_5d
move v3, v1
goto :goto_14
:cond_5f
move v0, v1
goto :goto_1b
:cond_61
move v0, v1
goto :goto_25
:cond_63
move v2, v1
goto :goto_34
:cond_65
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/l;->setVisibility(I)V
goto :goto_42
:cond_69
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->b:Landroid/view/View;
if-eqz v0, :cond_72
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->b:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
:cond_72
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/l;->setVisibility(I)V
goto :goto_5a
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->b()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v1
if-nez v1, :cond_14
invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/l;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V
return-void
.end method
.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/l;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
return-void
.end method
.method final e()V
.registers 15
iget v7, p0, Landroid/support/v7/internal/widget/l;->z:I
const/4 v4, 0x0
if-lez v7, :cond_a8
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->p:Z
if-eqz v0, :cond_a6
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/widget/l;->p:Z
iget v8, p0, Landroid/support/v7/internal/widget/l;->z:I
if-eqz v8, :cond_a4
iget-wide v9, p0, Landroid/support/v7/internal/widget/l;->n:J
iget v0, p0, Landroid/support/v7/internal/widget/l;->m:I
const-wide/high16 v1, -0x8000
cmp-long v1, v9, v1
if-eqz v1, :cond_a4
const/4 v1, 0x0
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
add-int/lit8 v1, v8, -0x1
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v2
const-wide/16 v5, 0x64
add-long v11, v2, v5
const/4 v0, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v13
if-eqz v13, :cond_a4
move v2, v1
move v3, v1
:goto_36
:cond_36
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v5
cmp-long v5, v5, v11
if-gtz v5, :cond_a4
invoke-interface {v13, v3}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v5
cmp-long v5, v5, v9
if-nez v5, :cond_7c
:goto_46
if-ltz v3, :cond_a6
if-ne v3, v3, :cond_a6
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/l;->c(I)V
const/4 v4, 0x1
move v0, v4
:goto_4f
if-nez v0, :cond_65
iget v1, p0, Landroid/support/v7/internal/widget/l;->v:I
if-lt v1, v7, :cond_57
add-int/lit8 v1, v7, -0x1
:cond_57
if-gez v1, :cond_5a
const/4 v1, 0x0
:cond_5a
if-gez v1, :cond_5c
:cond_5c
if-ltz v1, :cond_65
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/l;->c(I)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->f()V
const/4 v0, 0x1
:cond_65
:goto_65
if-nez v0, :cond_7b
const/4 v0, -0x1
iput v0, p0, Landroid/support/v7/internal/widget/l;->x:I
const-wide/high16 v0, -0x8000
iput-wide v0, p0, Landroid/support/v7/internal/widget/l;->y:J
const/4 v0, -0x1
iput v0, p0, Landroid/support/v7/internal/widget/l;->v:I
const-wide/high16 v0, -0x8000
iput-wide v0, p0, Landroid/support/v7/internal/widget/l;->w:J
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/widget/l;->p:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->f()V
:cond_7b
return-void
:cond_7c
add-int/lit8 v5, v8, -0x1
if-ne v1, v5, :cond_94
const/4 v5, 0x1
move v6, v5
:goto_82
if-nez v2, :cond_97
const/4 v5, 0x1
:goto_85
if-eqz v6, :cond_89
if-nez v5, :cond_a4
:cond_89
if-nez v5, :cond_8f
if-eqz v0, :cond_99
if-nez v6, :cond_99
:cond_8f
add-int/lit8 v1, v1, 0x1
const/4 v0, 0x0
move v3, v1
goto :goto_36
:cond_94
const/4 v5, 0x0
move v6, v5
goto :goto_82
:cond_97
const/4 v5, 0x0
goto :goto_85
:cond_99
if-nez v6, :cond_9f
if-nez v0, :cond_36
if-nez v5, :cond_36
:cond_9f
add-int/lit8 v2, v2, -0x1
const/4 v0, 0x1
move v3, v2
goto :goto_36
:cond_a4
const/4 v3, -0x1
goto :goto_46
:cond_a6
move v0, v4
goto :goto_4f
:cond_a8
move v0, v4
goto :goto_65
.end method
.method final f()V
.registers 5
iget v0, p0, Landroid/support/v7/internal/widget/l;->x:I
iget v1, p0, Landroid/support/v7/internal/widget/l;->B:I
if-ne v0, v1, :cond_e
iget-wide v0, p0, Landroid/support/v7/internal/widget/l;->y:J
iget-wide v2, p0, Landroid/support/v7/internal/widget/l;->C:J
cmp-long v0, v0, v2
if-eqz v0, :cond_48
:cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->s:Landroid/support/v7/internal/widget/p;
if-eqz v0, :cond_2b
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->r:Z
if-nez v0, :cond_1a
iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->D:Z
if-eqz v0, :cond_49
:cond_1a
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Landroid/support/v7/internal/widget/q;
if-nez v0, :cond_26
new-instance v0, Landroid/support/v7/internal/widget/q;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/q;-><init>(Landroid/support/v7/internal/widget/l;B)V
iput-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Landroid/support/v7/internal/widget/q;
:cond_26
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Landroid/support/v7/internal/widget/q;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/l;->post(Ljava/lang/Runnable;)Z
:goto_2b
:cond_2b
iget v0, p0, Landroid/support/v7/internal/widget/l;->x:I
const/4 v1, -0x1
if-eq v0, v1, :cond_40
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->isShown()Z
move-result v0
if-eqz v0, :cond_40
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->isInTouchMode()Z
move-result v0
if-nez v0, :cond_40
const/4 v0, 0x4
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/l;->sendAccessibilityEvent(I)V
:cond_40
iget v0, p0, Landroid/support/v7/internal/widget/l;->x:I
iput v0, p0, Landroid/support/v7/internal/widget/l;->B:I
iget-wide v0, p0, Landroid/support/v7/internal/widget/l;->y:J
iput-wide v0, p0, Landroid/support/v7/internal/widget/l;->C:J
:cond_48
return-void
:cond_49
invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->a()V
goto :goto_2b
.end method
.method final g()V
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->getChildCount()I
move-result v0
if-lez v0, :cond_2e
iput-boolean v4, p0, Landroid/support/v7/internal/widget/l;->p:Z
iget v0, p0, Landroid/support/v7/internal/widget/l;->a:I
int-to-long v0, v0
iput-wide v0, p0, Landroid/support/v7/internal/widget/l;->o:J
iget v0, p0, Landroid/support/v7/internal/widget/l;->x:I
if-ltz v0, :cond_2f
iget v0, p0, Landroid/support/v7/internal/widget/l;->x:I
iget v1, p0, Landroid/support/v7/internal/widget/l;->k:I
sub-int/2addr v0, v1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/l;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-wide v1, p0, Landroid/support/v7/internal/widget/l;->w:J
iput-wide v1, p0, Landroid/support/v7/internal/widget/l;->n:J
iget v1, p0, Landroid/support/v7/internal/widget/l;->v:I
iput v1, p0, Landroid/support/v7/internal/widget/l;->m:I
if-eqz v0, :cond_2c
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
iput v0, p0, Landroid/support/v7/internal/widget/l;->l:I
:cond_2c
iput v3, p0, Landroid/support/v7/internal/widget/l;->q:I
:goto_2e
:cond_2e
return-void
:cond_2f
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/l;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v1
iget v2, p0, Landroid/support/v7/internal/widget/l;->k:I
if-ltz v2, :cond_5a
iget v2, p0, Landroid/support/v7/internal/widget/l;->k:I
invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I
move-result v3
if-ge v2, v3, :cond_5a
iget v2, p0, Landroid/support/v7/internal/widget/l;->k:I
invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v1
iput-wide v1, p0, Landroid/support/v7/internal/widget/l;->n:J
:goto_4b
iget v1, p0, Landroid/support/v7/internal/widget/l;->k:I
iput v1, p0, Landroid/support/v7/internal/widget/l;->m:I
if-eqz v0, :cond_57
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
iput v0, p0, Landroid/support/v7/internal/widget/l;->l:I
:cond_57
iput v4, p0, Landroid/support/v7/internal/widget/l;->q:I
goto :goto_2e
:cond_5a
const-wide/16 v1, -0x1
iput-wide v1, p0, Landroid/support/v7/internal/widget/l;->n:J
goto :goto_4b
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Landroid/support/v7/internal/widget/q;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/l;->removeCallbacks(Ljava/lang/Runnable;)Z
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->getHeight()I
move-result v0
iput v0, p0, Landroid/support/v7/internal/widget/l;->a:I
return-void
.end method
.method public removeAllViews()V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "removeAllViews() is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public removeView(Landroid/view/View;)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "removeView(View) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public removeViewAt(I)V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "removeViewAt(int) is not supported in AdapterView"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setFocusable(Z)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v0
if-nez v0, :cond_1d
:cond_e
move v0, v2
:goto_f
iput-boolean p1, p0, Landroid/support/v7/internal/widget/l;->c:Z
if-nez p1, :cond_15
iput-boolean v1, p0, Landroid/support/v7/internal/widget/l;->d:Z
:cond_15
if-eqz p1, :cond_1f
if-nez v0, :cond_1f
:goto_19
invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V
return-void
:cond_1d
move v0, v1
goto :goto_f
:cond_1f
move v2, v1
goto :goto_19
.end method
.method public setFocusableInTouchMode(Z)V
.registers 5
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v0
if-nez v0, :cond_1d
:cond_e
move v0, v2
:goto_f
iput-boolean p1, p0, Landroid/support/v7/internal/widget/l;->d:Z
if-eqz p1, :cond_15
iput-boolean v2, p0, Landroid/support/v7/internal/widget/l;->c:Z
:cond_15
if-eqz p1, :cond_1f
if-nez v0, :cond_1f
:goto_19
invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V
return-void
:cond_1d
move v0, v1
goto :goto_f
:cond_1f
move v2, v1
goto :goto_19
.end method
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 4
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method