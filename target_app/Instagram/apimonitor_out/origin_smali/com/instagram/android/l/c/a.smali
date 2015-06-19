.class public final Lcom/instagram/android/l/c/a;
.super Lcom/instagram/base/a/c;
.source "UserListFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private aa:I

.field private ab:Ljava/lang/String;

.field private ac:Lcom/instagram/android/l/a/a;

.field private ad:Z

.field private ae:Lcom/instagram/android/l/f/a;

.field private af:Ljava/lang/String;

.field private ag:Z

.field private ah:Lcom/instagram/user/follow/h;

.field private ai:Landroid/os/Handler;

.field private aj:Lcom/instagram/android/l/c/v;

.field private ak:Lcom/instagram/common/a/a/m;

.field private al:Lcom/instagram/common/c/h;

.field private am:Lcom/instagram/api/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/android/l/b/e;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/instagram/api/k/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/k/a/h",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/l/c/a;->ag:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/l/c/a;->ai:Landroid/os/Handler;

    new-instance v0, Lcom/instagram/android/l/c/j;

    invoke-direct {v0, p0}, Lcom/instagram/android/l/c/j;-><init>(Lcom/instagram/android/l/c/a;)V

    iput-object v0, p0, Lcom/instagram/android/l/c/a;->i:Lcom/instagram/api/k/a/h;

    new-instance v0, Lcom/instagram/android/l/c/o;

    invoke-direct {v0, p0}, Lcom/instagram/android/l/c/o;-><init>(Lcom/instagram/android/l/c/a;)V

    iput-object v0, p0, Lcom/instagram/android/l/c/a;->am:Lcom/instagram/api/j/f;

    return-void
.end method

