.class public final Lcom/instagram/android/fragment/ep;
.super Lcom/instagram/android/fragment/fb;
.source "SelfFragment.java"


# instance fields
.field private af:Lcom/instagram/android/d/n;

.field private ag:Lcom/instagram/common/c/j;

.field private ah:Lcom/instagram/common/c/h;

.field private ai:Lcom/instagram/feed/i/a;

.field private final aj:Lcom/instagram/common/c/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/fb;-><init>()V

    new-instance v0, Lcom/instagram/android/fragment/eq;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/eq;-><init>(Lcom/instagram/android/fragment/ep;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ep;->aj:Lcom/instagram/common/c/a;

    return-void
.end method

.method private at()Z
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ep;->aq()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->ai:Lcom/instagram/feed/i/a;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private au()V
    .registers 3

    new-instance v1, Lcom/instagram/feed/i/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ep;->D()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Lcom/instagram/feed/i/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/instagram/android/fragment/ep;->ai:Lcom/instagram/feed/i/a;

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->ai:Lcom/instagram/feed/i/a;

    invoke-virtual {v0}, Lcom/instagram/feed/i/a;->a()V

    return-void
.end method

.method private av()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->ai:Lcom/instagram/feed/i/a;

    invoke-virtual {v0}, Lcom/instagram/feed/i/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/ep;->ai:Lcom/instagram/feed/i/a;

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/android/fragment/fb;->E()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->ag:Lcom/instagram/common/c/j;

    const-string v1, "SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"

    invoke-virtual {v0, v1}, Lcom/instagram/common/c/j;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/instagram/android/fragment/ep;->at()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/instagram/android/fragment/ep;->au()V

    :cond_13
    return-void
.end method

.method public final G()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/android/fragment/fb;->G()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->ah:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ep;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->load_more_empty_self:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/fragment/fb;->a(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->af:Lcom/instagram/android/d/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/android/d/n;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/fb;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/instagram/android/d/n;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/d/n;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ep;->af:Lcom/instagram/android/d/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ep;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ep;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/n;->i(I)V

    new-instance v0, Lcom/instagram/common/c/j;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ep;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/ep;->ag:Lcom/instagram/common/c/j;

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->ag:Lcom/instagram/common/c/j;

    invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"

    iget-object v2, p0, Lcom/instagram/android/fragment/ep;->aj:Lcom/instagram/common/c/a;

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ep;->ah:Lcom/instagram/common/c/h;

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->ah:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/fb;->a(Lcom/instagram/a/a;)V

    sget-object v0, Lcom/instagram/a/j;->a:Lcom/instagram/a/j;

    new-instance v1, Lcom/instagram/android/fragment/er;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/er;-><init>(Lcom/instagram/android/fragment/ep;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    return-void
.end method

.method protected final ao()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/android/fragment/fb;->ao()V

    invoke-direct {p0}, Lcom/instagram/android/fragment/ep;->at()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ep;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/instagram/android/fragment/ep;->au()V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->ai:Lcom/instagram/feed/i/a;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ep;->aq()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_12

    invoke-direct {p0}, Lcom/instagram/android/fragment/ep;->av()V

    goto :goto_12
.end method

.method protected final ap()V
    .registers 2

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ep;->ae:Lcom/instagram/user/c/a;

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->af:Lcom/instagram/android/d/n;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/ep;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/d/n;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/fb;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/ep;->af:Lcom/instagram/android/d/n;

    invoke-virtual {v0, p1}, Lcom/instagram/android/d/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "self_profile"

    return-object v0
.end method

.method public final l_()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/android/fragment/fb;->l_()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/fragment/ep;->ai:Lcom/instagram/feed/i/a;

    return-void
.end method
