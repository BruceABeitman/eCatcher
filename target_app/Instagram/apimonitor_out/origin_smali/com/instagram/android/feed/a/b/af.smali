.class public final Lcom/instagram/android/feed/a/b/af;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/instagram/user/follow/h;)Landroid/view/View;
    .registers 8

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_profile_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/feed/a/b/ar;

    invoke-direct {v2}, Lcom/instagram/android/feed/a/b/ar;-><init>()V

    iput-object v1, v2, Lcom/instagram/android/feed/a/b/ar;->a:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_friend_request_header:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->c:Landroid/view/View;

    iget-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->c:Landroid/view/View;

    invoke-static {v0}, Lcom/instagram/android/a/b/k;->a(Landroid/view/View;)Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_profile_header_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    sget v0, Lcom/facebook/av;->row_profile_header_container_photos:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->e:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_profile_header_textview_photos_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->f:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_profile_header_container_followers:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->g:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_profile_header_textview_followers_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->h:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_profile_header_container_following:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->i:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_profile_header_textview_following_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->j:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_profile_header_button_follow:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->k:Lcom/instagram/user/follow/FollowButton;

    sget v0, Lcom/facebook/av;->row_profile_header_edit_profile:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->t:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->profile_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->l:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_profile_header_textview_biography:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->m:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_profile_header_textview_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->b:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_profile_header_textview_website:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->n:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->o:Landroid/view/ViewGroup;

    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_grid:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->p:Landroid/view/View;

    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->q:Landroid/view/View;

    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_map:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/ProfileMapButton;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->r:Lcom/instagram/android/widget/ProfileMapButton;

    sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_tagged:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/ProfileTagsButton;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->s:Lcom/instagram/android/people/widget/ProfileTagsButton;

    sget v0, Lcom/facebook/av;->similar_accounts_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->u:Landroid/view/ViewGroup;

    iget-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->u:Landroid/view/ViewGroup;

    sget-object v3, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    iget-object v4, v2, Lcom/instagram/android/feed/a/b/ar;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {p0, v5, v3, p1, v4}, Lcom/instagram/android/j/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v2, Lcom/instagram/android/feed/a/b/ar;->u:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method private static a(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_50

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x186a0

    if-ge v0, v1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const v1, 0xf4240

    if-ge v0, v1, :cond_32

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-string v2, "%.0fk"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_32
    int-to-double v0, v0

    const-wide v2, 0x40c3880000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    const-string v2, "%.2fm"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_50
    if-nez p0, :cond_55

    const-string v0, ""

    goto :goto_11

    :cond_55
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public static a(Lcom/instagram/android/feed/a/b/ar;Lcom/instagram/user/c/a;ILjava/util/List;Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/feed/a/n;Lcom/instagram/android/feed/a/b/aq;Lcom/instagram/android/j/d;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/feed/a/b/ar;",
            "Lcom/instagram/user/c/a;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Landroid/support/v4/app/s;",
            "Lcom/instagram/android/feed/a/n;",
            "Lcom/instagram/android/feed/a/b/aq;",
            "Lcom/instagram/android/j/d;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->r:Lcom/instagram/android/widget/ProfileMapButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/ProfileMapButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->s:Lcom/instagram/android/people/widget/ProfileTagsButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setVisibility(I)V

    if-eqz p1, :cond_1ea

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/a/b/n;

    move-object/from16 v0, p8

    invoke-static {v1, p1, p4, p5, v0}, Lcom/instagram/android/a/b/k;->a(Lcom/instagram/android/a/b/n;Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/android/feed/a/b/aq;)V

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_185

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    :goto_2a
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    new-instance v2, Lcom/instagram/android/feed/a/b/ag;

    move-object/from16 v0, p8

    invoke-direct {v2, v0}, Lcom/instagram/android/feed/a/b/ag;-><init>(Lcom/instagram/android/feed/a/b/aq;)V

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->r:Lcom/instagram/android/widget/ProfileMapButton;

    new-instance v2, Lcom/instagram/android/feed/a/b/ai;

    move-object/from16 v0, p8

    invoke-direct {v2, v0}, Lcom/instagram/android/feed/a/b/ai;-><init>(Lcom/instagram/android/feed/a/b/aq;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/ProfileMapButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/af;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->l()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/af;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->o()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/android/feed/a/b/af;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->e:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/feed/a/b/aj;

    invoke-direct {v2, p0}, Lcom/instagram/android/feed/a/b/aj;-><init>(Lcom/instagram/android/feed/a/b/ar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->g:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/feed/a/b/ak;

    invoke-direct {v2, p6, p4, p1}, Lcom/instagram/android/feed/a/b/ak;-><init>(Landroid/support/v4/app/s;Landroid/content/Context;Lcom/instagram/user/c/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->i:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/feed/a/b/al;

    invoke-direct {v2, p6, p4, p1}, Lcom/instagram/android/feed/a/b/al;-><init>(Landroid/support/v4/app/s;Landroid/content/Context;Lcom/instagram/user/c/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8d
    invoke-static {p1}, Lcom/instagram/android/feed/a/b/af;->a(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_19f

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->k:Lcom/instagram/user/follow/FollowButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->k:Lcom/instagram/user/follow/FollowButton;

    const/4 v2, 0x1

    new-instance v3, Lcom/instagram/android/feed/a/b/am;

    move-object/from16 v0, p9

    invoke-direct {v3, v0, p1}, Lcom/instagram/android/feed/a/b/am;-><init>(Lcom/instagram/android/j/d;Lcom/instagram/user/c/a;)V

    invoke-virtual {v1, p1, p5, v2, v3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V

    if-eqz p3, :cond_196

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_196

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->u:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/j/a/e;

    new-instance v5, Lcom/instagram/android/feed/a/b/an;

    move-object/from16 v0, p9

    invoke-direct {v5, p0, v0, p1}, Lcom/instagram/android/feed/a/b/an;-><init>(Lcom/instagram/android/feed/a/b/ar;Lcom/instagram/android/j/d;Lcom/instagram/user/c/a;)V

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v6

    const-string v7, "profile"

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    invoke-static/range {v1 .. v7}, Lcom/instagram/android/j/a/a;->a(Lcom/instagram/android/j/a/e;Ljava/util/List;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/j/a/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->u:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_d4
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b8

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_ed
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c1

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->m:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_106
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ca

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^https?://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->n:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->n:Landroid/widget/TextView;

    new-instance v2, Lcom/instagram/android/feed/a/b/ap;

    invoke-direct {v2, p1, p4}, Lcom/instagram/android/feed/a/b/ap;-><init>(Lcom/instagram/user/c/a;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_131
    invoke-virtual {p1}, Lcom/instagram/user/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    const/4 v1, 0x1

    :goto_150
    iget-object v2, p0, Lcom/instagram/android/feed/a/b/ar;->l:Landroid/view/View;

    if-eqz v1, :cond_1d6

    const/4 v1, 0x0

    :goto_155
    invoke-static {v2, v1}, Lcom/instagram/common/u/f;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->s:Lcom/instagram/android/people/widget/ProfileTagsButton;

    new-instance v2, Lcom/instagram/android/feed/a/b/ah;

    invoke-direct {v2, p1, p6}, Lcom/instagram/android/feed/a/b/ah;-><init>(Lcom/instagram/user/c/a;Landroid/support/v4/app/s;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->s:Lcom/instagram/android/people/widget/ProfileTagsButton;

    invoke-virtual {v1, p1}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setUser(Lcom/instagram/user/c/a;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->s:Lcom/instagram/android/people/widget/ProfileTagsButton;

    invoke-virtual {v1, p2}, Lcom/instagram/android/people/widget/ProfileTagsButton;->setPhotosOfYouCount(I)V

    invoke-static {p1}, Lcom/instagram/user/a/a;->b(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_1e2

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->o:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->p:Landroid/view/View;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/ar;->q:Landroid/view/View;

    invoke-static {v1, v2, p7}, Lcom/instagram/android/widget/ae;->a(Landroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->r:Lcom/instagram/android/widget/ProfileMapButton;

    invoke-virtual {v1, p1}, Lcom/instagram/android/widget/ProfileMapButton;->setUser(Lcom/instagram/user/c/a;)V

    :goto_184
    return-void

    :cond_185
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/au;->profile_anonymous_user:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2a

    :cond_196
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->u:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_d4

    :cond_19f
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->k:Lcom/instagram/user/follow/FollowButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->t:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->t:Landroid/widget/TextView;

    new-instance v2, Lcom/instagram/android/feed/a/b/ao;

    invoke-direct {v2, p6}, Lcom/instagram/android/feed/a/b/ao;-><init>(Landroid/support/v4/app/s;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d4

    :cond_1b8
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ed

    :cond_1c1
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->m:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_106

    :cond_1ca
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->n:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_131

    :cond_1d3
    const/4 v1, 0x0

    goto/16 :goto_150

    :cond_1d6
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/at;->row_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_155

    :cond_1e2
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->o:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_184

    :cond_1ea
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->d:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/au;->profile_anonymous_user:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->f:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->h:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->j:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->n:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p7}, Lcom/instagram/android/feed/a/n;->s()Z

    move-result v1

    if-eqz v1, :cond_232

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->m:Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->user_not_found:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_229
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->o:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_184

    :cond_232
    invoke-virtual {p7}, Lcom/instagram/android/feed/a/n;->t()Z

    move-result v1

    if-eqz v1, :cond_240

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->m:Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->request_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_229

    :cond_240
    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ar;->m:Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->loading:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_229
.end method

.method private static a(Lcom/instagram/user/c/a;)Z
    .registers 2

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
