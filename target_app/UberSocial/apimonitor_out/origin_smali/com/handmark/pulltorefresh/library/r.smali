.class Lcom/handmark/pulltorefresh/library/r;
.super Landroid/widget/GridView;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;


# instance fields
.field final synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/r;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setEmptyView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/r;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
