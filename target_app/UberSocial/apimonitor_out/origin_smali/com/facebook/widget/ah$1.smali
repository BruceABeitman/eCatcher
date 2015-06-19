.class Lcom/facebook/widget/ah$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/ah;->a(Lcom/facebook/widget/e;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/ah;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ah$1;->a:Lcom/facebook/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Lcom/facebook/widget/au;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/widget/ah$1;->a:Lcom/facebook/widget/ah;

    iget-object v0, v0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    if-eq p1, v0, :cond_e

    new-instance v0, Lcom/facebook/t;

    const-string v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/facebook/widget/ah$1;->a:Lcom/facebook/widget/ah;

    check-cast p1, Lcom/facebook/widget/m;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/widget/ah;->a(Lcom/facebook/widget/m;Lcom/facebook/widget/au;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/ah$1;->a:Lcom/facebook/widget/ah;

    invoke-virtual {v0}, Lcom/facebook/widget/ah;->d()Lcom/facebook/widget/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/facebook/widget/au;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/ah$1;->a(Landroid/support/v4/content/Loader;Lcom/facebook/widget/au;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/ah$1;->a:Lcom/facebook/widget/ah;

    iget-object v0, v0, Lcom/facebook/widget/ah;->c:Lcom/facebook/widget/m;

    if-eq p1, v0, :cond_e

    new-instance v0, Lcom/facebook/t;

    const-string v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/facebook/widget/ah$1;->a:Lcom/facebook/widget/ah;

    check-cast p1, Lcom/facebook/widget/m;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ah;->a(Lcom/facebook/widget/m;)V

    return-void
.end method
