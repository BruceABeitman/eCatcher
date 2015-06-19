.class public final Lcom/bbm/ui/b/ae;
.super Landroid/widget/ArrayAdapter;
.source "RatingDialogBuilder.java"


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
            "Lcom/bbm/ui/b/ag;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bbm/ui/b/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/b/ag;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f03014d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bbm/ui/b/ae;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bbm/ui/b/ae;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->a:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p2, :cond_c9

    const v3, 0x7f03014d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/bbm/ui/b/af;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/af;-><init>(Lcom/bbm/ui/b/ae;)V

    iput-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v3, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    const v0, 0x7f0a065f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v3, Lcom/bbm/ui/b/af;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    const v0, 0x7f0a0660

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/bbm/ui/b/af;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    const v0, 0x7f0a0661

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/bbm/ui/b/af;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    const v0, 0x7f0a0662

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/bbm/ui/b/af;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    const v0, 0x7f0a0663

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/bbm/ui/b/af;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    const v0, 0x7f0a0664

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/bbm/ui/b/af;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    const v0, 0x7f0a0665

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/bbm/ui/b/af;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    const v0, 0x7f0a05bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/bbm/ui/b/af;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_8b
    invoke-virtual {p0}, Lcom/bbm/ui/b/ae;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_d2

    const/4 v0, 0x1

    move v3, v0

    :goto_95
    if-nez v3, :cond_ab

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v4, v0, Lcom/bbm/ui/b/af;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/b/ag;

    iget v0, v0, Lcom/bbm/ui/b/ag;->a:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    packed-switch p1, :pswitch_data_11c

    :cond_ab
    :goto_ab
    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v4, v0, Lcom/bbm/ui/b/af;->a:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_115

    move v0, v1

    :goto_b2
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v4, v0, Lcom/bbm/ui/b/af;->g:Landroid/widget/TextView;

    if-eqz v3, :cond_117

    move v0, v1

    :goto_bc
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->h:Landroid/widget/TextView;

    if-eqz v3, :cond_119

    :goto_c5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2

    :cond_c9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/b/af;

    iput-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    goto :goto_8b

    :cond_d2
    move v3, v2

    goto :goto_95

    :pswitch_d4
    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :pswitch_db
    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :pswitch_e2
    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :pswitch_e9
    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ab

    :pswitch_f1
    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/ae;->c:Lcom/bbm/ui/b/af;

    iget-object v0, v0, Lcom/bbm/ui/b/af;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ab

    :cond_115
    move v0, v2

    goto :goto_b2

    :cond_117
    move v0, v2

    goto :goto_bc

    :cond_119
    move v2, v1

    goto :goto_c5

    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_e9
        :pswitch_e2
        :pswitch_db
        :pswitch_d4
    .end packed-switch
.end method
