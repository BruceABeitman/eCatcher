.class public Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
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

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_11

    new-instance v0, Lcom/handmark/pulltorefresh/library/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/s;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_b
    sget v1, Lcom/handmark/pulltorefresh/library/ad;->gridview:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    return-object v0

    :cond_11
    new-instance v0, Lcom/handmark/pulltorefresh/library/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/r;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_b
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;
    .registers 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;

    return-object v0
.end method
