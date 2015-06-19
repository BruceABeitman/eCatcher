.class public final Lcom/instagram/android/a/b/ag;
.super Ljava/lang/Object;
.source "ReviewPhotoHeaderRow.java"
.method public static a(Landroid/content/Context;)Landroid/view/View;
.registers 4
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_review_photo_map:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/a/b/ai;
invoke-direct {v2}, Lcom/instagram/android/a/b/ai;-><init>()V
sget v0, Lcom/facebook/av;->row_review_photo_map_textview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/b/ai;->a:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method public static a(Landroid/content/Context;Lcom/instagram/android/a/b/ai;)V
.registers 9
const/4 v3, 0x0
const/4 v2, 0x1
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->h()I
move-result v0
if-lez v0, :cond_71
move v1, v2
:goto_d
if-eqz v1, :cond_73
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v4, Lcom/facebook/az;->please_select_the_photos_deselect_link:I
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_19
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
sget v5, Lcom/facebook/az;->please_select_the_photos:I
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
new-array v5, v2, [Ljava/lang/Object;
aput-object v0, v5, v3
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
new-instance v4, Landroid/text/SpannableStringBuilder;
invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
new-instance v5, Lcom/instagram/android/a/b/ah;
invoke-direct {v5, p0, v1}, Lcom/instagram/android/a/b/ah;-><init>(Landroid/content/Context;Z)V
iget-object v1, p1, Lcom/instagram/android/a/b/ai;->a:Landroid/widget/TextView;
new-instance v6, Landroid/text/method/LinkMovementMethod;
invoke-direct {v6}, Landroid/text/method/LinkMovementMethod;-><init>()V
invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v6, "("
invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x2
invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
:goto_5d
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_7e
invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->start(I)I
move-result v1
invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->end(I)I
move-result v3
const/16 v6, 0x21
invoke-virtual {v4, v5, v1, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
goto :goto_5d
:cond_71
move v1, v3
goto :goto_d
:cond_73
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v4, Lcom/facebook/az;->please_select_the_photos_select_link:I
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_19
:cond_7e
iget-object v0, p1, Lcom/instagram/android/a/b/ai;->a:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method