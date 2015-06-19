.class Lcom/twidroid/fragments/e/ab$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/ab$10;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/ab$10;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/ab$10;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab$10$1;->a:Lcom/twidroid/fragments/e/ab$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$10$1;->a:Lcom/twidroid/fragments/e/ab$10;

    iget-object v0, v0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab$10$1;->a:Lcom/twidroid/fragments/e/ab$10;

    iget-object v1, v1, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;

    const v2, 0x7f0c016e

    invoke-virtual {v1, v2}, Lcom/twidroid/fragments/e/ab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$10$1;->a:Lcom/twidroid/fragments/e/ab$10;

    iget-object v0, v0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;

    invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->f(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$10$1;->a:Lcom/twidroid/fragments/e/ab$10;

    iget-object v0, v0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;

    invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->g(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_30
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$10$1;->a:Lcom/twidroid/fragments/e/ab$10;

    iget-object v0, v0, Lcom/twidroid/fragments/e/ab$10;->b:Lcom/twidroid/fragments/e/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;Z)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    :goto_38
    return-void

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method
