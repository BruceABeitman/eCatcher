.class public Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView;,
        Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .registers 6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_11

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridViewSDK9;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_b
    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->gridview:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    return-object v0

    :cond_11
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$InternalGridView;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_b
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .registers 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method
