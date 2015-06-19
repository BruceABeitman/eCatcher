.class final Lcom/bbm/ui/activities/es;
.super Lcom/bbm/ui/ga;
.source "ChannelSubscribersActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ga",
        "<",
        "Lcom/bbm/d/gc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bbm/ui/activities/ChannelSubscribersActivity;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/ChannelSubscribersActivity;Lcom/bbm/j/x;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/gc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/activities/es;->d:Lcom/bbm/ui/activities/ChannelSubscribersActivity;

    const/16 v0, 0x28

    invoke-direct {p0, p2, v0}, Lcom/bbm/ui/ga;-><init>(Lcom/bbm/j/x;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/es;->d:Lcom/bbm/ui/activities/ChannelSubscribersActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelSubscribersActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/es;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/es;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b8

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/et;

    invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/et;-><init>(Lcom/bbm/ui/activities/es;B)V

    const v0, 0x7f0a043f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SquaredObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/et;->a:Lcom/bbm/ui/SquaredObservingImageView;

    const v0, 0x7f0a0440

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/et;->b:Landroid/widget/TextView;

    const v0, 0x7f0a00a1

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v1
.end method

.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Lcom/bbm/d/gc;

    const v0, 0x7f0a00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/et;

    iget-object v1, p2, Lcom/bbm/d/gc;->e:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_35

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p2, Lcom/bbm/d/gc;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v2, v1, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v2, v3, :cond_36

    iget-object v2, v0, Lcom/bbm/ui/activities/et;->b:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v1

    iget-object v0, v0, Lcom/bbm/ui/activities/et;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v1, v0, Lcom/bbm/ui/activities/et;->b:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/bbm/d/gc;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/bbm/util/cr;

    new-instance v2, Lcom/bbm/d/fd;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v3}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v1, v2}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/bbm/ui/activities/et;->a:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto :goto_35
.end method
