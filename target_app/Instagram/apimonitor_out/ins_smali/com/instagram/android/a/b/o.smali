.class public final Lcom/instagram/android/a/b/o;
.super Ljava/lang/Object;
.source "HashtagRowViewBinder.java"
.method public static a(Landroid/content/Context;)Landroid/view/View;
.registers 4
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_hashtag:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/a/b/p;
invoke-direct {v2}, Lcom/instagram/android/a/b/p;-><init>()V
sget v0, Lcom/facebook/av;->row_hashtag_textview_tag_name:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {v2, v0}, Lcom/instagram/android/a/b/p;->a(Lcom/instagram/android/a/b/p;Landroid/widget/TextView;)Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_hashtag_textview_media_count:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {v2, v0}, Lcom/instagram/android/a/b/p;->b(Lcom/instagram/android/a/b/p;Landroid/widget/TextView;)Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method public static a(Lcom/instagram/android/a/b/p;Lcom/instagram/android/h/c;Landroid/content/Context;)V
.registers 8
const/4 v4, 0x0
invoke-static {p0}, Lcom/instagram/android/a/b/p;->a(Lcom/instagram/android/a/b/p;)Landroid/widget/TextView;
move-result-object v0
const-string v1, "#%s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/instagram/android/h/c;->a()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/android/h/c;->b()I
move-result v1
invoke-static {v0, v1}, Lcom/instagram/android/util/d;->a(Landroid/content/res/Resources;I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_33
invoke-static {p0}, Lcom/instagram/android/a/b/p;->b(Lcom/instagram/android/a/b/p;)Landroid/widget/TextView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:goto_32
return-void
:cond_33
invoke-static {p0}, Lcom/instagram/android/a/b/p;->b(Lcom/instagram/android/a/b/p;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
invoke-static {p0}, Lcom/instagram/android/a/b/p;->b(Lcom/instagram/android/a/b/p;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_32
.end method