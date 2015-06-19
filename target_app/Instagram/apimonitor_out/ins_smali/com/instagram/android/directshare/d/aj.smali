.class public final Lcom/instagram/android/directshare/d/aj;
.super Ljava/lang/Object;
.source "DirectSharePermalinkRecipientsRowViewBinder.java"
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
const/4 v3, 0x0
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->layout_directshare_permalink_recipients:I
invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/directshare/d/an;
invoke-direct {v2, v3}, Lcom/instagram/android/directshare/d/an;-><init>(B)V
sget v0, Lcom/facebook/av;->sender_image:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/directshare/widget/RecipientView;
invoke-static {v2, v0}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;Lcom/instagram/android/directshare/widget/RecipientView;)Lcom/instagram/android/directshare/widget/RecipientView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method public static a(Landroid/view/View;Lcom/instagram/model/b/a;Ljava/util/List;Lcom/instagram/android/directshare/d/am;)V
.registers 12
const/4 v7, 0x1
const/4 v4, 0x0
invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/directshare/d/an;
invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;)Lcom/instagram/android/directshare/widget/RecipientView;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/widget/RecipientView;->setAvatarUrl(Ljava/lang/String;)V
invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;)Lcom/instagram/android/directshare/widget/RecipientView;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/model/b/a;->c()Z
move-result v2
invoke-virtual {p1}, Lcom/instagram/model/b/a;->b()Z
move-result v3
invoke-virtual {v1, v2, v4, v3, v4}, Lcom/instagram/android/directshare/widget/RecipientView;->a(ZZZZ)V
invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;)Lcom/instagram/android/directshare/widget/RecipientView;
move-result-object v1
new-instance v2, Lcom/instagram/android/directshare/d/ak;
invoke-direct {v2, p3, p1, v0}, Lcom/instagram/android/directshare/d/ak;-><init>(Lcom/instagram/android/directshare/d/am;Lcom/instagram/model/b/a;Lcom/instagram/android/directshare/d/an;)V
invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/widget/RecipientView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->b(Lcom/instagram/android/directshare/d/an;)Ljava/util/List;
move-result-object v1
if-nez v1, :cond_88
sget v1, Lcom/facebook/av;->recipients_container:I
invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
const/16 v3, 0x8
invoke-static {v2, v3}, Lcom/instagram/common/u/f;->a(Landroid/util/DisplayMetrics;I)F
move-result v2
float-to-int v5, v2
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
invoke-static {v0, v2}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;Ljava/util/List;)Ljava/util/List;
move v3, v4
:goto_58
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v2
if-ge v3, v2, :cond_88
new-instance v2, Lcom/instagram/android/directshare/widget/RecipientView;
invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v6
invoke-direct {v2, v6}, Lcom/instagram/android/directshare/widget/RecipientView;-><init>(Landroid/content/Context;)V
invoke-virtual {v2, v7}, Lcom/instagram/android/directshare/widget/RecipientView;->setClickable(Z)V
invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->b(Lcom/instagram/android/directshare/d/an;)Ljava/util/List;
move-result-object v6
invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v6
add-int/lit8 v6, v6, -0x1
if-eq v3, v6, :cond_84
invoke-virtual {v2}, Lcom/instagram/android/directshare/widget/RecipientView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;
iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
:cond_84
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_58
:cond_88
:goto_88
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v1
if-ge v4, v1, :cond_c3
invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->b(Lcom/instagram/android/directshare/d/an;)Ljava/util/List;
move-result-object v1
invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/android/directshare/widget/RecipientView;
invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/instagram/model/b/a;
invoke-virtual {v2}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/instagram/android/directshare/widget/RecipientView;->setAvatarUrl(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/instagram/model/b/a;->c()Z
move-result v3
invoke-virtual {v2}, Lcom/instagram/model/b/a;->d()Z
move-result v5
invoke-virtual {v2}, Lcom/instagram/model/b/a;->b()Z
move-result v2
invoke-virtual {v1, v3, v5, v2, v7}, Lcom/instagram/android/directshare/widget/RecipientView;->a(ZZZZ)V
new-instance v2, Lcom/instagram/android/directshare/d/al;
invoke-direct {v2, p3, p2, v4, v1}, Lcom/instagram/android/directshare/d/al;-><init>(Lcom/instagram/android/directshare/d/am;Ljava/util/List;ILcom/instagram/android/directshare/widget/RecipientView;)V
invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/widget/RecipientView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
add-int/lit8 v4, v4, 0x1
goto :goto_88
:cond_c3
return-void
.end method