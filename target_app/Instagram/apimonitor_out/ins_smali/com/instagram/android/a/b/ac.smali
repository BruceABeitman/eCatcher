.class public final Lcom/instagram/android/a/b/ac;
.super Ljava/lang/Object;
.source "RecommendedUserRowViewBinder.java"
.method public static a(Landroid/content/Context;Lcom/instagram/user/follow/h;)Landroid/view/View;
.registers 7
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_recommended_user:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/a/b/af;
invoke-direct {v2}, Lcom/instagram/android/a/b/af;-><init>()V
sget v0, Lcom/facebook/av;->row_recommended_user_imageview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;
iput-object v0, v2, Lcom/instagram/android/a/b/af;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
sget v0, Lcom/facebook/av;->row_recommended_user_description:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/b/af;->c:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_recommended_user_username:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/b/af;->d:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_recommended_user_fullname:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/b/af;->e:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_recommended_social_context:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/b/af;->f:Landroid/widget/TextView;
sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;
if-ne p1, v0, :cond_92
sget v0, Lcom/facebook/av;->row_recommended_user_follow_button_large:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/user/follow/FollowButton;
:goto_4e
iput-object v0, v2, Lcom/instagram/android/a/b/af;->g:Lcom/instagram/user/follow/FollowButton;
iget-object v3, v2, Lcom/instagram/android/a/b/af;->h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;
const/4 v4, 0x0
sget v0, Lcom/facebook/av;->row_recommended_user_imageview_1:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;
aput-object v0, v3, v4
iget-object v3, v2, Lcom/instagram/android/a/b/af;->h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;
const/4 v4, 0x1
sget v0, Lcom/facebook/av;->row_recommended_user_imageview_2:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;
aput-object v0, v3, v4
iget-object v3, v2, Lcom/instagram/android/a/b/af;->h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;
const/4 v4, 0x2
sget v0, Lcom/facebook/av;->row_recommended_user_imageview_3:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;
aput-object v0, v3, v4
iget-object v3, v2, Lcom/instagram/android/a/b/af;->h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;
const/4 v4, 0x3
sget v0, Lcom/facebook/av;->row_recommended_user_imageview_4:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;
aput-object v0, v3, v4
sget v0, Lcom/facebook/av;->row_recommended_user_row:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, v2, Lcom/instagram/android/a/b/af;->a:Landroid/view/ViewGroup;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
:cond_92
sget v0, Lcom/facebook/av;->row_recommended_user_follow_button_medium:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/user/follow/FollowButton;
goto :goto_4e
.end method
.method public static a(Lcom/instagram/android/a/b/af;ILcom/instagram/user/d/a;Landroid/support/v4/app/s;ZLandroid/support/v4/app/an;Z)V
.registers 13
const/16 v3, 0x8
const/4 v5, 0x4
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/a/b/af;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-virtual {p2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/instagram/user/d/a;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_a8
iget-object v1, p0, Lcom/instagram/android/a/b/af;->c:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->c:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
:goto_29
iget-object v0, p0, Lcom/instagram/android/a/b/af;->d:Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_af
iget-object v0, p0, Lcom/instagram/android/a/b/af;->e:Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/user/c/a;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->e:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
:goto_5e
invoke-virtual {p2}, Lcom/instagram/user/d/a;->e()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_b5
iget-object v0, p0, Lcom/instagram/android/a/b/af;->f:Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/instagram/user/d/a;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->f:Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/instagram/user/d/a;->f()I
move-result v1
invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->f:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
:goto_7f
invoke-virtual {p2}, Lcom/instagram/user/d/a;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
move v1, v2
:goto_88
if-ge v1, v5, :cond_c3
if-ge v1, v3, :cond_bb
iget-object v0, p0, Lcom/instagram/android/a/b/af;->h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;
aget-object v4, v0, v1
invoke-virtual {p2}, Lcom/instagram/user/d/a;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;
aget-object v0, v0, v1
invoke-virtual {v0, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V
:goto_a4
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_88
:cond_a8
iget-object v0, p0, Lcom/instagram/android/a/b/af;->c:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_29
:cond_af
iget-object v0, p0, Lcom/instagram/android/a/b/af;->e:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_5e
:cond_b5
iget-object v0, p0, Lcom/instagram/android/a/b/af;->f:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_7f
:cond_bb
iget-object v0, p0, Lcom/instagram/android/a/b/af;->h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;
aget-object v0, v0, v1
invoke-virtual {v0, v5}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V
goto :goto_a4
:cond_c3
iget-object v0, p0, Lcom/instagram/android/a/b/af;->g:Lcom/instagram/user/follow/FollowButton;
invoke-virtual {v0, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->g:Lcom/instagram/user/follow/FollowButton;
invoke-virtual {p2}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v1
new-instance v3, Lcom/instagram/android/a/b/ad;
invoke-direct {v3, p6, p3, p2, p1}, Lcom/instagram/android/a/b/ad;-><init>(ZLandroid/support/v4/app/s;Lcom/instagram/user/d/a;I)V
invoke-virtual {v0, v1, p5, v2, v3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V
if-eqz p4, :cond_110
new-instance v1, Lcom/instagram/android/a/b/ae;
invoke-direct {v1, p6, p3, p2, p1}, Lcom/instagram/android/a/b/ae;-><init>(ZLandroid/support/v4/app/s;Lcom/instagram/user/d/a;I)V
invoke-virtual {p2}, Lcom/instagram/user/d/a;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
:goto_e5
if-ge v2, v5, :cond_f7
iget-object v0, p0, Lcom/instagram/android/a/b/af;->h:[Lcom/instagram/common/ui/widget/imageview/IgImageView;
aget-object v4, v0, v2
if-ge v2, v3, :cond_f5
move-object v0, v1
:goto_ee
invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_e5
:cond_f5
const/4 v0, 0x0
goto :goto_ee
:cond_f7
iget-object v0, p0, Lcom/instagram/android/a/b/af;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->d:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->e:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->f:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/a/b/af;->c:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_110
return-void
.end method