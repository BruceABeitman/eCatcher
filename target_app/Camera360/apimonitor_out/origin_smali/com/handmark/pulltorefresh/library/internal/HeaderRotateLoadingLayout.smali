.class public Lcom/handmark/pulltorefresh/library/internal/HeaderRotateLoadingLayout;
.super Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;
.source "HeaderRotateLoadingLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-void
.end method


# virtual methods
.method protected pullToRefreshImpl()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget v1, Lcom/handmark/pulltorefresh/library/R$drawable;->fetch_at_icon_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected releaseToRefreshImpl()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/HeaderRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget v1, Lcom/handmark/pulltorefresh/library/R$drawable;->fetch_at_icon_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
