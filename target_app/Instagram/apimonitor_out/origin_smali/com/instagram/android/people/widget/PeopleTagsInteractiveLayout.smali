.class public Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;
.super Lcom/instagram/android/people/widget/PeopleTagsLayout;
.source "PeopleTagsInteractiveLayout.java"

# interfaces
.implements Lcom/instagram/model/people/c;


# instance fields
.field private b:Lcom/instagram/android/people/widget/c;

.field private c:Z

.field private d:Z

.field private e:Landroid/view/GestureDetector;

.field private f:Lcom/instagram/android/people/widget/f;

.field private g:Lcom/instagram/android/people/widget/c;

.field private h:Lcom/instagram/model/people/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/widget/g;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/widget/g;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/widget/g;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/widget/g;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/people/widget/PeopleTagsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    iput-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/people/widget/g;

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/people/widget/g;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;)Lcom/instagram/android/people/widget/c;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    return-object p1
.end method

.method private a(Landroid/graphics/PointF;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    invoke-interface {v0}, Lcom/instagram/android/people/widget/f;->a()V

    :cond_9
    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Landroid/graphics/PointF;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;FF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/c;FF)V

    return-void
.end method

.method private a(Lcom/instagram/android/people/widget/c;FF)V
    .registers 7

    invoke-virtual {p1}, Lcom/instagram/android/people/widget/c;->getAbsoluteTagPosition()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p3

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v1}, Lcom/instagram/android/people/widget/c;->setPosition(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->a()V

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->invalidate()V

    :goto_20
    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c()V

    goto :goto_20
.end method

.method static synthetic a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    return p1
.end method

.method private b(Landroid/graphics/PointF;)V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a:Z

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/az;->people_tagging_default_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Ljava/lang/String;Landroid/graphics/PointF;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    invoke-interface {v0, p1}, Lcom/instagram/android/people/widget/f;->a(Landroid/graphics/PointF;)V

    :cond_24
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Lcom/instagram/android/people/widget/c;)V

    return-void
.end method

.method private b(Lcom/instagram/android/people/widget/c;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->d()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->b()V

    :cond_16
    return-void

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/model/people/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    return-object v0
.end method

.method private e()V
    .registers 4

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f80

    const v2, 0x3f4ccccd

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/android/people/widget/c;->a(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    return-void
.end method

.method static synthetic e(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d:Z

    return v0
.end method

.method private f()V
    .registers 4

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3f4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_22

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/android/people/widget/c;->b(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_22
    return-void
.end method

.method static synthetic f(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a:Z

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    invoke-direct {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f()V

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    invoke-interface {v0}, Lcom/instagram/android/people/widget/f;->b()V

    :cond_17
    return-void
.end method

.method public final a(Lcom/instagram/model/people/PeopleTag;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/instagram/model/people/b;Z)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/model/people/b;Z)V

    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    invoke-virtual {v0, p0}, Lcom/instagram/model/people/b;->a(Lcom/instagram/model/people/c;)V

    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    new-instance v1, Lcom/instagram/model/people/PeopleTag;

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v2}, Lcom/instagram/android/people/widget/c;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/instagram/model/people/PeopleTag;-><init>(Lcom/instagram/user/c/a;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Lcom/instagram/model/people/b;->a(Lcom/instagram/model/people/PeopleTag;)Z

    invoke-virtual {p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a()V

    :cond_17
    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->h:Lcom/instagram/model/people/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/model/people/b;->a(Lcom/instagram/model/people/c;)V

    :cond_a
    return-void
.end method

.method public final b(Lcom/instagram/model/people/PeopleTag;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/model/people/PeopleTag;Z)Lcom/instagram/android/people/widget/c;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;

    invoke-virtual {p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->a:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Landroid/graphics/PointF;)V

    :goto_12
    return-void

    :cond_13
    invoke-super {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_12
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    if-nez v1, :cond_9

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;

    invoke-direct {v1, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->g:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->a:Landroid/graphics/PointF;

    move-object v0, v1

    goto :goto_8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/android/people/widget/f;->b(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b:Lcom/instagram/android/people/widget/c;

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->getNormalizedPosition()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/model/people/PeopleTag;->a(Landroid/graphics/PointF;)V

    :cond_2f
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEditListener(Lcom/instagram/android/people/widget/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f:Lcom/instagram/android/people/widget/f;

    return-void
.end method
