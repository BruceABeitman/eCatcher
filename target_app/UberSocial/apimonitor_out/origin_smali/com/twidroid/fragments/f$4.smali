.class Lcom/twidroid/fragments/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f;->a(Lcom/ubermedia/ui/StringSpanInfo;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/d/n;

.field final synthetic b:Lcom/twidroid/fragments/f;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f;Lcom/twidroid/d/n;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/f$4;->b:Lcom/twidroid/fragments/f;

    iput-object p2, p0, Lcom/twidroid/fragments/f$4;->a:Lcom/twidroid/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/twidroid/fragments/f$4;->a:Lcom/twidroid/d/n;

    invoke-virtual {v0}, Lcom/twidroid/d/n;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twidroid/fragments/f$4;->a:Lcom/twidroid/d/n;

    invoke-virtual {v0}, Lcom/twidroid/d/n;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/twidroid/fragments/f$4$1;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/f$4$1;-><init>(Lcom/twidroid/fragments/f$4;)V

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/k;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/twidroid/fragments/f$4;->b:Lcom/twidroid/fragments/f;

    invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/twidroid/fragments/f$4;->b:Lcom/twidroid/fragments/f;

    invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/f$4$2;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/fragments/f$4$2;-><init>(Lcom/twidroid/fragments/f$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_19
.end method
