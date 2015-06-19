.class public final Lcom/instagram/ui/menu/n;
.super Ljava/lang/Object;
.source "SimpleHeaderRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/ui/menu/o;

    invoke-direct {v2}, Lcom/instagram/ui/menu/o;-><init>()V

    sget v0, Lcom/facebook/av;->row_header_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/ui/menu/o;->a(Lcom/instagram/ui/menu/o;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Landroid/view/View;Lcom/instagram/ui/menu/d;ZZ)V
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/o;

    invoke-static {v0}, Lcom/instagram/ui/menu/o;->a(Lcom/instagram/ui/menu/o;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/ui/menu/d;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    if-eqz p2, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/at;->menu_separator_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1e
    invoke-static {p0, v1}, Lcom/instagram/common/u/f;->b(Landroid/view/View;I)V

    invoke-static {v0}, Lcom/instagram/ui/menu/o;->a(Lcom/instagram/ui/menu/o;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p3, :cond_31

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/at;->row_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_31
    invoke-static {v0, v2}, Lcom/instagram/common/u/f;->d(Landroid/view/View;I)V

    return-void

    :cond_35
    move v1, v2

    goto :goto_1e
.end method
