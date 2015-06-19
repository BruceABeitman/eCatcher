.class public Lcom/twidroid/ui/a/af;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static final e:I = 0x0

.field private static final f:I = 0x1


# instance fields
.field a:Landroid/support/v4/app/FragmentManager;

.field b:Lcom/twidroid/net/c/a/f;

.field c:Lcom/twidroid/ui/themes/r;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/twidroid/net/c/a/f;Lcom/twidroid/ui/themes/r;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/twidroid/ui/a/af;->b:Lcom/twidroid/net/c/a/f;

    iput-object p2, p0, Lcom/twidroid/ui/a/af;->c:Lcom/twidroid/ui/themes/r;

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/fragments/base/o;)I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/ui/c/c;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/c;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/c;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/fragments/base/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_26
    return v1

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2b
    const/4 v1, -0x1

    goto :goto_26
.end method

.method public a(Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/twidroid/ui/a/af;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1a

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/a/af;->a(I)Lcom/twidroid/ui/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :goto_16
    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    move v0, v1

    goto :goto_16
.end method

.method public a(I)Lcom/twidroid/ui/c/h;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/twidroid/ui/a/af;->notifyDataSetChanged()V

    return-void
.end method

.method public a(IIIII)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a5

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAB_TIMELINE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    iput p1, v0, Lcom/twidroid/ui/c/h;->d:I

    :cond_28
    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAB_MENTIONS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    iput p2, v0, Lcom/twidroid/ui/c/h;->d:I

    :cond_46
    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAB_DIRECT_MESSAGES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    iput p3, v0, Lcom/twidroid/ui/c/h;->d:I

    :cond_64
    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "outbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    iput p4, v0, Lcom/twidroid/ui/c/h;->d:I

    :cond_82
    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAB_INNER_CIRCLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    iput p5, v0, Lcom/twidroid/ui/c/h;->d:I

    :cond_a0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_a5
    invoke-virtual {p0}, Lcom/twidroid/ui/a/af;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/twidroid/ui/c/h;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/twidroid/ui/c/c;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/twidroid/ui/c/c;

    invoke-virtual {p1}, Lcom/twidroid/ui/c/c;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a/af;->b:Lcom/twidroid/net/c/a/f;

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/o;->a(Lcom/twidroid/net/c/a/f;)V

    :cond_14
    return-void
.end method

.method public a(Lcom/twidroid/ui/c/h;I)V
    .registers 5

    if-lez p2, :cond_1f

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_1f

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_f
    instance-of v0, p1, Lcom/twidroid/ui/c/c;

    if-eqz v0, :cond_1e

    check-cast p1, Lcom/twidroid/ui/c/c;

    invoke-virtual {p1}, Lcom/twidroid/ui/c/c;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a/af;->b:Lcom/twidroid/net/c/a/f;

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/o;->a(Lcom/twidroid/net/c/a/f;)V

    :cond_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/c/h;

    instance-of v1, v0, Lcom/twidroid/ui/c/f;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/twidroid/ui/c/f;

    invoke-virtual {v1}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    if-ne v1, p1, :cond_6

    iget-object v1, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_24
    invoke-virtual {p0}, Lcom/twidroid/ui/a/af;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/af;->a(I)Lcom/twidroid/ui/c/h;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/af;->a(I)Lcom/twidroid/ui/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/af;->getItemViewType(I)I

    move-result v2

    if-nez p2, :cond_c

    packed-switch v2, :pswitch_data_9e

    :cond_c
    :goto_c
    const v0, 0x7f090101

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/af;->a(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/ui/c/h;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    packed-switch v2, :pswitch_data_a6

    :goto_27
    return-object p2

    :pswitch_28
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004d

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_c

    :pswitch_38
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004c

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_c

    :pswitch_48
    const v0, 0x7f090040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/twidroid/ui/c/h;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090103

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, v1, Lcom/twidroid/ui/c/h;->d:I

    if-lez v2, :cond_72

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget v1, v1, Lcom/twidroid/ui/c/h;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_72
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27

    :pswitch_76
    move-object v0, v1

    check-cast v0, Lcom/twidroid/ui/c/d;

    const v1, 0x7f090102

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/d;->f()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/twidroid/ui/c/d;->u_()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/twidroid/ui/c/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_9a
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_27

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_38
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_48
        :pswitch_76
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/ui/a/af;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public notifyDataSetChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
