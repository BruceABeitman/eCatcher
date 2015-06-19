.class public Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListView"
.end annotation


# instance fields
.field private mAddedLvFooter:Z

.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    :goto_4
    return v1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_4
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    #getter for: Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->access$1(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    #getter for: Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->access$1(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    :cond_1a
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
