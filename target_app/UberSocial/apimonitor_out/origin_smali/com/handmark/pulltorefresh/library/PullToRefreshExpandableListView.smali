.class public Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.source "SourceFile"


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

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ExpandableListView;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ExpandableListView;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12

    new-instance v0, Lcom/handmark/pulltorefresh/library/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/q;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_b
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setId(I)V

    return-object v0

    :cond_12
    new-instance v0, Lcom/handmark/pulltorefresh/library/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/p;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_b
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;
    .registers 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;

    return-object v0
.end method
