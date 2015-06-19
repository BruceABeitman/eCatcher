.class public Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.source "SourceFile"


# instance fields
.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->o:Z

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->p:Z

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->q()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->o:Z

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->p:Z

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->q()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->o:Z

    iput-boolean v0, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->p:Z

    invoke-direct {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->q()V

    return-void
.end method

.method private q()V
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->p:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->o:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setHeaderAndFooterTextColor(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    if-eqz v0, :cond_a

    :cond_a
    if-eqz v1, :cond_c

    :cond_c
    return-void
.end method

.method public setPullDownEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->p:Z

    return-void
.end method

.method public setPullEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->o:Z

    iput-boolean p1, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->p:Z

    return-void
.end method

.method public setPullUpEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->o:Z

    return-void
.end method
