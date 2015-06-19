.class public final Lcom/bbm/ui/l;
.super Landroid/widget/ArrayAdapter;
.source "BBSpinnerAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f0300f2

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/bbm/ui/l;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/l;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/l;->f:Ljava/util/List;

    iput-object p2, p0, Lcom/bbm/ui/l;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/l;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0300f2

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/bbm/ui/l;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/l;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/l;->f:Ljava/util/List;

    iput-object p2, p0, Lcom/bbm/ui/l;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/l;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/bbm/ui/l;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-ltz v1, :cond_17

    invoke-virtual {p0, v1}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iput v1, p0, Lcom/bbm/ui/l;->a:I

    :cond_17
    return-void

    :cond_18
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/bbm/ui/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p0}, Lcom/bbm/ui/l;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2f
    new-instance v0, Lcom/bbm/ui/n;

    invoke-direct {v0, p0}, Lcom/bbm/ui/n;-><init>(Lcom/bbm/ui/l;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3b

    :cond_57
    invoke-virtual {p0, v1}, Lcom/bbm/ui/l;->a(Ljava/util/ArrayList;)V

    :cond_5a
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    iput-object p2, p0, Lcom/bbm/ui/l;->f:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_43
    new-instance v0, Lcom/bbm/ui/m;

    invoke-direct {v0, p0}, Lcom/bbm/ui/m;-><init>(Lcom/bbm/ui/l;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v1}, Lcom/bbm/ui/l;->a(Ljava/util/ArrayList;)V

    :cond_51
    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bbm/ui/l;->e:Z

    invoke-virtual {p0}, Lcom/bbm/ui/l;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    move v1, v2

    :goto_8
    invoke-virtual {p0}, Lcom/bbm/ui/l;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2f

    iget-object v0, p0, Lcom/bbm/ui/l;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0, v1}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v2, 0x1

    :cond_2f
    return v2

    :cond_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v2, 0x0

    if-nez p2, :cond_48

    new-instance v1, Lcom/bbm/ui/r;

    invoke-direct {v1, p0}, Lcom/bbm/ui/r;-><init>(Lcom/bbm/ui/l;)V

    iget-object v0, p0, Lcom/bbm/ui/l;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f0300f3

    invoke-virtual {v0, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a04e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, v1, Lcom/bbm/ui/r;->a:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a04e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/r;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2a
    invoke-virtual {p0, p1}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/bbm/ui/r;->a:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v3, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/bbm/ui/r;->b:Landroid/widget/ImageView;

    iget v0, p0, Lcom/bbm/ui/l;->a:I

    if-ne v0, p1, :cond_50

    move v0, v2

    :goto_3c
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/bbm/ui/l;->a:I

    if-ne v0, p1, :cond_44

    const/4 v2, 0x1

    :cond_44
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    return-object p2

    :cond_48
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/r;

    move-object v1, v0

    goto :goto_2a

    :cond_50
    const/4 v0, 0x4

    goto :goto_3c
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const v5, 0x7f09002e

    const v4, 0x7f09002d

    const/4 v3, 0x0

    if-nez p2, :cond_88

    new-instance v1, Lcom/bbm/ui/o;

    invoke-direct {v1, p0}, Lcom/bbm/ui/o;-><init>(Lcom/bbm/ui/l;)V

    iget-object v0, p0, Lcom/bbm/ui/l;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f0300f2

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a04df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, v1, Lcom/bbm/ui/o;->b:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a04de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/o;->a:Landroid/widget/TextView;

    const v0, 0x7f0a04e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/o;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3b
    iget v0, p0, Lcom/bbm/ui/l;->a:I

    invoke-virtual {p0}, Lcom/bbm/ui/l;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_47

    iget v0, p0, Lcom/bbm/ui/l;->a:I

    if-gez v0, :cond_49

    :cond_47
    iput v3, p0, Lcom/bbm/ui/l;->a:I

    :cond_49
    iget v0, p0, Lcom/bbm/ui/l;->a:I

    invoke-virtual {p0, v0}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/bbm/ui/o;->b:Lcom/bbm/ui/InlineImageTextView;

    iget-boolean v2, p0, Lcom/bbm/ui/l;->e:Z

    if-eqz v2, :cond_90

    invoke-virtual {p0}, Lcom/bbm/ui/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_63
    invoke-virtual {v3, v2}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V

    iget-object v3, v1, Lcom/bbm/ui/o;->a:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/bbm/ui/l;->e:Z

    if-eqz v2, :cond_9d

    invoke-virtual {p0}, Lcom/bbm/ui/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_78
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v1, Lcom/bbm/ui/o;->b:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v2, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/bbm/ui/o;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_88
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/o;

    move-object v1, v0

    goto :goto_3b

    :cond_90
    invoke-virtual {p0}, Lcom/bbm/ui/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_63

    :cond_9d
    invoke-virtual {p0}, Lcom/bbm/ui/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_78
.end method
