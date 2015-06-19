.class final Lcom/bbm/ui/go;
.super Lcom/bbm/ui/dy;
.source "StickyHeaderHelper.java"


# instance fields
.field final synthetic b:Lcom/bbm/ui/gk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/gk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/go;->b:Lcom/bbm/ui/gk;

    invoke-direct {p0}, Lcom/bbm/ui/dy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/go;->b:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/go;->b:Lcom/bbm/ui/gk;

    invoke-virtual {v0, p1, p2}, Lcom/bbm/ui/gk;->a(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/go;->b:Lcom/bbm/ui/gk;

    iget-object v0, v0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/go;->b:Lcom/bbm/ui/gk;

    iget-object v0, v0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/bbm/ui/go;->b:Lcom/bbm/ui/gk;

    iget-object v0, v0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/gp;

    iget-object v0, v0, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;

    goto :goto_d
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
