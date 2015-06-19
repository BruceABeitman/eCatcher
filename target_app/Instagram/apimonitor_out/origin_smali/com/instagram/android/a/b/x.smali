.class public final Lcom/instagram/android/a/b/x;
.super Ljava/lang/Object;
.source "PepperMegaphoneRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/instagram/feed/f/c;)Landroid/view/View;
    .registers 7

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->pepper_megaphone:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/a/b/ab;

    invoke-direct {v2}, Lcom/instagram/android/a/b/ab;-><init>()V

    invoke-static {v2, v1}, Lcom/instagram/android/a/b/ab;->a(Lcom/instagram/android/a/b/ab;Landroid/view/View;)Landroid/view/View;

    sget v0, Lcom/facebook/av;->icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-static {v2, v0}, Lcom/instagram/android/a/b/ab;->a(Lcom/instagram/android/a/b/ab;Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/IgImageView;

    sget v0, Lcom/facebook/av;->text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/android/a/b/ab;->a(Lcom/instagram/android/a/b/ab;Landroid/widget/TextView;)Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/android/a/b/ab;->b(Lcom/instagram/android/a/b/ab;Landroid/widget/TextView;)Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->dismiss_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/android/a/b/ab;->b(Lcom/instagram/android/a/b/ab;Landroid/view/View;)Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/instagram/android/a/b/ab;->a(Lcom/instagram/android/a/b/ab;)Lcom/instagram/common/ui/widget/imageview/IgImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/f/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/instagram/feed/f/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/f/e;

    invoke-virtual {v0}, Lcom/instagram/feed/f/e;->a()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_58

    :cond_6c
    invoke-static {v2}, Lcom/instagram/android/a/b/ab;->b(Lcom/instagram/android/a/b/ab;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/instagram/android/a/b/ab;->c(Lcom/instagram/android/a/b/ab;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/feed/f/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-static {v2}, Lcom/instagram/android/a/b/ab;->c(Lcom/instagram/android/a/b/ab;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {v2}, Lcom/instagram/android/a/b/ab;->c(Lcom/instagram/android/a/b/ab;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/instagram/android/a/b/ab;Lcom/instagram/feed/e/b;)V
    .registers 5

    invoke-static {p1}, Lcom/instagram/android/a/b/ab;->d(Lcom/instagram/android/a/b/ab;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/a/b/y;

    invoke-direct {v1, p2}, Lcom/instagram/android/a/b/y;-><init>(Lcom/instagram/feed/e/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/instagram/android/a/b/ab;->d(Lcom/instagram/android/a/b/ab;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/a/b/z;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/a/b/z;-><init>(Landroid/content/Context;Lcom/instagram/feed/e/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p1}, Lcom/instagram/android/a/b/ab;->e(Lcom/instagram/android/a/b/ab;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/a/b/aa;

    invoke-direct {v1, p2}, Lcom/instagram/android/a/b/aa;-><init>(Lcom/instagram/feed/e/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
