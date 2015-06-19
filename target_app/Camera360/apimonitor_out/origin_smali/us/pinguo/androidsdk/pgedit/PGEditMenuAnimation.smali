.class public Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;
.super Ljava/lang/Object;
.source "PGEditMenuAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;,
        Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;,
        Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;,
        Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$MenuAnimationActionListener;,
        Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;
    }
.end annotation


# static fields
.field private static final HIDE_VIEW_DOWN:I = 0x1

.field private static final HIDE_VIEW_FINISH:I = 0x2

.field private static final HIDE_VIEW_FINISH_FOR_UP_AND_DOWN_TOGETHER:I = 0x8

.field private static final HIDE_VIEW_LEFT_TO_RIGHT:I = 0x5

.field private static final INTERVAL_TIME:J = 0x32L

.field public static final INTERVAL_TIME_200:J = 0xc8L

.field private static final SHOW_VIEW_FINISH_FOR_UP_AND_DOWN_TOGETHER:I = 0x7

.field private static final SHOW_VIEW_RIGHT_TO_LEFT:I = 0x3

.field private static final SHOW_VIEW_RIGHT_TO_LEFT_FINISH:I = 0x4

.field private static final SHOW_VIEW_UP:I = 0x6


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

.field private mLastHideAnimation:Landroid/view/animation/Animation;

.field private mLastShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public hideAndShowViewTogetherForUpAndDownAnimation(Landroid/widget/HorizontalScrollView;Landroid/widget/HorizontalScrollView;Landroid/view/ViewGroup;Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/HorizontalScrollView;",
            "Landroid/widget/HorizontalScrollView;",
            "Landroid/view/ViewGroup;",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_51

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;

    const/high16 v3, 0x42c8

    invoke-direct {v1, v5, v5, v3, v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->setDuration(J)V

    invoke-virtual {v1, p4}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->setBaseAnimationListener(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastShowAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastShowAnimation:Landroid/view/animation/Animation;

    new-instance v4, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$2;

    invoke-direct {v4, p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$2;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v3}, Landroid/widget/HorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;

    const/high16 v3, 0x42dc

    invoke-direct {v0, v5, v5, v5, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$IDPhotoTranslateAnimation;->setView(Landroid/view/View;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastHideAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastHideAnimation:Landroid/view/animation/Animation;

    new-instance v4, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$3;

    invoke-direct {v4, p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$3;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v3}, Landroid/widget/HorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_a
.end method

.method public hideViewForDownAnimation(Landroid/view/ViewGroup;Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V
    .registers 13

    const/4 v9, 0x1

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    const-string/jumbo v4, "hideViewForDownAnimation"

    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_14
    if-gez v1, :cond_1e

    const/4 v1, 0x0

    :goto_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_28

    return-void

    :cond_1e
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_28
    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;-><init>()V

    invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setParentView(Landroid/view/ViewGroup;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setView(Landroid/view/View;)V

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setHandler(Landroid/os/Handler;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setAction(I)V

    invoke-virtual {v0, p2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setBaseAnimationListener(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_65

    invoke-virtual {v0, v9}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setLast(Z)V

    :goto_50
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput v9, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x32

    int-to-long v7, v1

    mul-long/2addr v5, v7

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_65
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setLast(Z)V

    goto :goto_50
.end method

.method public hideViewForLeftToRightAnimation(Landroid/widget/HorizontalScrollView;Landroid/view/ViewGroup;Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V
    .registers 16

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    invoke-virtual {v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;->cancel()V

    :cond_9
    iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    const-string/jumbo v7, "hideViewForLeftToRightAnimation"

    invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v7

    add-int v6, v5, v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_26
    if-gez v1, :cond_30

    const/4 v1, 0x0

    :goto_29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v1, v7, :cond_46

    return-void

    :cond_30
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    if-lt v7, v5, :cond_43

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-gt v7, v6, :cond_43

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    :cond_46
    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;-><init>()V

    invoke-virtual {v0, p2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setParentView(Landroid/view/ViewGroup;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setView(Landroid/view/View;)V

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setHandler(Landroid/os/Handler;)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setAction(I)V

    invoke-virtual {v0, p3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setBaseAnimationListener(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_87

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setLast(Z)V

    :goto_6f
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/4 v7, 0x5

    iput v7, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v3, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x32

    int-to-long v10, v1

    mul-long/2addr v8, v10

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_87
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$HideAnimationListener;->setLast(Z)V

    goto :goto_6f
.end method

.method public showViewForRightToLeftAnimation(Ljava/util/List;Landroid/view/ViewGroup;Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    const-string/jumbo v3, "showViewForRightToLeftAnimation"

    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_10

    return-void

    :cond_10
    new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;

    invoke-direct {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setView(Landroid/view/View;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setHandler(Landroid/os/Handler;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setAction(I)V

    invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setParentView(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, p3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setBaseAnimationListener(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_51

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setLast(Z)V

    :goto_39
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_51
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setLast(Z)V

    goto :goto_39
.end method

.method public showViewForUp(Ljava/util/List;Landroid/view/ViewGroup;Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mLastBaseAnimationListener:Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;

    const-string/jumbo v3, "showViewForUp"

    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_10

    return-void

    :cond_10
    new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;

    invoke-direct {v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setView(Landroid/view/View;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setHandler(Landroid/os/Handler;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setAction(I)V

    invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setParentView(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, p3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setBaseAnimationListener(Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_51

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setLast(Z)V

    :goto_39
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_51
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$ShowAnimationListener;->setLast(Z)V

    goto :goto_39
.end method
