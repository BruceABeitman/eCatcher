.class public final Lcom/instagram/i/a/a/q;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderUserSimple.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .registers 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_newsfeed_story_user_simple:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/i/a/a/s;

    invoke-direct {v2}, Lcom/instagram/i/a/a/s;-><init>()V

    sget v0, Lcom/facebook/av;->row_newsfeed_user_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v2, Lcom/instagram/i/a/a/s;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    sget v0, Lcom/facebook/av;->row_newsfeed_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/i/a/a/s;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/instagram/i/a/a/s;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)V
    .registers 6

    iget-object v0, p1, Lcom/instagram/i/a/a/s;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {p2}, Lcom/instagram/i/d/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/instagram/i/a/a/s;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    new-instance v1, Lcom/instagram/i/a/a/r;

    invoke-direct {v1, p3, p2}, Lcom/instagram/i/a/a/r;-><init>(Lcom/instagram/i/a/a/a;Lcom/instagram/i/d/c;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/instagram/i/a/a/s;->b:Landroid/widget/TextView;

    invoke-static {p0, p2, p3}, Lcom/instagram/i/a;->a(Landroid/content/Context;Lcom/instagram/i/d/c;Lcom/instagram/i/a/a/a;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/instagram/i/a/a/s;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
