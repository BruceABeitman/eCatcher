.class public Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field private a:Z
.field private final b:Landroid/widget/FrameLayout;
.field private c:Lcom/spotify/mobile/android/ui/prettylist/g;
.field private final d:Landroid/widget/AbsListView$LayoutParams;
.field private e:Lcom/spotify/mobile/android/ui/prettylist/i;
.field private f:Landroid/view/View;
.field private g:Landroid/graphics/Rect;
.field private h:Z
.field private i:Z
.field private j:I
.field private k:Landroid/view/View;
.field private l:I
.field private m:[I
.field private n:[I
.field private o:Z
.field private p:Ljava/util/LinkedList;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const v0, 0x1010074
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v1, 0x2
const/4 v3, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/widget/AbsListView$LayoutParams;
invoke-direct {v0, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d:Landroid/widget/AbsListView$LayoutParams;
new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/i;
invoke-direct {v0, p0, v3}, Lcom/spotify/mobile/android/ui/prettylist/i;-><init>(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->e:Lcom/spotify/mobile/android/ui/prettylist/i;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->g:Landroid/graphics/Rect;
new-array v0, v1, [I
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->m:[I
new-array v0, v1, [I
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->n:[I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->p:Ljava/util/LinkedList;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a:Z
new-instance v0, Landroid/widget/FrameLayout;
invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d:Landroid/widget/AbsListView$LayoutParams;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/prettylist/g;-><init>(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
const v1, 0x102000a
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/g;->setId(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/g;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/prettylist/g;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
iput-boolean v3, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a:Z
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d()Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Landroid/view/View;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->e()V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)Z
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f()Z
move-result v0
return v0
.end method
.method private d()Landroid/view/View;
.registers 4
const/4 v2, 0x0
new-instance v0, Landroid/view/View;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/prettylist/StickyListView;)Lcom/spotify/mobile/android/ui/prettylist/i;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->e:Lcom/spotify/mobile/android/ui/prettylist/i;
return-object v0
.end method
.method private e()V
.registers 5
iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->j:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/g;->getFirstVisiblePosition()I
move-result v0
if-nez v0, :cond_36
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I
move-result v0
neg-int v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
move v2, v0
:goto_16
if-eqz v1, :cond_32
int-to-float v0, v2
int-to-float v1, v1
div-float/2addr v0, v1
move v1, v0
:goto_1c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->p:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_22
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/prettylist/h;
invoke-interface {v0, v2, v1}, Lcom/spotify/mobile/android/ui/prettylist/h;->a(IF)V
goto :goto_22
:cond_32
const/4 v0, 0x0
move v1, v0
goto :goto_1c
:cond_35
return-void
:cond_36
move v2, v1
goto :goto_16
.end method
.method private f()Z
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->h:Z
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/g;->getFirstVisiblePosition()I
move-result v0
if-gtz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I
move-result v0
iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->j:I
neg-int v1, v1
if-gt v0, v1, :cond_19
:cond_17
const/4 v0, 0x1
:goto_18
return v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public final a()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
return-object v0
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
:cond_10
if-nez p1, :cond_16
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d()Landroid/view/View;
move-result-object p1
:cond_16
iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->requestLayout()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/prettylist/h;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->p:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->h:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->requestLayout()V
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->j:I
return v0
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->l:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->requestLayout()V
return-void
.end method
.method public final b(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->k:Landroid/view/View;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->requestLayout()V
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->i:Z
return v0
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->i:Z
if-eqz v2, :cond_6
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->g:Landroid/graphics/Rect;
invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->g:Landroid/graphics/Rect;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
float-to-int v3, v3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v4
float-to-int v4, v4
invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_6
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {v2, p1}, Lcom/spotify/mobile/android/ui/prettylist/g;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v2
if-eqz v2, :cond_6
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->o:Z
move v0, v1
goto :goto_6
.end method
.method protected onLayout(ZIIII)V
.registers 14
const/4 v7, -0x1
const/4 v1, 0x1
const/4 v2, 0x0
sub-int v4, p4, p2
sub-int v0, p5, p3
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {v3, v2, v2, v4, v0}, Lcom/spotify/mobile/android/ui/prettylist/g;->layout(IIII)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
if-ne v0, v3, :cond_90
move v0, v1
:goto_17
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;
move-result-object v3
iget-object v5, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
if-ne v3, v5, :cond_92
move v3, v1
:goto_22
if-eqz v0, :cond_35
if-nez v3, :cond_35
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d:Landroid/widget/AbsListView$LayoutParams;
invoke-virtual {p0, v0, v7, v5}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
move v0, v2
:cond_35
if-nez v0, :cond_46
iget-boolean v5, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->h:Z
if-eqz v5, :cond_46
iget-object v5, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
iget-object v6, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I
move-result v6
invoke-virtual {v5, v2, v2, v4, v6}, Landroid/view/View;->layout(IIII)V
:cond_46
iget-object v4, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
if-eqz v4, :cond_4e
iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->h:Z
if-nez v4, :cond_94
:goto_4e
:cond_4e
iput v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->j:I
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f()Z
move-result v1
if-eqz v3, :cond_7d
if-eqz v1, :cond_c3
if-eqz v0, :cond_c3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z
move-result v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d:Landroid/widget/AbsListView$LayoutParams;
invoke-virtual {p0, v2, v7, v3}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
if-eqz v0, :cond_7d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z
move-result v0
if-nez v0, :cond_7d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
:goto_7d
:cond_7d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
if-eqz v0, :cond_85
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->i:Z
if-ne v1, v0, :cond_d4
:cond_85
:goto_85
if-eqz v1, :cond_8f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->j:I
neg-int v1, v1
invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V
:cond_8f
return-void
:cond_90
move v0, v2
goto :goto_17
:cond_92
move v3, v2
goto :goto_22
:cond_94
iget-object v4, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->k:Landroid/view/View;
if-nez v4, :cond_a3
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
iget v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->l:I
sub-int v2, v1, v2
goto :goto_4e
:cond_a3
iget-object v4, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->m:[I
invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->k:Landroid/view/View;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->n:[I
invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->n:[I
aget v4, v4, v1
iget-object v5, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->m:[I
aget v1, v5, v1
sub-int v1, v4, v1
iget v4, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->l:I
sub-int/2addr v1, v4
invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I
move-result v2
goto :goto_4e
:cond_c3
if-nez v1, :cond_7d
if-nez v0, :cond_7d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->removeViewInLayout(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b:Landroid/widget/FrameLayout;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
goto :goto_7d
:cond_d4
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->i:Z
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->e()V
goto :goto_85
.end method
.method protected onMeasure(II)V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/ui/prettylist/g;->measure(II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/g;->getMeasuredWidth()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/prettylist/g;->getMeasuredHeight()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->setMeasuredDimension(II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d:Landroid/widget/AbsListView$LayoutParams;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I
move-result v1
iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->width:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->d:Landroid/widget/AbsListView$LayoutParams;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->f:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->height:I
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 5
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->o:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->c:Lcom/spotify/mobile/android/ui/prettylist/g;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/g;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_a
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
const/4 v2, 0x1
if-eq v1, v2, :cond_18
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
const/4 v2, 0x3
if-ne v1, v2, :cond_1b
:cond_18
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->o:Z
:cond_1b
return v0
:cond_1c
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_a
.end method