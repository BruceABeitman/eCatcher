.class public final Lcom/instagram/android/fragment/bh;
.super Lcom/instagram/base/a/b;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Lcom/instagram/a/b;


# instance fields
.field private final a:Lcom/instagram/android/fragment/bn;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    new-instance v0, Lcom/instagram/android/fragment/bn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/bn;-><init>(Lcom/instagram/android/fragment/bh;B)V

    iput-object v0, p0, Lcom/instagram/android/fragment/bh;->a:Lcom/instagram/android/fragment/bn;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/bh;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/bh;->b()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/bh;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bh;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/instagram/android/fragment/fj;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->p()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/az;->find_friends_item_facebook_friends:I

    invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/bh;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

.method private b()V
    .registers 4

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/bh;->a(Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    sget-object v1, Lcom/instagram/share/b/f;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/fragment/bh;->a:Lcom/instagram/android/fragment/bn;

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V

    goto :goto_11
.end method

.method static synthetic b(Lcom/instagram/android/fragment/bh;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/bh;->c()V

    return-void
.end method

.method private c()V
    .registers 4

    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->prompt_when_user_wants_to_skip_finding_friends_during_signup:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->find_friends:I

    new-instance v2, Lcom/instagram/android/fragment/bl;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/bl;-><init>(Lcom/instagram/android/fragment/bh;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->yes_skip_this_step:I

    new-instance v2, Lcom/instagram/android/fragment/bk;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/bk;-><init>(Lcom/instagram/android/fragment/bh;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/fragment/bh;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/fragment/bh;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v1, Lcom/instagram/android/fragment/bb;

    invoke-direct {v1}, Lcom/instagram/android/fragment/bb;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->j()Landroid/os/Bundle;

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

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->l()Landroid/support/v4/app/k;

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

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->l()Landroid/support/v4/app/k;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->l()Landroid/support/v4/app/k;

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

    sget v0, Lcom/facebook/aw;->fragment_find_facebook_friends_prompt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/bh;->a:Lcom/instagram/android/fragment/bn;

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/base/a/b;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lcom/facebook/av;->button_find_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/bi;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bi;-><init>(Lcom/instagram/android/fragment/bh;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->button_skip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/fragment/bj;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bj;-><init>(Lcom/instagram/android/fragment/bh;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->find_friends_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->o()Landroid/content/res/Resources;

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

    new-instance v1, Lcom/instagram/android/fragment/bm;

    invoke-direct {v1, p0}, Lcom/instagram/android/fragment/bm;-><init>(Lcom/instagram/android/fragment/bh;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V

    :try_start_3
    invoke-virtual {p0}, Lcom/instagram/android/fragment/bh;->l()Landroid/support/v4/app/k;

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

    const-string v0, "register_flow_find_friends_facebook_prompt"

    return-object v0
.end method
