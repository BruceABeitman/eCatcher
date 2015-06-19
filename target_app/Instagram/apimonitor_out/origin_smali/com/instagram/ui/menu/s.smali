.class public final Lcom/instagram/ui/menu/s;
.super Ljava/lang/Object;
.source "SimpleRadioGroupRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/instagram/ui/menu/t;

    invoke-direct {v1}, Lcom/instagram/ui/menu/t;-><init>()V

    iput-object v0, v1, Lcom/instagram/ui/menu/t;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;Lcom/instagram/ui/menu/g;)V
    .registers 14

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/t;

    invoke-virtual {p2}, Lcom/instagram/ui/menu/g;->a()Ljava/util/List;

    move-result-object v6

    new-instance v7, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x4180

    invoke-direct {v7, v1, v2, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    iget-object v1, v0, Lcom/instagram/ui/menu/t;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    if-eqz v6, :cond_8b

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-virtual {p2}, Lcom/instagram/ui/menu/g;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/instagram/ui/menu/t;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->removeAllViews()V

    const/4 v1, 0x0

    move v4, v1

    move-object v3, v5

    :goto_2d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_85

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->row_check_radio_button_item:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/ui/menu/CheckRadioButton;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/ui/menu/h;

    invoke-virtual {v2}, Lcom/instagram/ui/menu/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/ui/menu/CheckRadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Lcom/instagram/ui/menu/CheckRadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Lcom/instagram/ui/menu/CheckRadioButton;->setId(I)V

    iget-object v2, v0, Lcom/instagram/ui/menu/t;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v9, Lcom/facebook/aw;->row_check_radio_button_divider:I

    iget-object v10, v0, Lcom/instagram/ui/menu/t;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {v8}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    if-eqz v4, :cond_80

    :cond_6a
    invoke-static {v8}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_95

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/ui/menu/h;

    invoke-virtual {v2}, Lcom/instagram/ui/menu/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    :cond_80
    :goto_80
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    goto :goto_2d

    :cond_85
    if-eqz v3, :cond_8b

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/instagram/ui/menu/CheckRadioButton;->setChecked(Z)V

    :cond_8b
    iget-object v0, v0, Lcom/instagram/ui/menu/t;->a:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Lcom/instagram/ui/menu/g;->c()Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void

    :cond_95
    move-object v1, v3

    goto :goto_80
.end method
