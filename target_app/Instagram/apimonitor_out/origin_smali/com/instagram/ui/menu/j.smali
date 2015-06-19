.class public final Lcom/instagram/ui/menu/j;
.super Ljava/lang/Object;
.source "SimpleButtonRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_button_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/ui/menu/k;

    invoke-direct {v2}, Lcom/instagram/ui/menu/k;-><init>()V

    sget v0, Lcom/facebook/av;->button_item:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/ui/menu/k;->a:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Landroid/view/View;Lcom/instagram/ui/menu/a;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/k;

    iget-object v1, v0, Lcom/instagram/ui/menu/k;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v0, Lcom/instagram/ui/menu/k;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/instagram/ui/menu/a;->b()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
