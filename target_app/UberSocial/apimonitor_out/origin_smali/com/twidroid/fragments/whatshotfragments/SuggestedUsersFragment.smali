.class public Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;
.super Lcom/twidroid/fragments/base/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/twidroid/fragments/whatshotfragments/i;

.field private c:Landroid/os/Handler;

.field private d:Lcom/twidroid/UberSocialApplication;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/base/b;-><init>()V

    const-string v0, "SuggestedUsersFragment"

    iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/net/c/a/f;)V
    .registers 4

    invoke-direct {p0}, Lcom/twidroid/fragments/base/b;-><init>()V

    const-string v0, "SuggestedUsersFragment"

    iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->d:Lcom/twidroid/UberSocialApplication;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic b(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/UberSocialApplication;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->d:Lcom/twidroid/UberSocialApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/ui/themes/r;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->v:Lcom/twidroid/ui/themes/r;

    return-object v0
.end method

.method static synthetic d(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic e(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/ui/themes/r;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->v:Lcom/twidroid/ui/themes/r;

    return-object v0
.end method

.method static synthetic f(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic g(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic h(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic i(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method private m()Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->b:Lcom/twidroid/fragments/whatshotfragments/i;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->b:Lcom/twidroid/fragments/whatshotfragments/i;

    invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/i;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public S()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const v0, 0x7f0c02f3

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public a(Ljava/lang/String;J)V
    .registers 8

    new-instance v0, Lcom/twidroid/fragments/whatshotfragments/j;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/whatshotfragments/j;-><init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/whatshotfragments/j;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;JLcom/twidroid/c/d;)V
    .registers 12

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->d:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_28

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;-><init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;Landroid/app/Activity;Lcom/twidroid/c/d;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$1;->show()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-interface {p4}, Lcom/twidroid/c/d;->a()V

    new-instance v0, Lcom/twidroid/fragments/whatshotfragments/h;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/whatshotfragments/h;-><init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/whatshotfragments/h;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto :goto_27
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method protected e()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setPullEnabled(Z)V

    new-instance v0, Lcom/twidroid/fragments/whatshotfragments/i;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/whatshotfragments/i;-><init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V

    iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->b:Lcom/twidroid/fragments/whatshotfragments/i;

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->b:Lcom/twidroid/fragments/whatshotfragments/i;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/whatshotfragments/i;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

.method f()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->c:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$2;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment$2;-><init>(Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->d:Lcom/twidroid/UberSocialApplication;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/twidroid/fragments/base/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setListShown(Z)V
    .registers 7

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_31

    const/4 v0, 0x1

    move v3, v0

    :goto_f
    if-eqz p1, :cond_33

    if-eqz v3, :cond_33

    move v0, v1

    :goto_14
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->E:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_21

    invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->m()Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    move v1, v2

    :cond_22
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_35

    invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->m()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->N()V

    :goto_30
    return-void

    :cond_31
    move v3, v1

    goto :goto_f

    :cond_33
    move v0, v2

    goto :goto_14

    :cond_35
    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/SuggestedUsersFragment;->M()V

    goto :goto_30
.end method
