.class public Lcom/instagram/android/l/a/g;
.super Ljava/lang/Object;
.source "UserRowViewBinder.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected a(Landroid/content/Context;)Landroid/view/View;
.registers 5
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_user:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;
.registers 12
const/16 v6, 0x8
const/4 v5, 0x0
invoke-virtual {p0, p1}, Lcom/instagram/android/l/a/g;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/l/a/k;
invoke-direct {v2}, Lcom/instagram/android/l/a/k;-><init>()V
iput-object v1, v2, Lcom/instagram/android/l/a/k;->a:Landroid/view/View;
sget v0, Lcom/facebook/av;->row_user_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/instagram/android/l/a/k;->b:Landroid/view/View;
sget v0, Lcom/facebook/av;->row_user_imageview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;
iput-object v0, v2, Lcom/instagram/android/l/a/k;->c:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
sget v0, Lcom/facebook/av;->row_user_fullname:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/l/a/k;->d:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_user_username:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/l/a/k;->e:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_user_follow_button_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, v2, Lcom/instagram/android/l/a/k;->f:Landroid/view/ViewGroup;
iget-object v0, v2, Lcom/instagram/android/l/a/k;->f:Landroid/view/ViewGroup;
if-eqz v0, :cond_66
sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;
if-eq p2, v0, :cond_4a
sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;
if-ne p3, v0, :cond_95
:cond_4a
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v3, Lcom/facebook/aw;->follow_button_large:I
iget-object v4, v2, Lcom/instagram/android/l/a/k;->f:Landroid/view/ViewGroup;
invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/user/follow/FollowButton;
iput-object v0, v2, Lcom/instagram/android/l/a/k;->g:Lcom/instagram/user/follow/FollowButton;
:goto_5a
iget-object v0, v2, Lcom/instagram/android/l/a/k;->g:Lcom/instagram/user/follow/FollowButton;
invoke-virtual {v0, v6}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V
iget-object v0, v2, Lcom/instagram/android/l/a/k;->f:Landroid/view/ViewGroup;
iget-object v3, v2, Lcom/instagram/android/l/a/k;->g:Lcom/instagram/user/follow/FollowButton;
invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_66
sget v0, Lcom/facebook/av;->bottom_row_divider:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/instagram/android/l/a/k;->h:Landroid/view/View;
sget v0, Lcom/facebook/av;->similar_accounts_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, v2, Lcom/instagram/android/l/a/k;->i:Landroid/view/ViewGroup;
if-eqz p4, :cond_91
iget-object v0, v2, Lcom/instagram/android/l/a/k;->i:Landroid/view/ViewGroup;
if-eqz v0, :cond_91
iget-object v0, v2, Lcom/instagram/android/l/a/k;->i:Landroid/view/ViewGroup;
const/4 v3, 0x0
sget-object v4, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;
iget-object v5, v2, Lcom/instagram/android/l/a/k;->c:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-static {p1, v3, v4, p3, v5}, Lcom/instagram/android/j/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Landroid/view/View;)Landroid/view/View;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, v2, Lcom/instagram/android/l/a/k;->i:Landroid/view/ViewGroup;
invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V
:cond_91
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
:cond_95
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v3, Lcom/facebook/aw;->follow_button_medium:I
iget-object v4, v2, Lcom/instagram/android/l/a/k;->f:Landroid/view/ViewGroup;
invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/user/follow/FollowButton;
iput-object v0, v2, Lcom/instagram/android/l/a/k;->g:Lcom/instagram/user/follow/FollowButton;
goto :goto_5a
.end method
.method public final a(Lcom/instagram/android/l/a/k;Lcom/instagram/user/c/a;ZZZZLandroid/support/v4/app/an;Landroid/support/v4/app/s;Ljava/util/List;Lcom/instagram/android/j/d;)V
.registers 19
iget-object v1, p1, Lcom/instagram/android/l/a/k;->c:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-virtual {p2}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V
if-eqz p4, :cond_a4
invoke-virtual {p2}, Lcom/instagram/user/c/a;->B()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_a4
invoke-virtual {p2}, Lcom/instagram/user/c/a;->B()Ljava/lang/String;
move-result-object v1
:goto_19
invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_aa
iget-object v1, p1, Lcom/instagram/android/l/a/k;->d:Landroid/widget/TextView;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
:goto_26
iget-object v1, p1, Lcom/instagram/android/l/a/k;->e:Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
if-eqz p3, :cond_c5
iget-object v1, p1, Lcom/instagram/android/l/a/k;->g:Lcom/instagram/user/follow/FollowButton;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V
iget-object v1, p1, Lcom/instagram/android/l/a/k;->g:Lcom/instagram/user/follow/FollowButton;
const/4 v2, 0x0
new-instance v3, Lcom/instagram/android/l/a/h;
move-object/from16 v0, p10
invoke-direct {v3, p0, v0, p2}, Lcom/instagram/android/l/a/h;-><init>(Lcom/instagram/android/l/a/g;Lcom/instagram/android/j/d;Lcom/instagram/user/c/a;)V
invoke-virtual {v1, p2, p7, v2, v3}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;ZLcom/instagram/user/follow/g;)V
if-eqz p9, :cond_b7
invoke-interface/range {p9 .. p9}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_b7
iget-object v1, p1, Lcom/instagram/android/l/a/k;->i:Landroid/view/ViewGroup;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/android/j/a/e;
new-instance v5, Lcom/instagram/android/l/a/i;
move-object/from16 v0, p10
invoke-direct {v5, p0, p1, v0, p2}, Lcom/instagram/android/l/a/i;-><init>(Lcom/instagram/android/l/a/g;Lcom/instagram/android/l/a/k;Lcom/instagram/android/j/d;Lcom/instagram/user/c/a;)V
invoke-virtual {p2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v6
const-string v7, "follow_list"
move-object/from16 v2, p9
move-object v3, p7
move-object/from16 v4, p8
invoke-static/range {v1 .. v7}, Lcom/instagram/android/j/a/a;->a(Lcom/instagram/android/j/a/e;Ljava/util/List;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/j/a/d;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p1, Lcom/instagram/android/l/a/k;->i:Landroid/view/ViewGroup;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v1, p1, Lcom/instagram/android/l/a/k;->h:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:cond_7b
:goto_7b
if-eqz p5, :cond_8e
iget-object v7, p1, Lcom/instagram/android/l/a/k;->b:Landroid/view/View;
new-instance v1, Lcom/instagram/android/l/a/j;
move-object v2, p0
move v3, p6
move-object/from16 v4, p10
move-object v5, p2
move-object/from16 v6, p8
invoke-direct/range {v1 .. v6}, Lcom/instagram/android/l/a/j;-><init>(Lcom/instagram/android/l/a/g;ZLcom/instagram/android/j/d;Lcom/instagram/user/c/a;Landroid/support/v4/app/s;)V
invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_8e
if-eqz p6, :cond_9e
iget-object v1, p1, Lcom/instagram/android/l/a/k;->h:Landroid/view/View;
sget v2, Lcom/facebook/as;->white:I
invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
iget-object v1, p1, Lcom/instagram/android/l/a/k;->b:Landroid/view/View;
sget v2, Lcom/facebook/au;->bg_simple_row_grey:I
invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
:cond_9e
iget-object v1, p1, Lcom/instagram/android/l/a/k;->a:Landroid/view/View;
invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-void
:cond_a4
invoke-virtual {p2}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v1
goto/16 :goto_19
:cond_aa
iget-object v2, p1, Lcom/instagram/android/l/a/k;->d:Landroid/widget/TextView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v2, p1, Lcom/instagram/android/l/a/k;->d:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_26
:cond_b7
iget-object v1, p1, Lcom/instagram/android/l/a/k;->i:Landroid/view/ViewGroup;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v1, p1, Lcom/instagram/android/l/a/k;->h:Landroid/view/View;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_7b
:cond_c5
iget-object v1, p1, Lcom/instagram/android/l/a/k;->g:Lcom/instagram/user/follow/FollowButton;
if-eqz v1, :cond_7b
iget-object v1, p1, Lcom/instagram/android/l/a/k;->g:Lcom/instagram/user/follow/FollowButton;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V
goto :goto_7b
.end method