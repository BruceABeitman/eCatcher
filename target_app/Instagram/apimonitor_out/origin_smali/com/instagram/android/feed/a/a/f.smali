.class public final Lcom/instagram/android/feed/a/a/f;
.super Ljava/lang/Object;
.source "FeedPeopleTagModule.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lcom/instagram/android/feed/a/a;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/instagram/android/feed/a/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/f;->b:Ljava/util/Set;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/f;->c:Landroid/graphics/Rect;

    new-instance v0, Lcom/instagram/android/feed/a/a/g;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/a/a/g;-><init>(Lcom/instagram/android/feed/a/a/f;)V

    iput-object v0, p0, Lcom/instagram/android/feed/a/a/f;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/android/feed/a/a;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/f;)Lcom/instagram/android/feed/a/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/android/feed/a/a;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/instagram/android/feed/a/a/h;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/a/a/h;-><init>(Lcom/instagram/android/feed/a/a/f;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2a
    return-void
.end method

.method private a(Landroid/widget/AbsListView;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {p1, v0}, Lcom/instagram/android/feed/a/a;->a(Landroid/widget/AbsListView;I)Lcom/instagram/feed/widget/ConstrainedProgressImageView;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/instagram/feed/widget/ConstrainedProgressImageView;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/widget/ConstrainedProgressImageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/instagram/android/feed/a/a/f;->a(Ljava/lang/String;)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/a/f;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/f;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/a/f;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/instagram/android/feed/a/a/i;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/feed/a/a/i;-><init>(Lcom/instagram/android/feed/a/a/f;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_29
    return-void
.end method

.method private b(Landroid/widget/AbsListView;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    move v1, v0

    :goto_13
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v1, v0, :cond_38

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    iget-object v3, p0, Lcom/instagram/android/feed/a/a/f;->b:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_38
    iput-object v2, p0, Lcom/instagram/android/feed/a/a/f;->b:Ljava/util/Set;

    goto :goto_8
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;Lcom/instagram/android/people/widget/PeopleTagsLayout;Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->d()V

    invoke-direct {p0, p3}, Lcom/instagram/android/feed/a/a/f;->a(Landroid/view/View;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->W()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->removeAllViews()V

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->a(Lcom/instagram/feed/d/l;Z)V

    invoke-direct {p0, p3}, Lcom/instagram/android/feed/a/a/f;->b(Landroid/view/View;)V

    goto :goto_13
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/f;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;)Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v0

    sget v1, Lcom/instagram/android/feed/a/h;->a:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/f;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_19
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    if-nez p2, :cond_5

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/f;->a(Landroid/widget/AbsListView;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/f;->b(Landroid/widget/AbsListView;)V

    return-void
.end method
