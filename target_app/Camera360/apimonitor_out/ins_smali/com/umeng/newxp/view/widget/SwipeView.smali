.class public Lcom/umeng/newxp/view/widget/SwipeView;
.super Landroid/widget/HorizontalScrollView;
.source "SwipeView.java"
.field private static b:I
.field protected a:Z
.field private c:Landroid/widget/LinearLayout;
.field private d:Landroid/content/Context;
.field private e:I
.field private f:I
.field private g:I
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:I
.field private l:I
.field private m:Lcom/umeng/newxp/view/widget/SwipeView$a;
.field private n:Lcom/umeng/newxp/view/widget/SwipeView$b;
.field private o:Landroid/view/View$OnTouchListener;
.field private p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
.field private q:Z
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x3c
sput v0, Lcom/umeng/newxp/view/widget/SwipeView;->b:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;
iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->q:Z
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;
iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->q:Z
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;
iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->q:Z
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;
invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->a()V
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/view/widget/SwipeView;)Landroid/view/View$OnTouchListener;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->o:Landroid/view/View$OnTouchListener;
return-object v0
.end method
.method private a()V
.registers 5
const/4 v3, -0x1
const/4 v2, 0x0
const-string/jumbo v0, "uk.co.jasonfry.android.tools.ui.SwipeView"
const-string/jumbo v1, "Initialising SwipeView"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-super {p0, v0, v3, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->setSmoothScrollingEnabled(Z)V
invoke-virtual {p0, v2}, Lcom/umeng/newxp/view/widget/SwipeView;->setHorizontalFadingEdgeEnabled(Z)V
invoke-virtual {p0, v2}, Lcom/umeng/newxp/view/widget/SwipeView;->setHorizontalScrollBarEnabled(Z)V
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;
const-string/jumbo v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v0
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->e:I
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->e:I
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
iput v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
new-instance v0, Lcom/umeng/newxp/view/widget/SwipeView$b;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/view/widget/SwipeView$b;-><init>(Lcom/umeng/newxp/view/widget/SwipeView;Lcom/umeng/newxp/view/widget/SwipeView$b;)V
iput-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->n:Lcom/umeng/newxp/view/widget/SwipeView$b;
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->n:Lcom/umeng/newxp/view/widget/SwipeView$b;
invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
.end method
.method private a(IZ)V
.registers 6
const/4 v0, 0x0
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageCount()I
move-result v2
if-lt p1, v2, :cond_38
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageCount()I
move-result v2
if-lez v2, :cond_38
add-int/lit8 p1, p1, -0x1
:cond_11
:goto_11
if-eqz p2, :cond_3c
iget v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
mul-int/2addr v2, p1
invoke-virtual {p0, v2, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->smoothScrollTo(II)V
:goto_19
iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
iget-object v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;
if-eqz v2, :cond_26
if-eq v1, p1, :cond_26
iget-object v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;
invoke-interface {v2, v1, p1}, Lcom/umeng/newxp/view/widget/SwipeView$a;->a(II)V
:cond_26
iget-object v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
if-eqz v2, :cond_31
if-eq v1, p1, :cond_31
iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
invoke-virtual {v1, p1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setCurrentPage(I)V
:cond_31
iget-boolean v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z
if-eqz v1, :cond_43
:goto_35
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z
return-void
:cond_38
if-gez p1, :cond_11
move p1, v0
goto :goto_11
:cond_3c
iget v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
mul-int/2addr v2, p1
invoke-virtual {p0, v2, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->scrollTo(II)V
goto :goto_19
:cond_43
const/4 v0, 0x1
goto :goto_35
.end method
.method private a(Landroid/view/MotionEvent;)V
.registers 7
const/4 v4, 0x1
const/high16 v3, 0x40a0
iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z
if-nez v0, :cond_2b
iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z
if-nez v0, :cond_2b
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->f:I
int-to-float v0, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
sub-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->g:I
int-to-float v1, v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
add-float v2, v0, v3
cmpl-float v2, v1, v2
if-lez v2, :cond_2c
iput-boolean v4, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z
:cond_2b
:goto_2b
return-void
:cond_2c
add-float/2addr v1, v3
cmpl-float v0, v0, v1
if-lez v0, :cond_2b
iput-boolean v4, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z
goto :goto_2b
.end method
.method static synthetic a(Lcom/umeng/newxp/view/widget/SwipeView;I)V
.registers 2
iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->f:I
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/view/widget/SwipeView;Z)V
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z
return-void
.end method
.method static synthetic b(Lcom/umeng/newxp/view/widget/SwipeView;I)V
.registers 2
iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->g:I
return-void
.end method
.method static synthetic b(Lcom/umeng/newxp/view/widget/SwipeView;Z)V
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z
return-void
.end method
.method static synthetic b(Lcom/umeng/newxp/view/widget/SwipeView;)Z
.registers 2
iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z
return v0
.end method
.method static synthetic c(Lcom/umeng/newxp/view/widget/SwipeView;)I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->f:I
return v0
.end method
.method static synthetic c(Lcom/umeng/newxp/view/widget/SwipeView;Z)V
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z
return-void
.end method
.method static synthetic d(Lcom/umeng/newxp/view/widget/SwipeView;)I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->g:I
return v0
.end method
.method static synthetic e(Lcom/umeng/newxp/view/widget/SwipeView;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic f()I
.registers 1
sget v0, Lcom/umeng/newxp/view/widget/SwipeView;->b:I
return v0
.end method
.method static synthetic f(Lcom/umeng/newxp/view/widget/SwipeView;)I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
return v0
.end method
.method static synthetic g(Lcom/umeng/newxp/view/widget/SwipeView;)I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
return v0
.end method
.method public addPageControlPointer(I)V
.registers 3
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
invoke-virtual {v0, p1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->addPageCount(I)V
:cond_9
return-void
.end method
.method public addView(Landroid/view/View;)V
.registers 3
const/4 v0, -0x1
invoke-virtual {p0, p1, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->addView(Landroid/view/View;I)V
return-void
.end method
.method public addView(Landroid/view/View;I)V
.registers 6
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
if-nez v0, :cond_12
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
const/4 v2, -0x1
invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
:goto_e
invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return-void
:cond_12
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
goto :goto_e
.end method
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.registers 5
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->requestLayout()V
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->invalidate()V
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 4
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v0, -0x1
invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/newxp/view/widget/SwipeView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public calculatePageSize(Landroid/view/ViewGroup$MarginLayoutParams;)I
.registers 4
iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I
add-int/2addr v0, v1
iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
add-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->setPageWidth(I)I
move-result v0
return v0
.end method
.method public getChildContainer()Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;
return-object v0
.end method
.method public getCurrentPage()I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
return v0
.end method
.method public getOnPageChangedListener()Lcom/umeng/newxp/view/widget/SwipeView$a;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;
return-object v0
.end method
.method public getPageControl()Lcom/umeng/newxp/view/widget/SwipeViewPointer;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
return-object v0
.end method
.method public getPageCount()I
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v0
return v0
.end method
.method public getPageWidth()I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
return v0
.end method
.method public getSwipeThreshold()I
.registers 2
sget v0, Lcom/umeng/newxp/view/widget/SwipeView;->b:I
return v0
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v2
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v3
if-nez v3, :cond_27
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
float-to-int v3, v3
iput v3, p0, Lcom/umeng/newxp/view/widget/SwipeView;->f:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v3
float-to-int v3, v3
iput v3, p0, Lcom/umeng/newxp/view/widget/SwipeView;->g:I
iget-boolean v3, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z
if-nez v3, :cond_22
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z
:goto_22
:cond_22
iget-boolean v3, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z
if-eqz v3, :cond_32
:goto_26
return v0
:cond_27
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v3
const/4 v4, 0x2
if-ne v3, v4, :cond_22
invoke-direct {p0, p1}, Lcom/umeng/newxp/view/widget/SwipeView;->a(Landroid/view/MotionEvent;)V
goto :goto_22
:cond_32
iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z
if-eqz v0, :cond_3a
iput-boolean v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z
move v0, v1
goto :goto_26
:cond_3a
move v0, v2
goto :goto_26
.end method
.method protected onLayout(ZIIII)V
.registers 7
invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V
iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z
if-eqz v0, :cond_f
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->scrollToPage(I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z
:cond_f
return-void
.end method
.method protected onMeasure(II)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V
iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->q:Z
if-nez v0, :cond_18
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
if-lez v0, :cond_18
iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->q:Z
:cond_18
return-void
.end method
.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
.registers 3
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->requestFocus()Z
return-void
.end method
.method public scrollToPage(I)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->a(IZ)V
return-void
.end method
.method public setOnPageChangedListener(Lcom/umeng/newxp/view/widget/SwipeView$a;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;
return-void
.end method
.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->o:Landroid/view/View$OnTouchListener;
return-void
.end method
.method public setPageControl(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;
if-eqz p1, :cond_18
invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageCount()I
move-result v0
invoke-virtual {p1, v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setPageCount(I)V
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I
invoke-virtual {p1, v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setCurrentPage(I)V
new-instance v0, Lcom/umeng/newxp/view/widget/b;
invoke-direct {v0, p0}, Lcom/umeng/newxp/view/widget/b;-><init>(Lcom/umeng/newxp/view/widget/SwipeView;)V
invoke-virtual {p1, v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setOnPageControlClickListener(Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;)V
:cond_18
return-void
.end method
.method public setPageWidth(I)I
.registers 4
iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->q:Z
iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->e:I
iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I
sub-int/2addr v0, v1
div-int/lit8 v0, v0, 0x2
return v0
.end method
.method public setSwipeThreshold(I)V
.registers 2
sput p1, Lcom/umeng/newxp/view/widget/SwipeView;->b:I
return-void
.end method
.method public smoothScrollToPage(I)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->a(IZ)V
return-void
.end method