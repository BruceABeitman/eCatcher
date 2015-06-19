.class public final Lcom/instagram/i/a/a/m;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderUserFollow.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .registers 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_newsfeed_story_user_follow:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/i/a/a/p;

    invoke-direct {v2}, Lcom/instagram/i/a/a/p;-><init>()V

    sget v0, Lcom/facebook/av;->row_newsfeed_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v2, Lcom/instagram/i/a/a/p;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    sget v0, Lcom/facebook/av;->row_newsfeed_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/i/a/a/p;->b:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_newsfeed_follow_button_holder:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/i/a/a/p;->c:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_newsfeed_follow_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    iput-object v0, v2, Lcom/instagram/i/a/a/p;->d:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/i/a/a/p;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)V
    .registers 9

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v0, p2, Lcom/instagram/i/a/a/p;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {p3}, Lcom/instagram/i/d/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/instagram/i/a/a/p;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    new-instance v1, Lcom/instagram/i/a/a/n;

    invoke-direct {v1, p4, p3}, Lcom/instagram/i/a/a/n;-><init>(Lcom/instagram/i/a/a/a;Lcom/instagram/i/d/c;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/instagram/i/a/a/p;->b:Landroid/widget/TextView;

    invoke-static {p0, p3, p4}, Lcom/instagram/i/a;->a(Landroid/content/Context;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/instagram/i/a/a/p;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p3}, Lcom/instagram/i/d/c;->i()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p2, Lcom/instagram/i/a/a/p;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/instagram/i/a/a/p;->d:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {v0, v3}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    iget-object v0, p2, Lcom/instagram/i/a/a/p;->d:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {p3}, Lcom/instagram/i/d/c;->i()Lcom/instagram/user/c/a;

    move-result-object v1

    new-instance v2, Lcom/instagram/i/a/a/o;

    invoke-direct {v2, p4, p3}, Lcom/instagram/i/a/a/o;-><init>(Lcom/instagram/i/a/a/a;Lcom/instagram/i/d/c;)V

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V

    :goto_46
    return-void

    :cond_47
    iget-object v0, p2, Lcom/instagram/i/a/a/p;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/instagram/i/a/a/p;->d:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {v0, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    goto :goto_46
.end method
