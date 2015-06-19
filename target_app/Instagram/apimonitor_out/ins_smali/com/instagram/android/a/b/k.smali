.class public final Lcom/instagram/android/a/b/k;
.super Ljava/lang/Object;
.source "FriendRequestHeaderRowViewBinder.java"
.method public static a(Landroid/view/View;)Landroid/view/View;
.registers 3
new-instance v1, Lcom/instagram/android/a/b/n;
invoke-direct {v1}, Lcom/instagram/android/a/b/n;-><init>()V
sget v0, Lcom/facebook/av;->row_friend_request_header_textview:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {v1, v0}, Lcom/instagram/android/a/b/n;->a(Lcom/instagram/android/a/b/n;Landroid/widget/TextView;)Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_friend_request_header_button_approve:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/android/a/b/n;->a(Lcom/instagram/android/a/b/n;Landroid/view/View;)Landroid/view/View;
sget v0, Lcom/facebook/av;->row_friend_request_header_button_ignore:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/android/a/b/n;->b(Lcom/instagram/android/a/b/n;Landroid/view/View;)Landroid/view/View;
invoke-static {v1, p0}, Lcom/instagram/android/a/b/n;->c(Lcom/instagram/android/a/b/n;Landroid/view/View;)Landroid/view/View;
invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object p0
.end method
.method public static a(Lcom/instagram/android/a/b/n;Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/android/feed/a/b/aq;)V
.registers 11
const/4 v5, 0x1
const/4 v4, 0x0
invoke-virtual {p1}, Lcom/instagram/user/c/a;->x()Z
move-result v0
if-eqz v0, :cond_7b
invoke-interface {p4}, Lcom/instagram/android/feed/a/b/aq;->s_()Z
move-result v0
if-eqz v0, :cond_7b
invoke-static {p0}, Lcom/instagram/android/a/b/n;->a(Lcom/instagram/android/a/b/n;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
new-instance v0, Landroid/text/SpannableStringBuilder;
sget v1, Lcom/facebook/az;->x_wants_to_follow_you:I
new-array v2, v5, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
new-instance v1, Landroid/text/style/StyleSpan;
invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
const/16 v3, 0x21
invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
invoke-static {p0}, Lcom/instagram/android/a/b/n;->b(Lcom/instagram/android/a/b/n;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {p0}, Lcom/instagram/android/a/b/n;->c(Lcom/instagram/android/a/b/n;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_62
invoke-static {p0}, Lcom/instagram/android/a/b/n;->c(Lcom/instagram/android/a/b/n;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/instagram/a/c;
invoke-static {p0}, Lcom/instagram/android/a/b/n;->c(Lcom/instagram/android/a/b/n;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
move-result-object v2
sget-object v3, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;
const/4 v4, 0x3
invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_62
invoke-static {p0}, Lcom/instagram/android/a/b/n;->c(Lcom/instagram/android/a/b/n;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/instagram/android/a/b/l;
invoke-direct {v1, p2, p3, p1, p0}, Lcom/instagram/android/a/b/l;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/android/a/b/n;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {p0}, Lcom/instagram/android/a/b/n;->d(Lcom/instagram/android/a/b/n;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/instagram/android/a/b/m;
invoke-direct {v1, p2, p3, p1, p0}, Lcom/instagram/android/a/b/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/user/c/a;Lcom/instagram/android/a/b/n;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_7a
return-void
:cond_7b
invoke-static {p0}, Lcom/instagram/android/a/b/n;->a(Lcom/instagram/android/a/b/n;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_7a
.end method