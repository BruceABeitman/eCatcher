.class public Lcom/instagram/android/people/widget/PhotoScrollView;
.super Landroid/widget/ScrollView;
.source "PhotoScrollView.java"


# instance fields
.field private a:F

.field private b:Lcom/instagram/common/ui/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PhotoScrollView;)F
    .registers 2

    iget v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->a:F

    return v0
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method private a(F)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getHeight()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->smoothScrollTo(II)V

    goto :goto_6
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PhotoScrollView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PhotoScrollView;->a(F)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    iget-object v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->b:Lcom/instagram/common/ui/b/a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->b:Lcom/instagram/common/ui/b/a;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PhotoScrollView;->getMeasuredHeight()I

    invoke-interface {v0, v1}, Lcom/instagram/common/ui/b/a;->a(I)V

    :cond_13
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    new-instance v0, Lcom/instagram/android/people/widget/n;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/widget/n;-><init>(Lcom/instagram/android/people/widget/PhotoScrollView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/instagram/android/people/widget/PhotoScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setOnMeasureListener(Lcom/instagram/common/ui/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->b:Lcom/instagram/common/ui/b/a;

    return-void
.end method

.method public setScrollTarget(F)V
    .registers 3

    iput p1, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->a:F

    iget v0, p0, Lcom/instagram/android/people/widget/PhotoScrollView;->a:F

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PhotoScrollView;->a(F)V

    return-void
.end method
