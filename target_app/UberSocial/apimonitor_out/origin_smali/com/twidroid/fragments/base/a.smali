.class public abstract Lcom/twidroid/fragments/base/a;
.super Lcom/twidroid/fragments/base/o;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/k;


# instance fields
.field private a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/base/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/a;->b(Z)V

    return-void
.end method

.method public final b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/a;->b(Z)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/fragments/base/a;->b:Z

    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    const v2, 0x7f0c013e

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->w:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->t()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v2}, Lcom/twidroid/fragments/base/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    :cond_1f
    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/o;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c013e

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/twidroid/fragments/base/a;->L()V

    :cond_c
    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/o;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/o;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f090096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    iput-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->w:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->t()Z

    move-result v0

    if-nez v0, :cond_6d

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {v2, v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setPullEnabled(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    const v0, 0x7f0900c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/fragments/base/a;->C:Landroid/widget/TextView;

    const v0, 0x7f0900c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twidroid/fragments/base/a;->D:Landroid/widget/Button;

    const v0, 0x7f0900c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twidroid/fragments/base/a;->E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->D:Landroid/widget/Button;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->D:Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/fragments/base/a$1;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/base/a$1;-><init>(Lcom/twidroid/fragments/base/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5b
    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    iget-object v1, p0, Lcom/twidroid/fragments/base/a;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    new-instance v1, Lcom/twidroid/fragments/base/a$2;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/base/a$2;-><init>(Lcom/twidroid/fragments/base/a;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setOnPullEventListener(Lcom/handmark/pulltorefresh/library/i;)V

    return-void

    :cond_6d
    move v0, v1

    goto :goto_24
.end method

.method public final r()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/fragments/base/a;->b:Z

    return v0
.end method

.method public s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    return-object v0
.end method

.method protected s_()V
    .registers 3

    invoke-super {p0}, Lcom/twidroid/fragments/base/o;->s_()V

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->s()I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/a;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->y()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setBackgroundColor(I)V

    :goto_17
    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->v:Lcom/twidroid/ui/themes/r;

    instance-of v0, v0, Lcom/twidroid/ui/themes/a;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    iget-object v1, p0, Lcom/twidroid/fragments/base/a;->v:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setHeaderAndFooterTextColor(I)V

    :goto_28
    return-void

    :cond_29
    iget-object v1, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setBackgroundColor(I)V

    goto :goto_17

    :cond_2f
    iget-object v0, p0, Lcom/twidroid/fragments/base/a;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    iget-object v1, p0, Lcom/twidroid/fragments/base/a;->v:Lcom/twidroid/ui/themes/r;

    iget v1, v1, Lcom/twidroid/ui/themes/r;->A:I

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setHeaderAndFooterTextColor(I)V

    goto :goto_28
.end method
