.class public final Lcom/instagram/user/e/a/a/a;
.super Ljava/lang/Object;
.source "RequestedUserRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/instagram/user/follow/h;)Landroid/view/View;
    .registers 6

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_requested_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/user/e/a/a/f;

    invoke-direct {v2}, Lcom/instagram/user/e/a/a/f;-><init>()V

    invoke-static {v2, v1}, Lcom/instagram/user/e/a/a/f;->a(Lcom/instagram/user/e/a/a/f;Landroid/view/View;)Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-static {v2, v0}, Lcom/instagram/user/e/a/a/f;->a(Lcom/instagram/user/e/a/a/f;Lcom/instagram/common/ui/widget/imageview/CircularImageView;)Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    sget v0, Lcom/facebook/av;->row_user_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/user/e/a/a/f;->a(Lcom/instagram/user/e/a/a/f;Landroid/widget/TextView;)Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_user_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/user/e/a/a/f;->b(Lcom/instagram/user/e/a/a/f;Landroid/widget/TextView;)Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_requested_user_approval_actions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/user/e/a/a/f;->b(Lcom/instagram/user/e/a/a/f;Landroid/view/View;)Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_requested_user_accept:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/user/e/a/a/f;->c(Lcom/instagram/user/e/a/a/f;Landroid/view/View;)Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_requested_user_ignore:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/user/e/a/a/f;->d(Lcom/instagram/user/e/a/a/f;Landroid/view/View;)Landroid/view/View;

    sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    if-ne p2, v0, :cond_62

    sget v0, Lcom/facebook/av;->row_requested_user_follow_button_large:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    :goto_5b
    invoke-static {v2, v0}, Lcom/instagram/user/e/a/a/f;->a(Lcom/instagram/user/e/a/a/f;Lcom/instagram/user/follow/FollowButton;)Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_62
    sget v0, Lcom/facebook/av;->row_requested_user_follow_button_medium:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    goto :goto_5b
.end method

.method public static a(Lcom/instagram/user/e/a/a/e;Lcom/instagram/user/e/a/a/f;Lcom/instagram/user/c/a;IZ)V
    .registers 9

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->a(Lcom/instagram/user/e/a/a/f;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/user/e/a/a/b;

    invoke-direct {v1, p0, p3}, Lcom/instagram/user/e/a/a/b;-><init>(Lcom/instagram/user/e/a/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->b(Lcom/instagram/user/e/a/a/f;)Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->c(Lcom/instagram/user/e/a/a/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->d(Lcom/instagram/user/e/a/a/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_36
    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->e(Lcom/instagram/user/e/a/a/f;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/user/e/a/a/c;

    invoke-direct {v1, p0, p3}, Lcom/instagram/user/e/a/a/c;-><init>(Lcom/instagram/user/e/a/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->f(Lcom/instagram/user/e/a/a/f;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/user/e/a/a/d;

    invoke-direct {v1, p0, p3}, Lcom/instagram/user/e/a/a/d;-><init>(Lcom/instagram/user/e/a/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->g(Lcom/instagram/user/e/a/a/f;)Lcom/instagram/user/follow/FollowButton;

    move-result-object v0

    check-cast p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->y()Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;)V

    if-eqz p4, :cond_85

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->x()Z

    move-result v0

    if-nez v0, :cond_85

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->h(Lcom/instagram/user/e/a/a/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->g(Lcom/instagram/user/e/a/a/f;)Lcom/instagram/user/follow/FollowButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    :goto_71
    return-void

    :cond_72
    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->d(Lcom/instagram/user/e/a/a/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->d(Lcom/instagram/user/e/a/a/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_36

    :cond_85
    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->h(Lcom/instagram/user/e/a/a/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/instagram/user/e/a/a/f;->g(Lcom/instagram/user/e/a/a/f;)Lcom/instagram/user/follow/FollowButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    goto :goto_71
.end method
