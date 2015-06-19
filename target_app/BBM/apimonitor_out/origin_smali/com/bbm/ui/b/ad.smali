.class public final Lcom/bbm/ui/b/ad;
.super Ljava/lang/Object;
.source "RatingDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/bbm/ui/b/ac;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/b/ac;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/b/ad;->b:Lcom/bbm/ui/b/ac;

    iput-object p2, p0, Lcom/bbm/ui/b/ad;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v0, 0x0

    if-ltz p2, :cond_13

    iget-object v1, p0, Lcom/bbm/ui/b/ad;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_13

    iget-object v0, p0, Lcom/bbm/ui/b/ad;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/b/ag;

    :cond_13
    if-eqz v0, :cond_1e

    iget-object v1, v0, Lcom/bbm/ui/b/ag;->c:Lcom/bbm/ui/b/ah;

    if-eqz v1, :cond_1e

    iget-object v0, v0, Lcom/bbm/ui/b/ag;->c:Lcom/bbm/ui/b/ah;

    invoke-interface {v0}, Lcom/bbm/ui/b/ah;->a()V

    :cond_1e
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
