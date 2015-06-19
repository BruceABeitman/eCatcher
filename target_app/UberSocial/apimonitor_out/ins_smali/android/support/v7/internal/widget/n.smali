.class abstract Landroid/support/v7/internal/widget/n;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field public static final H:I = -0x1
.field public static final I:J = -0x8000000000000000L
.field static final k:I = -0x1
.field static final l:I = -0x2
.field static final t:I = 0x0
.field static final u:I = 0x1
.field static final v:I = 0x64
.field  A:Z
.field  B:I
.field  C:J
.field  D:I
.field  E:J
.field  F:I
.field  G:I
.field  J:I
.field  K:J
.field  L:Z
.field private a:I
.field private b:Landroid/view/View;
.field private c:Z
.field private d:Z
.field private e:Landroid/support/v7/internal/widget/u;
.field  m:I
.field  n:I
.field  o:I
.field  p:J
.field  q:J
.field  r:Z
.field  s:I
.field  w:Z
.field  x:Landroid/support/v7/internal/widget/t;
.field  y:Landroid/support/v7/internal/widget/q;
.field  z:Landroid/support/v7/internal/widget/s;
.method constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, -0x1
const-wide/high16 v1, -0x8000
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V
iput v0, p0, Landroid/support/v7/internal/widget/n;->m:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->p:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->r:Z
iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->w:Z
iput v3, p0, Landroid/support/v7/internal/widget/n;->B:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->C:J
iput v3, p0, Landroid/support/v7/internal/widget/n;->D:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->E:J
iput v3, p0, Landroid/support/v7/internal/widget/n;->J:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->K:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->L:Z
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
const/4 v3, -0x1
const-wide/high16 v1, -0x8000
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v0, p0, Landroid/support/v7/internal/widget/n;->m:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->p:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->r:Z
iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->w:Z
iput v3, p0, Landroid/support/v7/internal/widget/n;->B:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->C:J
iput v3, p0, Landroid/support/v7/internal/widget/n;->D:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->E:J
iput v3, p0, Landroid/support/v7/internal/widget/n;->J:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->K:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->L:Z
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v3, -0x1
const-wide/high16 v1, -0x8000
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v0, p0, Landroid/support/v7/internal/widget/n;->m:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->p:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->r:Z
iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->w:Z
iput v3, p0, Landroid/support/v7/internal/widget/n;->B:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->C:J
iput v3, p0, Landroid/support/v7/internal/widget/n;->D:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->E:J
iput v3, p0, Landroid/support/v7/internal/widget/n;->J:I
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->K:J
iput-boolean v0, p0, Landroid/support/v7/internal/widget/n;->L:Z
return-void
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/n;)Landroid/os/Parcelable;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
return-object v0
.end method
.method private a()V
.registers 7
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->x:Landroid/support/v7/internal/widget/t;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->j()I
move-result v3
if-ltz v3, :cond_1e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->c()Landroid/view/View;
move-result-object v2
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->x:Landroid/support/v7/internal/widget/t;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v1
invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v4
move-object v1, p0
invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/t;->a(Landroid/support/v7/internal/widget/n;Landroid/view/View;IJ)V
goto :goto_4
:cond_1e
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->x:Landroid/support/v7/internal/widget/t;
invoke-interface {v0, p0}, Landroid/support/v7/internal/widget/t;->a(Landroid/support/v7/internal/widget/n;)V
goto :goto_4
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/n;Landroid/os/Parcelable;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/n;->onRestoreInstanceState(Landroid/os/Parcelable;)V
return-void
.end method
.method private a(Z)V
.registers 8
const/16 v2, 0x8
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->p()Z
move-result v0
if-eqz v0, :cond_a
move p1, v1
:cond_a
if-eqz p1, :cond_35
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->b:Landroid/view/View;
if-eqz v0, :cond_31
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->b:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/n;->setVisibility(I)V
:goto_18
iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->A:Z
if-eqz v0, :cond_30
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getLeft()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getTop()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getRight()I
move-result v4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getBottom()I
move-result v5
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/n;->onLayout(ZIIII)V
:goto_30
:cond_30
return-void
:cond_31
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/n;->setVisibility(I)V
goto :goto_18
:cond_35
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->b:Landroid/view/View;
if-eqz v0, :cond_3e
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->b:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:cond_3e
invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/n;->setVisibility(I)V
goto :goto_30
.end method
.method static synthetic b(Landroid/support/v7/internal/widget/n;)V
.registers 1
invoke-direct {p0}, Landroid/support/v7/internal/widget/n;->a()V
return-void
.end method
.method public abstract a(I)V
.end method
.method public a(Landroid/support/v7/internal/widget/q;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/n;->y:Landroid/support/v7/internal/widget/q;
return-void
.end method
.method public a(Landroid/support/v7/internal/widget/s;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->isLongClickable()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->setLongClickable(Z)V
:cond_a
iput-object p1, p0, Landroid/support/v7/internal/widget/n;->z:Landroid/support/v7/internal/widget/s;
return-void
.end method
.method public a(Landroid/support/v7/internal/widget/t;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/n;->x:Landroid/support/v7/internal/widget/t;
return-void
.end method
.method public abstract a(Landroid/widget/Adapter;)V
.end method
.method public a(Landroid/view/View;IJ)Z
.registers 12
const/4 v6, 0x1
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/internal/widget/n;->y:Landroid/support/v7/internal/widget/q;
if-eqz v1, :cond_18
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->playSoundEffect(I)V
if-eqz p1, :cond_e
invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V
:cond_e
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->y:Landroid/support/v7/internal/widget/q;
move-object v1, p0
move-object v2, p1
move v3, p2
move-wide v4, p3
invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/q;->a(Landroid/support/v7/internal/widget/n;Landroid/view/View;IJ)V
move v0, v6
:cond_18
return v0
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
.method public b(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_8
if-gez p1, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
goto :goto_9
.end method
.method public c(Landroid/view/View;)I
.registers 6
const/4 v1, -0x1
:goto_1
:try_start_1
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
:try_end_a
.catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_a} :catch_f
move-result v2
if-nez v2, :cond_12
move-object p1, v0
goto :goto_1
:catch_f
move-exception v0
move v0, v1
:goto_11
return v0
:cond_12
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getChildCount()I
move-result v2
const/4 v0, 0x0
:goto_17
if-ge v0, v2, :cond_2a
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_27
iget v1, p0, Landroid/support/v7/internal/widget/n;->m:I
add-int/2addr v0, v1
goto :goto_11
:cond_27
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_2a
move v0, v1
goto :goto_11
.end method
.method public c(I)J
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
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
.method public abstract c()Landroid/view/View;
.end method
.method protected canAnimate()Z
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z
move-result v0
if-eqz v0, :cond_c
iget v0, p0, Landroid/support/v7/internal/widget/n;->F:I
if-lez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method  d(IZ)I
.registers 3
return p1
.end method
.method  d(I)V
.registers 4
iput p1, p0, Landroid/support/v7/internal/widget/n;->D:I
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/n;->c(I)J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->E:J
return-void
.end method
.method public d(Landroid/view/View;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/n;->b:Landroid/view/View;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_13
:cond_e
const/4 v0, 0x1
:goto_f
invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/n;->a(Z)V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->c()Landroid/view/View;
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
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/n;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V
return-void
.end method
.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/n;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
return-void
.end method
.method public e()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/n;->F:I
return v0
.end method
.method  e(I)V
.registers 4
iput p1, p0, Landroid/support/v7/internal/widget/n;->B:I
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/n;->c(I)J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->C:J
iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->r:Z
if-eqz v0, :cond_18
iget v0, p0, Landroid/support/v7/internal/widget/n;->s:I
if-nez v0, :cond_18
if-ltz p1, :cond_18
iput p1, p0, Landroid/support/v7/internal/widget/n;->o:I
iget-wide v0, p0, Landroid/support/v7/internal/widget/n;->C:J
iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->p:J
:cond_18
return-void
.end method
.method public abstract f()Landroid/widget/Adapter;
.end method
.method public final g()Landroid/support/v7/internal/widget/q;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->y:Landroid/support/v7/internal/widget/q;
return-object v0
.end method
.method public final h()Landroid/support/v7/internal/widget/s;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->z:Landroid/support/v7/internal/widget/s;
return-object v0
.end method
.method public final i()Landroid/support/v7/internal/widget/t;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->x:Landroid/support/v7/internal/widget/t;
return-object v0
.end method
.method public j()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/n;->B:I
return v0
.end method
.method public k()J
.registers 3
iget-wide v0, p0, Landroid/support/v7/internal/widget/n;->C:J
return-wide v0
.end method
.method public l()Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->j()I
move-result v1
if-eqz v0, :cond_17
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v2
if-lez v2, :cond_17
if-ltz v1, :cond_17
invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
:goto_16
return-object v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public m()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/n;->m:I
return v0
.end method
.method public n()I
.registers 3
iget v0, p0, Landroid/support/v7/internal/widget/n;->m:I
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getChildCount()I
move-result v1
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x1
return v0
.end method
.method public o()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->b:Landroid/view/View;
return-object v0
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->e:Landroid/support/v7/internal/widget/u;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->removeCallbacks(Ljava/lang/Runnable;)Z
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getHeight()I
move-result v0
iput v0, p0, Landroid/support/v7/internal/widget/n;->a:I
return-void
.end method
.method  p()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  q()V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v4
if-eqz v4, :cond_e
invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I
move-result v0
if-nez v0, :cond_3d
:cond_e
move v0, v1
:goto_f
if-eqz v0, :cond_17
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->p()Z
move-result v0
if-eqz v0, :cond_3f
:cond_17
move v3, v1
:goto_18
if-eqz v3, :cond_41
iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->d:Z
if-eqz v0, :cond_41
move v0, v1
:goto_1f
invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V
if-eqz v3, :cond_43
iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->c:Z
if-eqz v0, :cond_43
move v0, v1
:goto_29
invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->b:Landroid/view/View;
if-eqz v0, :cond_3c
if-eqz v4, :cond_38
invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_39
:cond_38
move v2, v1
:cond_39
invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/n;->a(Z)V
:cond_3c
return-void
:cond_3d
move v0, v2
goto :goto_f
:cond_3f
move v3, v2
goto :goto_18
:cond_41
move v0, v2
goto :goto_1f
:cond_43
move v0, v2
goto :goto_29
.end method
.method  r()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->x:Landroid/support/v7/internal/widget/t;
if-eqz v0, :cond_1d
iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->w:Z
if-nez v0, :cond_c
iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->L:Z
if-eqz v0, :cond_33
:cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->e:Landroid/support/v7/internal/widget/u;
if-nez v0, :cond_18
new-instance v0, Landroid/support/v7/internal/widget/u;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/u;-><init>(Landroid/support/v7/internal/widget/n;Landroid/support/v7/internal/widget/n$1;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/n;->e:Landroid/support/v7/internal/widget/u;
:cond_18
iget-object v0, p0, Landroid/support/v7/internal/widget/n;->e:Landroid/support/v7/internal/widget/u;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->post(Ljava/lang/Runnable;)Z
:goto_1d
:cond_1d
iget v0, p0, Landroid/support/v7/internal/widget/n;->D:I
const/4 v1, -0x1
if-eq v0, v1, :cond_32
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->isShown()Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->isInTouchMode()Z
move-result v0
if-nez v0, :cond_32
const/4 v0, 0x4
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->sendAccessibilityEvent(I)V
:cond_32
return-void
:cond_33
invoke-direct {p0}, Landroid/support/v7/internal/widget/n;->a()V
goto :goto_1d
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
.method  s()V
.registers 9
const-wide/high16 v6, -0x8000
const/4 v5, -0x1
const/4 v2, 0x1
const/4 v1, 0x0
iget v4, p0, Landroid/support/v7/internal/widget/n;->F:I
if-lez v4, :cond_55
iget-boolean v0, p0, Landroid/support/v7/internal/widget/n;->r:Z
if-eqz v0, :cond_53
iput-boolean v1, p0, Landroid/support/v7/internal/widget/n;->r:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->u()I
move-result v0
if-ltz v0, :cond_53
invoke-virtual {p0, v0, v2}, Landroid/support/v7/internal/widget/n;->d(IZ)I
move-result v3
if-ne v3, v0, :cond_53
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->e(I)V
move v3, v2
:goto_1f
if-nez v3, :cond_4f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->j()I
move-result v0
if-lt v0, v4, :cond_29
add-int/lit8 v0, v4, -0x1
:cond_29
if-gez v0, :cond_2c
move v0, v1
:cond_2c
invoke-virtual {p0, v0, v2}, Landroid/support/v7/internal/widget/n;->d(IZ)I
move-result v4
if-gez v4, :cond_51
invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/n;->d(IZ)I
move-result v0
:goto_36
if-ltz v0, :cond_4f
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->e(I)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->t()V
move v0, v2
:goto_3f
if-nez v0, :cond_4e
iput v5, p0, Landroid/support/v7/internal/widget/n;->D:I
iput-wide v6, p0, Landroid/support/v7/internal/widget/n;->E:J
iput v5, p0, Landroid/support/v7/internal/widget/n;->B:I
iput-wide v6, p0, Landroid/support/v7/internal/widget/n;->C:J
iput-boolean v1, p0, Landroid/support/v7/internal/widget/n;->r:Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->t()V
:cond_4e
return-void
:cond_4f
move v0, v3
goto :goto_3f
:cond_51
move v0, v4
goto :goto_36
:cond_53
move v3, v1
goto :goto_1f
:cond_55
move v0, v1
goto :goto_3f
.end method
.method public setFocusable(Z)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v0
if-nez v0, :cond_23
:cond_e
move v0, v2
:goto_f
iput-boolean p1, p0, Landroid/support/v7/internal/widget/n;->c:Z
if-nez p1, :cond_15
iput-boolean v1, p0, Landroid/support/v7/internal/widget/n;->d:Z
:cond_15
if-eqz p1, :cond_25
if-eqz v0, :cond_1f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->p()Z
move-result v0
if-eqz v0, :cond_25
:goto_1f
:cond_1f
invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V
return-void
:cond_23
move v0, v1
goto :goto_f
:cond_25
move v2, v1
goto :goto_1f
.end method
.method public setFocusableInTouchMode(Z)V
.registers 5
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I
move-result v0
if-nez v0, :cond_23
:cond_e
move v0, v2
:goto_f
iput-boolean p1, p0, Landroid/support/v7/internal/widget/n;->d:Z
if-eqz p1, :cond_15
iput-boolean v2, p0, Landroid/support/v7/internal/widget/n;->c:Z
:cond_15
if-eqz p1, :cond_25
if-eqz v0, :cond_1f
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->p()Z
move-result v0
if-eqz v0, :cond_25
:goto_1f
:cond_1f
invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V
return-void
:cond_23
move v0, v1
goto :goto_f
:cond_25
move v2, v1
goto :goto_1f
.end method
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 4
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method  t()V
.registers 5
iget v0, p0, Landroid/support/v7/internal/widget/n;->D:I
iget v1, p0, Landroid/support/v7/internal/widget/n;->J:I
if-ne v0, v1, :cond_e
iget-wide v0, p0, Landroid/support/v7/internal/widget/n;->E:J
iget-wide v2, p0, Landroid/support/v7/internal/widget/n;->K:J
cmp-long v0, v0, v2
if-eqz v0, :cond_19
:cond_e
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->r()V
iget v0, p0, Landroid/support/v7/internal/widget/n;->D:I
iput v0, p0, Landroid/support/v7/internal/widget/n;->J:I
iget-wide v0, p0, Landroid/support/v7/internal/widget/n;->E:J
iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->K:J
:cond_19
return-void
.end method
.method  u()I
.registers 16
const/4 v2, 0x1
const/4 v6, -0x1
const/4 v1, 0x0
iget v9, p0, Landroid/support/v7/internal/widget/n;->F:I
if-nez v9, :cond_9
move v5, v6
:goto_8
:cond_8
return v5
:cond_9
iget-wide v10, p0, Landroid/support/v7/internal/widget/n;->p:J
iget v0, p0, Landroid/support/v7/internal/widget/n;->o:I
const-wide/high16 v3, -0x8000
cmp-long v3, v10, v3
if-nez v3, :cond_15
move v5, v6
goto :goto_8
:cond_15
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v0
add-int/lit8 v3, v9, -0x1
invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v3
const-wide/16 v7, 0x64
add-long v12, v3, v7
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v14
if-nez v14, :cond_68
move v5, v6
goto :goto_8
:cond_2f
if-nez v7, :cond_35
if-eqz v0, :cond_5c
if-nez v8, :cond_5c
:cond_35
add-int/lit8 v0, v3, 0x1
move v3, v0
move v5, v0
move v0, v1
:goto_3a
:cond_3a
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v7
cmp-long v7, v7, v12
if-gtz v7, :cond_56
invoke-interface {v14, v5}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v7
cmp-long v7, v7, v10
if-eqz v7, :cond_8
add-int/lit8 v7, v9, -0x1
if-ne v3, v7, :cond_58
move v8, v2
:goto_4f
if-nez v4, :cond_5a
move v7, v2
:goto_52
if-eqz v8, :cond_2f
if-eqz v7, :cond_2f
:cond_56
move v5, v6
goto :goto_8
:cond_58
move v8, v1
goto :goto_4f
:cond_5a
move v7, v1
goto :goto_52
:cond_5c
if-nez v8, :cond_62
if-nez v0, :cond_3a
if-nez v7, :cond_3a
:cond_62
add-int/lit8 v0, v4, -0x1
move v4, v0
move v5, v0
move v0, v2
goto :goto_3a
:cond_68
move v3, v0
move v4, v0
move v5, v0
move v0, v1
goto :goto_3a
.end method
.method  v()V
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->getChildCount()I
move-result v0
if-lez v0, :cond_2e
iput-boolean v4, p0, Landroid/support/v7/internal/widget/n;->r:Z
iget v0, p0, Landroid/support/v7/internal/widget/n;->a:I
int-to-long v0, v0
iput-wide v0, p0, Landroid/support/v7/internal/widget/n;->q:J
iget v0, p0, Landroid/support/v7/internal/widget/n;->D:I
if-ltz v0, :cond_2f
iget v0, p0, Landroid/support/v7/internal/widget/n;->D:I
iget v1, p0, Landroid/support/v7/internal/widget/n;->m:I
sub-int/2addr v0, v1
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/n;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-wide v1, p0, Landroid/support/v7/internal/widget/n;->C:J
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->p:J
iget v1, p0, Landroid/support/v7/internal/widget/n;->B:I
iput v1, p0, Landroid/support/v7/internal/widget/n;->o:I
if-eqz v0, :cond_2c
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
iput v0, p0, Landroid/support/v7/internal/widget/n;->n:I
:cond_2c
iput v3, p0, Landroid/support/v7/internal/widget/n;->s:I
:goto_2e
:cond_2e
return-void
:cond_2f
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/n;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;
move-result-object v1
iget v2, p0, Landroid/support/v7/internal/widget/n;->m:I
if-ltz v2, :cond_5a
iget v2, p0, Landroid/support/v7/internal/widget/n;->m:I
invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I
move-result v3
if-ge v2, v3, :cond_5a
iget v2, p0, Landroid/support/v7/internal/widget/n;->m:I
invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J
move-result-wide v1
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->p:J
:goto_4b
iget v1, p0, Landroid/support/v7/internal/widget/n;->m:I
iput v1, p0, Landroid/support/v7/internal/widget/n;->o:I
if-eqz v0, :cond_57
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
iput v0, p0, Landroid/support/v7/internal/widget/n;->n:I
:cond_57
iput v4, p0, Landroid/support/v7/internal/widget/n;->s:I
goto :goto_2e
:cond_5a
const-wide/16 v1, -0x1
iput-wide v1, p0, Landroid/support/v7/internal/widget/n;->p:J
goto :goto_4b
.end method