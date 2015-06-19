.class public Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;
.super Landroid/widget/ListView;
.source "SourceFile"
.field private a:I
.field private b:Z
.field private c:Z
.field private d:Z
.field private e:Landroid/os/Handler;
.field private f:I
.field private g:Z
.field private h:I
.field private i:I
.field private j:I
.field private k:Lcom/spotify/mobile/android/util/TouchLifecycle;
.field private final l:Lcom/spotify/mobile/android/util/dq;
.field private m:Lcom/spotify/mobile/android/spotlets/artist/view/h;
.field private n:Ljava/lang/Runnable;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v1, -0x1
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->b:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->c:Z
iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->d:Z
iput v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->f:I
iput v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->h:I
iput v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->i:I
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->l:Lcom/spotify/mobile/android/util/dq;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->n:Ljava/lang/Runnable;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->j:I
new-instance v0, Lcom/spotify/mobile/android/util/TouchLifecycle;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->l:Lcom/spotify/mobile/android/util/dq;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/TouchLifecycle;-><init>(Lcom/spotify/mobile/android/util/dq;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->k:Lcom/spotify/mobile/android/util/TouchLifecycle;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->e:Landroid/os/Handler;
if-eqz p2, :cond_59
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v0
sget-object v1, Lcom/spotify/music/d;->J:[I
invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v1
const/4 v0, 0x0
const/4 v2, 0x0
:try_start_50
invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a:I
:try_end_56
.catchall {:try_start_50 .. :try_end_56} :catchall_5a
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
:cond_59
return-void
:catchall_5a
move-exception v0
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
throw v0
.end method
.method static synthetic a(FF)F
.registers 3
sub-float v0, p0, p1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
return v0
.end method
.method private a()I
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;I)V
.registers 4
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v0
add-int/2addr v0, p1
const/16 v1, 0x1f4
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->smoothScrollBy(II)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->g:Z
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;Landroid/view/MotionEvent;)Z
.registers 3
invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->j:I
return v0
.end method
.method private b()Z
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getLastVisiblePosition()I
move-result v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ne v0, v1, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->smoothScrollBy(II)V
return-void
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)I
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v0
return v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a:I
return v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->d:Z
return v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)Z
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->b()Z
move-result v0
return v0
.end method
.method public final a(Z)V
.registers 6
if-nez p1, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->e:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->n:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->e:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->n:Ljava/lang/Runnable;
const-wide/16 v2, 0x14
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_12
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->d:Z
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->h:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getFirstVisiblePosition()I
move-result v3
if-ne v0, v3, :cond_15
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->i:I
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v3
if-eq v0, v3, :cond_81
:cond_15
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getFirstVisiblePosition()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->h:I
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->i:I
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->g:Z
:goto_23
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v0
neg-int v0, v0
iget v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->f:I
if-eq v0, v3, :cond_4f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->m:Lcom/spotify/mobile/android/spotlets/artist/view/h;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->m:Lcom/spotify/mobile/android/spotlets/artist/view/h;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
invoke-interface {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/h;->a(Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;)V
:cond_38
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getFirstVisiblePosition()I
move-result v0
if-nez v0, :cond_bc
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_4f
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v0
neg-int v4, v0
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->f:I
if-gtz v0, :cond_84
iput v4, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->f:I
:goto_4f
:cond_4f
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->b:Z
if-nez v0, :cond_80
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getFirstVisiblePosition()I
move-result v0
if-nez v0, :cond_78
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->b()Z
move-result v0
if-eqz v0, :cond_78
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v0
neg-int v0, v0
if-lez v0, :cond_78
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v0
neg-int v0, v0
iget v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a:I
if-ge v0, v2, :cond_78
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v0
neg-int v0, v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a:I
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->b:Z
:cond_78
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->getFirstVisiblePosition()I
move-result v0
if-eqz v0, :cond_80
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->b:Z
:cond_80
return-void
:cond_81
iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->g:Z
goto :goto_23
:cond_84
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->f:I
iget v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a:I
if-le v0, v3, :cond_b8
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a:I
if-ge v4, v0, :cond_b8
move v0, v1
:goto_8f
iget v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->f:I
iget v5, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a:I
if-ge v3, v5, :cond_ba
iget v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a:I
if-le v4, v3, :cond_ba
move v3, v1
:goto_9a
if-nez v0, :cond_9e
if-eqz v3, :cond_a5
:cond_9e
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->d:Z
if-nez v0, :cond_a5
invoke-virtual {p0, v2, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->smoothScrollBy(II)V
:cond_a5
iput v4, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->f:I
:goto_a7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->e:Landroid/os/Handler;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->n:Ljava/lang/Runnable;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->e:Landroid/os/Handler;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->n:Ljava/lang/Runnable;
const-wide/16 v3, 0x14
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_4f
:cond_b8
move v0, v2
goto :goto_8f
:cond_ba
move v3, v2
goto :goto_9a
:cond_bc
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->f:I
goto :goto_a7
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->k:Lcom/spotify/mobile/android/util/TouchLifecycle;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->a(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method protected onLayout(ZIIII)V
.registers 9
const/4 v2, 0x0
invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->c:Z
if-eqz v0, :cond_14
iget v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a:I
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a()I
move-result v1
add-int/2addr v0, v1
invoke-virtual {p0, v0, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->smoothScrollBy(II)V
iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->c:Z
:cond_14
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 4
const/4 v1, 0x1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
move-result v0
if-nez v0, :cond_f
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a(Z)V
:cond_a
:goto_a
invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
:cond_f
invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
move-result v0
if-eq v0, v1, :cond_1c
invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_a
:cond_1c
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/SnappingListView;->a(Z)V
goto :goto_a
.end method
.method protected overScrollBy(IIIIIIIIZ)Z
.registers 20
const/4 v8, 0x0
move-object v0, p0
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
move/from16 v6, p6
move/from16 v7, p7
move/from16 v9, p9
invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z
move-result v0
return v0
.end method