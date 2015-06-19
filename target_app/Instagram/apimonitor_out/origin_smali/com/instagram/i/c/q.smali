.class public final Lcom/instagram/i/c/q;
.super Lcom/instagram/base/a/c;
.source "NewsfeedYouFragment.java"

# interfaces
.implements Lcom/instagram/i/c/l;


# instance fields
.field private aa:Lcom/instagram/i/a/a;

.field private ab:Landroid/content/IntentFilter;

.field private final ac:Landroid/content/BroadcastReceiver;

.field private final ad:Landroid/content/BroadcastReceiver;

.field private i:Lcom/instagram/i/e/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/i/c/q;->i:Lcom/instagram/i/e/a;

    new-instance v0, Lcom/instagram/i/c/r;

    invoke-direct {v0, p0}, Lcom/instagram/i/c/r;-><init>(Lcom/instagram/i/c/q;)V

    iput-object v0, p0, Lcom/instagram/i/c/q;->ac:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/instagram/i/c/s;

    invoke-direct {v0, p0}, Lcom/instagram/i/c/s;-><init>(Lcom/instagram/i/c/q;)V

    iput-object v0, p0, Lcom/instagram/i/c/q;->ad:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private W()Lcom/instagram/i/a/a;
    .registers 5

    iget-object v0, p0, Lcom/instagram/i/c/q;->aa:Lcom/instagram/i/a/a;

    if-nez v0, :cond_19

    new-instance v1, Lcom/instagram/i/a/a;

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->y()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/a/a/a;

    invoke-direct {v1, v2, v3, v0}, Lcom/instagram/i/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/i/a/a/a;)V

    iput-object v1, p0, Lcom/instagram/i/c/q;->aa:Lcom/instagram/i/a/a;

    :cond_19
    iget-object v0, p0, Lcom/instagram/i/c/q;->aa:Lcom/instagram/i/a/a;

    return-object v0
.end method

.method private X()V
    .registers 6

    invoke-direct {p0}, Lcom/instagram/i/c/q;->W()Lcom/instagram/i/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/i/c/q;->i:Lcom/instagram/i/e/a;

    invoke-virtual {v1}, Lcom/instagram/i/e/a;->h()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/i/c/q;->i:Lcom/instagram/i/e/a;

    invoke-virtual {v2}, Lcom/instagram/i/e/a;->i()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/i/c/q;->i:Lcom/instagram/i/e/a;

    invoke-virtual {v3}, Lcom/instagram/i/e/a;->j()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/i/c/q;->i:Lcom/instagram/i/e/a;

    invoke-virtual {v4}, Lcom/instagram/i/e/a;->k()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/i/a/a;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private Y()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->q_()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_22
    const/4 v0, 0x0

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/i/e/a;->g()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->newsfeed_failed:I

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_42
    if-eqz v1, :cond_54

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->q_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_54
    return-void

    :cond_55
    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/i/e/a;->e()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/i/e/a;->d()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->newsfeed_empty:I

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/av;->newsfeed_empty_view_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->newsfeed_you_empty_view_title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_42

    :cond_8b
    move-object v1, v0

    goto :goto_42
.end method

.method static synthetic a(Lcom/instagram/i/c/q;)Lcom/instagram/i/a/a;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/i/c/q;->W()Lcom/instagram/i/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/i/c/q;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/i/c/q;->X()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/i/c/q;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/i/c/q;->Y()V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 4

    invoke-super {p0}, Lcom/instagram/base/a/c;->E()V

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/i/c/q;->ac:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/instagram/i/c/q;->ab:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.fragment.NewsFeedYouFragment.BROADCAST_YOU_MODE_SEEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public final F()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/i/c/q;->ac:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    return-void
.end method

.method public final G()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/i/c/q;->ad:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final U()Z
    .registers 2

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/e/a;->e()Z

    move-result v0

    return v0
.end method

.method public final V()V
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/i/c/q;->a_(I)V

    :cond_a
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/i/c/q;->ab:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/instagram/i/c/q;->ab:Landroid/content/IntentFilter;

    const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/instagram/i/c/q;->W()Lcom/instagram/i/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/i/c/q;->a(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/instagram/i/c/q;->X()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/i/c/q;->ad:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/e/a;->b()V

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/e/a;->e()Z

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    :goto_23
    return-void

    :cond_24
    invoke-direct {p0}, Lcom/instagram/i/c/q;->Y()V

    goto :goto_23
.end method

.method public final d()V
    .registers 2

    invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/i/e/a;->b()V

    invoke-virtual {p0}, Lcom/instagram/i/c/q;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/i/c/g;

    invoke-virtual {v0, p0}, Lcom/instagram/i/c/g;->a(Lcom/instagram/i/c/l;)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "newsfeed_you"

    return-object v0
.end method
