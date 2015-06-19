.class Lcom/twidroid/fragments/e/t$1;
.super Lcom/twidroid/net/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/t;->a(JF)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/t;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/t;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;

    invoke-direct {p0}, Lcom/twidroid/net/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
    .registers 8

    iget-object v0, p0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;

    invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twidroid/fragments/e/t;->a(Lcom/twidroid/fragments/e/t;DD)V

    return-void
.end method

.method public a(Lcom/twidroid/net/c/a;Ljava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twidroid/fragments/e/t;->a(Lcom/twidroid/fragments/e/t;Z)Z

    iget-object v0, p0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;

    new-instance v1, Lcom/twidroid/fragments/e/t$1$1;

    invoke-direct {v1, p0, p2}, Lcom/twidroid/fragments/e/t$1$1;-><init>(Lcom/twidroid/fragments/e/t$1;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/twidroid/fragments/e/t;->a(Lcom/twidroid/fragments/e/t;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;

    const/16 v1, 0x2bd

    iget-object v2, p0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;

    invoke-virtual {v2}, Lcom/twidroid/fragments/e/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;ILandroid/content/Context;)V

    return-void
.end method

.method public b(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
    .registers 8

    const-string v0, "NearbyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::onLocationFix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;

    invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twidroid/fragments/e/t;->a(Lcom/twidroid/fragments/e/t;DD)V

    return-void
.end method
