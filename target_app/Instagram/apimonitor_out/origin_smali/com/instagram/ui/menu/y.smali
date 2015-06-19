.class public final Lcom/instagram/ui/menu/y;
.super Ljava/lang/Object;
.source "SimpleTextRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/ui/menu/z;

    invoke-direct {v2}, Lcom/instagram/ui/menu/z;-><init>()V

    sget v0, Lcom/facebook/av;->row_text_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/instagram/ui/menu/z;->a(Lcom/instagram/ui/menu/z;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Lcom/instagram/ui/menu/z;Lcom/instagram/ui/menu/ab;)V
    .registers 4

    invoke-static {p0}, Lcom/instagram/ui/menu/z;->a(Lcom/instagram/ui/menu/z;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/ui/menu/ab;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
