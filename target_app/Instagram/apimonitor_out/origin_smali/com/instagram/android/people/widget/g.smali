.class final Lcom/instagram/android/people/widget/g;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PeopleTagsInteractiveLayout.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/people/widget/g;-><init>(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V

    return-void
.end method

.method private a(II)Lcom/instagram/android/people/widget/c;
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_22

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->c()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/people/widget/c;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1e

    :goto_1d
    return-object v0

    :cond_1e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_22
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/instagram/android/people/widget/g;->a(II)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;)Lcom/instagram/android/people/widget/c;

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->bringToFront()V

    iget-object v2, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->d()Z

    move-result v0

    if-nez v0, :cond_6e

    move v0, v1

    :goto_34
    invoke-static {v2, v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v2, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/instagram/android/people/widget/c;->b(II)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Z)Z

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v2, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v3, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(I)Lcom/instagram/android/people/widget/c;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;)Lcom/instagram/android/people/widget/c;

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->invalidate()V

    :cond_68
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)V

    return v1

    :cond_6e
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v1, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v1

    invoke-static {v0, v1, p3, p4}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Lcom/instagram/android/people/widget/c;FF)V

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->c(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a()V

    :cond_e
    :goto_e
    return v5

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/model/people/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_48

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v3}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v4}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;Landroid/graphics/PointF;)V

    goto :goto_e

    :cond_48
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->people_tagging_add_people_limit_reached:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_e

    :cond_59
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->e(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->d(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/model/people/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/c;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/model/people/b;->remove(Ljava/lang/Object;)Z

    :cond_74
    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->f(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/android/people/widget/g;->a:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;)Lcom/instagram/android/people/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/c;->b()V

    goto :goto_e
.end method
