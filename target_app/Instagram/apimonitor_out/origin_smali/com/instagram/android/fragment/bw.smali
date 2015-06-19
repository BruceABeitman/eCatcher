.class public final Lcom/instagram/android/fragment/bw;
.super Lcom/instagram/base/a/b;
.source "FindVkontakteFriendsPromptFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/bw;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/bw;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/instagram/android/fragment/fj;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->p()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/az;->find_friends_item_vkontakte_friends:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/bw;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

.method private b()V
    .registers 2

    invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/bw;->a(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {p0}, Lcom/instagram/share/vkontakte/VkontakteAuthActivity;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_d
.end method

.method static synthetic b(Lcom/instagram/android/fragment/bw;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/bw;->c()V

    return-void
.end method

.method private c()V
    .registers 4

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->prompt_when_user_wants_to_skip_finding_friends_during_signup:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->find_friends:I

    new-instance v2, Lcom/instagram/android/fragment/ca;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ca;-><init>(Lcom/instagram/android/fragment/bw;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_skip_this_step:I

    new-instance v2, Lcom/instagram/android/fragment/bz;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/bz;-><init>(Lcom/instagram/android/fragment/bw;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/bw;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/bw;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/bb;

    invoke-direct {v1}, Lcom/instagram/android/fragment/bb;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->j()Landroid/os/Bundle;

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

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->l()Landroid/support/v4/app/k;

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

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->l()Landroid/support/v4/app/k;

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

    sget v0, Lcom/facebook/aw;->fragment_find_vkontakte_friends_prompt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_10

    invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/bw;->a(Ljava/lang/String;)V

    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/base/a/b;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/facebook/av;->button_find_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/bx;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bx;-><init>(Lcom/instagram/android/fragment/bw;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->button_skip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/by;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/by;-><init>(Lcom/instagram/android/fragment/bw;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->find_friends_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->o()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    sget v0, Lcom/facebook/az;->find_friends_menu_label:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V

    sget-object v0, Lcom/instagram/a/j;->c:Lcom/instagram/a/j;

    new-instance v1, Lcom/instagram/android/fragment/cb;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/cb;-><init>(Lcom/instagram/android/fragment/bw;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    :try_start_3
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bw;->l()Landroid/support/v4/app/k;

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

    const-string v0, "register_flow_find_friends_vkontakte_prompt"

    return-object v0
.end method
