.class public final Lcom/instagram/android/fragment/bb;
.super Lcom/instagram/base/a/b;
.source "FindContactListFriendsPromptFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/bb;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/bb;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->j()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/instagram/android/fragment/bb;->c()V

    :goto_1d
    return-void

    :cond_1e
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->prompt_when_user_wants_to_skip_finding_friends_during_signup:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->find_friends:I

    new-instance v2, Lcom/instagram/android/fragment/bf;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/bf;-><init>(Lcom/instagram/android/fragment/bb;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_skip_this_step:I

    new-instance v2, Lcom/instagram/android/fragment/be;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/be;-><init>(Lcom/instagram/android/fragment/bb;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1d
.end method

.method static synthetic b(Lcom/instagram/android/fragment/bb;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/bb;->c()V

    return-void
.end method

.method private c()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/dr;

    invoke-direct {v1}, Lcom/instagram/android/fragment/dr;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->j()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    :cond_12
    invoke-super {p0}, Lcom/instagram/base/a/b;->E()V

    return-void
.end method

.method public final F()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V

    :cond_12
    invoke-super {p0}, Lcom/instagram/base/a/b;->F()V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    sget v0, Lcom/facebook/aw;->fragment_find_contact_list_friends_prompt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/facebook/av;->button_find_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/bc;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bc;-><init>(Lcom/instagram/android/fragment/bb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->button_skip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/bd;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bd;-><init>(Lcom/instagram/android/fragment/bb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    sget v0, Lcom/facebook/az;->find_friends_menu_label:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V

    sget-object v0, Lcom/instagram/a/j;->c:Lcom/instagram/a/j;

    new-instance v1, Lcom/instagram/android/fragment/bg;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bg;-><init>(Lcom/instagram/android/fragment/bb;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    :try_start_3
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bb;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->k()V
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "register_flow_find_friends_contacts_prompt"

    return-object v0
.end method
