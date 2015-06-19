.class public final Lcom/instagram/android/a/b/am;
.super Ljava/lang/Object;
.source "ReviewPhotoNameAndCountRow.java"
.method public static a(Landroid/content/Context;)Landroid/view/View;
.registers 4
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_review_name:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/a/b/ao;
invoke-direct {v2}, Lcom/instagram/android/a/b/ao;-><init>()V
sget v0, Lcom/facebook/av;->row_review_map_textview_expanded_copy:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/b/ao;->a:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_review_name_textview_name:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/b/ao;->b:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_review_name_button_deselect_cluster:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/instagram/android/a/b/ao;->c:Landroid/widget/ImageView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method public static a(Landroid/content/Context;Lcom/instagram/android/a/b/ao;Lcom/instagram/android/a/p;)V
.registers 8
const/4 v4, 0x0
const/4 v2, 0x1
iget v0, p2, Lcom/instagram/android/a/p;->b:I
if-le v0, v2, :cond_44
iget-object v0, p1, Lcom/instagram/android/a/b/ao;->a:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->you_geotagged_x_photos_near:I
new-array v2, v2, [Ljava/lang/Object;
iget v3, p2, Lcom/instagram/android/a/p;->b:I
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_1b
iget-object v0, p1, Lcom/instagram/android/a/b/ao;->b:Landroid/widget/TextView;
iget-object v1, p2, Lcom/instagram/android/a/p;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
iget-object v1, p2, Lcom/instagram/android/a/p;->a:Lcom/instagram/android/maps/b/f;
invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Ljava/util/List;)Z
move-result v0
iget-object v1, p1, Lcom/instagram/android/a/b/ao;->c:Landroid/widget/ImageView;
if-eqz v0, :cond_5a
const/16 v0, 0x80
:goto_36
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V
iget-object v0, p1, Lcom/instagram/android/a/b/ao;->c:Landroid/widget/ImageView;
new-instance v1, Lcom/instagram/android/a/b/an;
invoke-direct {v1, p2, p1}, Lcom/instagram/android/a/b/an;-><init>(Lcom/instagram/android/a/p;Lcom/instagram/android/a/b/ao;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
:cond_44
iget-object v0, p1, Lcom/instagram/android/a/b/ao;->a:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->you_geotagged_x_photo_near:I
new-array v2, v2, [Ljava/lang/Object;
iget v3, p2, Lcom/instagram/android/a/p;->b:I
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_1b
:cond_5a
const/16 v0, 0xff
goto :goto_36
.end method