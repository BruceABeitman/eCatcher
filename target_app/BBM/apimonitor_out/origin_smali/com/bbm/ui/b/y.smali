.class public final Lcom/bbm/ui/b/y;
.super Landroid/widget/ArrayAdapter;
.source "ListDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/b/aa;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bbm/ui/b/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/b/aa;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f030131

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bbm/ui/b/y;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bbm/ui/b/y;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/b/y;->a:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p2, :cond_96

    const v3, 0x7f030131

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/bbm/ui/b/z;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/z;-><init>(Lcom/bbm/ui/b/y;)V

    iput-object v0, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    iget-object v3, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    const v0, 0x7f0a045b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/bbm/ui/b/z;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    const v0, 0x7f0a05be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/bbm/ui/b/z;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    const v0, 0x7f0a05bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/bbm/ui/b/z;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_4a
    invoke-virtual {p0}, Lcom/bbm/ui/b/y;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_9f

    const/4 v0, 0x1

    move v3, v0

    :goto_54
    if-nez v3, :cond_78

    iget-object v0, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    iget-object v4, v0, Lcom/bbm/ui/b/z;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/b/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/b/aa;

    iget v0, v0, Lcom/bbm/ui/b/aa;->a:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    iget-object v4, v0, Lcom/bbm/ui/b/z;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/b/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/b/aa;

    iget v0, v0, Lcom/bbm/ui/b/aa;->b:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_78
    iget-object v0, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    iget-object v4, v0, Lcom/bbm/ui/b/z;->a:Landroid/widget/ImageView;

    if-eqz v3, :cond_a1

    move v0, v1

    :goto_7f
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    iget-object v4, v0, Lcom/bbm/ui/b/z;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_a3

    move v0, v1

    :goto_89
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    iget-object v0, v0, Lcom/bbm/ui/b/z;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_a5

    :goto_92
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2

    :cond_96
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/b/z;

    iput-object v0, p0, Lcom/bbm/ui/b/y;->c:Lcom/bbm/ui/b/z;

    goto :goto_4a

    :cond_9f
    move v3, v2

    goto :goto_54

    :cond_a1
    move v0, v2

    goto :goto_7f

    :cond_a3
    move v0, v2

    goto :goto_89

    :cond_a5
    move v2, v1

    goto :goto_92
.end method
