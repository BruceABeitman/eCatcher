.class Lcom/twidroid/fragments/f$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f$6;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/f$6;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f$6;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/f$6$1;->a:Lcom/twidroid/fragments/f$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/f$6$1;->a:Lcom/twidroid/fragments/f$6;

    iget-object v0, v0, Lcom/twidroid/fragments/f$6;->c:Lcom/twidroid/fragments/f;

    invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twidroid/fragments/f$6$1;->a:Lcom/twidroid/fragments/f$6;

    iget-object v0, v0, Lcom/twidroid/fragments/f$6;->c:Lcom/twidroid/fragments/f;

    invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/f$6$1$1;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/fragments/f$6$1$1;-><init>(Lcom/twidroid/fragments/f$6$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method