.method private U()V
    .registers 6

    const/4 v4, 0x1

    sget v0, Lcom/facebook/az;->disconnect_contacts:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/l/c/a;->c(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v2, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->n()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/instagram/android/l/c/h;

    invoke-direct {v3, p0, v0, v1}, Lcom/instagram/android/l/c/h;-><init>(Lcom/instagram/android/l/c/a;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1, v3}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private V()V
    .registers 4

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->disconnect_contacts_dialog_msg:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->disconnect:I

    new-instance v2, Lcom/instagram/android/l/c/i;

    invoke-direct {v2, p0}, Lcom/instagram/android/l/c/i;-><init>(Lcom/instagram/android/l/c/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private W()Z
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private X()Z
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_IS_FACEBOOK_LINKING_FLOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private Y()Landroid/view/View$OnClickListener;
    .registers 2

    new-instance v0, Lcom/instagram/android/l/c/l;

    invoke-direct {v0, p0}, Lcom/instagram/android/l/c/l;-><init>(Lcom/instagram/android/l/c/a;)V

    return-object v0
.end method

.method private Z()V
    .registers 5

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/m/a;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/instagram/o/b;->aC:Lcom/instagram/o/b;

    invoke-virtual {v1}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "is_facebook_linking_flow"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "instagram_id"

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    invoke-static {}, Lcom/instagram/share/b/a;->d()V

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/nux/af;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/l/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->ab()V

    return-void
.end method

.method private aa()Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-nez v0, :cond_b

    move v0, v2

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_19

    move v0, v2

    goto :goto_a

    :cond_19
    iget-object v1, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/l/a/a;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/l/a/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/instagram/android/l/c/a;->aj:Lcom/instagram/android/l/c/v;

    invoke-virtual {v1}, Lcom/instagram/android/l/c/v;->i()Z

    move-result v1

    if-eqz v1, :cond_3b

    :cond_39
    move v0, v2

    goto :goto_a

    :cond_3b
    iget-object v1, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    invoke-virtual {v1}, Lcom/instagram/android/l/a/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v1

    sget-object v4, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-eq v1, v4, :cond_45

    invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->i()V

    move v0, v2

    goto :goto_a

    :cond_5e
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private ab()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->aa()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->prompt_when_user_wants_to_skip_finding_friends_during_signup:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_skip_this_step:I

    new-instance v2, Lcom/instagram/android/l/c/n;

    invoke-direct {v2, p0}, Lcom/instagram/android/l/c/n;-><init>(Lcom/instagram/android/l/c/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_33
    return-void

    :cond_34
    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->ac()V

    goto :goto_33
.end method

.method private ac()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->X()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->Z()V

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v1, Lcom/instagram/android/l/d/a;->a:I

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v1, Lcom/instagram/android/l/d/a;->c:I

    if-ne v0, v1, :cond_30

    :cond_16
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/bb;

    invoke-direct {v1}, Lcom/instagram/android/fragment/bb;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_9

    :cond_30
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/dr;

    invoke-direct {v1}, Lcom/instagram/android/fragment/dr;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    goto :goto_9
.end method

.method private ad()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ae:Lcom/instagram/android/l/f/a;

    invoke-virtual {v0, v5}, Lcom/instagram/android/l/f/a;->setFollowAllEnabled(Z)V

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->ae()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->W()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->ac()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->W()Z

    move-result v1

    if-eqz v1, :cond_36

    new-instance v1, Lcom/instagram/android/l/b/b;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/l/c/s;

    invoke-direct {v4, p0, v5}, Lcom/instagram/android/l/c/s;-><init>(Lcom/instagram/android/l/c/a;B)V

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/android/l/b/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/l/b/b;->a(Ljava/util/List;)V

    goto :goto_19

    :cond_36
    new-instance v1, Lcom/instagram/android/l/b/c;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/l/c/u;

    invoke-direct {v4, p0, v5}, Lcom/instagram/android/l/c/u;-><init>(Lcom/instagram/android/l/c/a;B)V

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/android/l/b/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/l/b/c;->a(Ljava/lang/Iterable;)V

    goto :goto_19
.end method

.method private ae()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v3

    sget-object v4, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-eq v3, v4, :cond_f

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v3

    sget-object v4, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    if-eq v3, v4, :cond_f

    invoke-static {v0}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_35
    return-object v1
.end method

.method private af()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->aj:Lcom/instagram/android/l/c/v;

    invoke-virtual {v0}, Lcom/instagram/android/l/c/v;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->aj:Lcom/instagram/android/l/c/v;

    invoke-virtual {v0}, Lcom/instagram/android/l/c/v;->g()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->D()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private ag()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v2, Lcom/instagram/android/l/d/a;->b:I

    if-ne v1, v2, :cond_1d

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/k/b/a;->a(I)V

    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/instagram/android/l/c/a;->ae:Lcom/instagram/android/l/f/a;

    invoke-virtual {v1, v0}, Lcom/instagram/android/l/f/a;->a(I)V

    return-void

    :cond_1d
    iget v1, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v2, Lcom/instagram/android/l/d/a;->a:I

    if-ne v1, v2, :cond_17

    invoke-static {v0}, Lcom/instagram/share/b/a;->a(I)V

    goto :goto_17
.end method

.method static synthetic b(Lcom/instagram/android/l/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->U()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/l/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->V()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/l/c/a;)Lcom/instagram/common/a/a/m;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ak:Lcom/instagram/common/a/a/m;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/l/c/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ai:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/l/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->ad()V

    return-void
.end method

.method static synthetic g(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/a/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/android/l/c/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->W()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/instagram/android/l/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->ac()V

    return-void
.end method

.method static synthetic j(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/c/v;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->aj:Lcom/instagram/android/l/c/v;

    return-object v0
.end method

.method static synthetic k(Lcom/instagram/android/l/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->ag()V

    return-void
.end method

.method static synthetic l(Lcom/instagram/android/l/c/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->X()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/instagram/android/l/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->Z()V

    return-void
.end method

.method static synthetic n(Lcom/instagram/android/l/c/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/l/c/a;->ad:Z

    return v0
.end method

.method static synthetic o(Lcom/instagram/android/l/c/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->af()V

    return-void
.end method

.method static synthetic p(Lcom/instagram/android/l/c/a;)Lcom/instagram/android/l/f/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ae:Lcom/instagram/android/l/f/a;

    return-object v0
.end method

.method static synthetic q(Lcom/instagram/android/l/c/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ab:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final E()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->W()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->X()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    :cond_1e
    invoke-super {p0}, Lcom/instagram/base/a/c;->E()V

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->ag()V

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->al:Lcom/instagram/common/c/h;

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/g/c;->a(Landroid/app/Activity;)Lcom/instagram/common/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/l/c/a;->al:Lcom/instagram/common/c/h;

    :cond_32
    iget-object v0, p0, Lcom/instagram/android/l/c/a;->al:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    return-void
.end method

.method public final F()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    :cond_12
    iget-object v0, p0, Lcom/instagram/android/l/c/a;->al:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V

    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    return-void
.end method

.method public final G()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->c()V

    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    new-instance v0, Lcom/instagram/android/l/f/a;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/l/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/l/c/a;->ae:Lcom/instagram/android/l/f/a;

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ae:Lcom/instagram/android/l/f/a;

    iget v1, p0, Lcom/instagram/android/l/c/a;->aa:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/f/a;->setType$1b988d18(I)V

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ae:Lcom/instagram/android/l/f/a;

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->Y()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/f/a;->setOnFollowAll(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->X()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ae:Lcom/instagram/android/l/f/a;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/f/a;->setUser(Lcom/instagram/user/c/a;)V

    :cond_2e
    sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/instagram/android/l/c/a;->ae:Lcom/instagram/android/l/f/a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_TYPE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/instagram/android/l/d/a;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "UserListFragment.ARGUMENTS_TYPE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget v0, v0, v3

    iput v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_ACCESS_TOKEN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/l/c/a;->ab:Ljava/lang/String;

    :cond_2f
    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/l/c/a;->ad:Z

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_CLICK_THROUGH"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/l/c/a;->ag:Z

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "UserListFragment.ARGUMENTS_TITLE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5d
    iput-object v0, p0, Lcom/instagram/android/l/c/a;->af:Ljava/lang/String;

    iget v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v3, Lcom/instagram/android/l/d/a;->c:I

    if-eq v0, v3, :cond_71

    iget v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v3, Lcom/instagram/android/l/d/a;->b:I

    if-eq v0, v3, :cond_71

    iget v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v3, Lcom/instagram/android/l/d/a;->a:I

    if-ne v0, v3, :cond_d5

    :cond_71
    move v0, v2

    :goto_72
    new-instance v1, Lcom/instagram/android/l/c/v;

    invoke-direct {v1, p0}, Lcom/instagram/android/l/c/v;-><init>(Lcom/instagram/android/l/c/a;)V

    iput-object v1, p0, Lcom/instagram/android/l/c/a;->aj:Lcom/instagram/android/l/c/v;

    new-instance v1, Lcom/instagram/common/a/a/i;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/a/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    iput-object v1, p0, Lcom/instagram/android/l/c/a;->ak:Lcom/instagram/common/a/a/m;

    sget-object v1, Lcom/instagram/l/c;->d:Lcom/instagram/l/a;

    invoke-virtual {v1}, Lcom/instagram/l/a;->b()Z

    move-result v1

    if-eqz v1, :cond_d7

    sget-object v1, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    :goto_92
    iput-object v1, p0, Lcom/instagram/android/l/c/a;->ah:Lcom/instagram/user/follow/h;

    new-instance v1, Lcom/instagram/android/l/a/f;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/l/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/l/a/f;->a(Landroid/support/v4/app/an;)Lcom/instagram/android/l/a/f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/l/a/f;->a(Landroid/support/v4/app/s;)Lcom/instagram/android/l/a/f;

    move-result-object v1

    iget-boolean v2, p0, Lcom/instagram/android/l/c/a;->ad:Z

    invoke-virtual {v1, v2}, Lcom/instagram/android/l/a/f;->b(Z)Lcom/instagram/android/l/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/l/a/f;->a(Z)Lcom/instagram/android/l/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/c/a;->aj:Lcom/instagram/android/l/c/v;

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/f;->a(Lcom/instagram/ui/widget/loadmore/c;)Lcom/instagram/android/l/a/f;

    move-result-object v0

    iget-boolean v1, p0, Lcom/instagram/android/l/c/a;->ag:Z

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/f;->c(Z)Lcom/instagram/android/l/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/c/a;->ah:Lcom/instagram/user/follow/h;

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/f;->a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/l/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/f;->a()Lcom/instagram/android/l/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->d()V

    return-void

    :cond_d3
    const/4 v0, 0x0

    goto :goto_5d

    :cond_d5
    move v0, v1

    goto :goto_72

    :cond_d7
    sget-object v1, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    goto :goto_92
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->q_()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/c/a;->aj:Lcom/instagram/android/l/c/v;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->ac:Lcom/instagram/android/l/a/a;

    invoke-virtual {p0, v0}, Lcom/instagram/android/l/c/a;->a(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->af:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->W()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->X()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_11
    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_30

    const/4 v0, 0x1

    :goto_1c
    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->W()Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/instagram/a/j;->c:Lcom/instagram/a/j;

    new-instance v1, Lcom/instagram/android/l/c/b;

    invoke-direct {v1, p0}, Lcom/instagram/android/l/c/b;-><init>(Lcom/instagram/android/l/c/a;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    goto :goto_1c

    :cond_32
    iget v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v1, Lcom/instagram/android/l/d/a;->b:I

    if-ne v0, v1, :cond_2f

    sget-object v0, Lcom/instagram/a/j;->b:Lcom/instagram/a/j;

    new-instance v1, Lcom/instagram/android/l/c/g;

    invoke-direct {v1, p0}, Lcom/instagram/android/l/c/g;-><init>(Lcom/instagram/android/l/c/a;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_2f
.end method

.method public final a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/instagram/user/follow/a;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V

    invoke-virtual {v0, p1}, Lcom/instagram/user/follow/a;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final d()V
    .registers 8

    iget-object v0, p0, Lcom/instagram/android/l/c/a;->aj:Lcom/instagram/android/l/c/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/c/v;->b(Z)V

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_FETCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_FETCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/instagram/android/l/c/r;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/l/c/a;->am:Lcom/instagram/api/j/f;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/l/c/r;-><init>(Lcom/instagram/android/l/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/android/l/b/d;->h()V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_SEARCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_SEARCH_STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_SEARCH_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_SEARCH_STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/instagram/android/l/c/c;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/l/c/a;->am:Lcom/instagram/api/j/f;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/l/c/c;-><init>(Lcom/instagram/android/l/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/instagram/android/l/b/d;->a(Ljava/lang/String;)V

    goto :goto_2f

    :cond_70
    iget v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v1, Lcom/instagram/android/l/d/a;->b:I

    if-ne v0, v1, :cond_89

    new-instance v0, Lcom/instagram/android/l/c/d;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/l/c/a;->am:Lcom/instagram/api/j/f;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/instagram/android/l/c/d;-><init>(Lcom/instagram/android/l/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    invoke-virtual {v0}, Lcom/instagram/android/l/b/d;->h()V

    goto :goto_2f

    :cond_89
    iget v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v1, Lcom/instagram/android/l/d/a;->a:I

    if-ne v0, v1, :cond_a2

    new-instance v0, Lcom/instagram/android/l/c/e;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/l/c/a;->am:Lcom/instagram/api/j/f;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/instagram/android/l/c/e;-><init>(Lcom/instagram/android/l/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    invoke-virtual {v0}, Lcom/instagram/android/l/b/d;->h()V

    goto :goto_2f

    :cond_a2
    iget v0, p0, Lcom/instagram/android/l/c/a;->aa:I

    sget v1, Lcom/instagram/android/l/d/a;->c:I

    if-ne v0, v1, :cond_2f

    new-instance v0, Lcom/instagram/android/l/c/f;

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/l/c/a;->am:Lcom/instagram/api/j/f;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/instagram/android/l/c/f;-><init>(Lcom/instagram/android/l/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    invoke-virtual {v0}, Lcom/instagram/android/l/b/d;->h()V

    goto/16 :goto_2f
.end method

.method public final i_()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/l/c/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UserListFragment.ARGUMENTS_ANALYTICS_MODULE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "user_list"

    goto :goto_c
.end method

.method public final j_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/base/a/c;->j_()V

    invoke-direct {p0}, Lcom/instagram/android/l/c/a;->af()V

    return-void
.end method
