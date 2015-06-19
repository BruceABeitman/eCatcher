.class final Lcom/bbm/ui/c/dj;
.super Lcom/bbm/ui/ee;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ee",
        "<",
        "Lcom/bbm/ui/c/ds;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/c/de;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/de;Lcom/bbm/j/j;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/dj;->b:Lcom/bbm/ui/c/de;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ee;-><init>(Lcom/bbm/j/j;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 11

    const v7, 0x7f0a0467

    const v4, 0x7f0a0466

    const v6, 0x7f0a0465

    const v2, 0x7f0201cb

    const/16 v3, 0x8

    check-cast p2, Lcom/bbm/ui/c/ds;

    sget-object v0, Lcom/bbm/ui/c/di;->a:[I

    iget-object v1, p2, Lcom/bbm/ui/c/ds;->a:Lcom/bbm/ui/c/dt;

    invoke-virtual {v1}, Lcom/bbm/ui/c/dt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_be

    :goto_1d
    return-void

    :pswitch_1e
    iget-object v0, p2, Lcom/bbm/ui/c/ds;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/g/a;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v1, v0, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3c
    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/bbm/ui/c/dj;->b:Lcom/bbm/ui/c/de;

    invoke-virtual {v1}, Lcom/bbm/ui/c/de;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-wide v4, v0, Lcom/bbm/g/a;->h:J

    long-to-int v1, v4

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_55
    move-object v2, v1

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v0, v0, Lcom/bbm/g/a;->m:Z

    if-eqz v0, :cond_6e

    const/4 v0, 0x0

    :goto_6a
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1d

    :cond_6e
    move v0, v3

    goto :goto_6a

    :pswitch_70
    iget-object v0, p2, Lcom/bbm/ui/c/ds;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/g/ai;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/bbm/g/ai;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ae

    const v4, 0x7f0e0461

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_88
    iget-object v1, v0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;

    if-eqz v1, :cond_a3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/bbm/g/ai;->c:Lcom/bbm/g/aj;

    sget-object v4, Lcom/bbm/ui/c/di;->b:[I

    invoke-virtual {v0}, Lcom/bbm/g/aj;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_c6

    move v0, v2

    :goto_a0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a3
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1d

    :cond_ae
    iget-object v4, v0, Lcom/bbm/g/ai;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_88

    :pswitch_b4
    move v0, v2

    goto :goto_a0

    :pswitch_b6
    const v0, 0x7f0201cc

    goto :goto_a0

    :pswitch_ba
    const v0, 0x7f0201cd

    goto :goto_a0

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_70
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b6
        :pswitch_ba
    .end packed-switch
.end method
