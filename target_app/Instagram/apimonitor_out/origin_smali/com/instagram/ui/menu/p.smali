.class public final Lcom/instagram/ui/menu/p;
.super Ljava/lang/Object;
.source "SimpleMenuItemRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .registers 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/ui/menu/q;

    invoke-direct {v2}, Lcom/instagram/ui/menu/q;-><init>()V

    sget v0, Lcom/facebook/av;->row_simple_text_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/ui/menu/q;->a:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/ui/menu/q;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Landroid/view/View;Lcom/instagram/ui/menu/f;ZZ)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/q;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->a()Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->a()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_14
    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->c()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lcom/instagram/ui/menu/q;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->c()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_23
    if-eqz p2, :cond_4a

    if-eqz p3, :cond_44

    sget v2, Lcom/facebook/au;->dialog_row_single:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2c
    iget-object v2, v0, Lcom/instagram/ui/menu/q;->b:Landroid/view/View;

    if-eqz p3, :cond_58

    const/16 v0, 0x8

    :goto_32
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_36
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_14

    :cond_3a
    iget-object v2, v0, Lcom/instagram/ui/menu/q;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/f;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_23

    :cond_44
    sget v2, Lcom/facebook/au;->dialog_row_top:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2c

    :cond_4a
    if-eqz p3, :cond_52

    sget v2, Lcom/facebook/au;->dialog_row_bottom:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2c

    :cond_52
    sget v2, Lcom/facebook/au;->bg_simple_row:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2c

    :cond_58
    move v0, v1

    goto :goto_32
.end method
