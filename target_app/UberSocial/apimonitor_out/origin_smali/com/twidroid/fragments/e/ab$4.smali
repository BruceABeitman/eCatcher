.class Lcom/twidroid/fragments/e/ab$4;
.super Lcom/twidroid/net/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/ab;->B()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/ab;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab$4;->a:Lcom/twidroid/fragments/e/ab;

    invoke-direct {p0}, Lcom/twidroid/net/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$4;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/twidroid/fragments/e/ab;->o:D

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$4;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/twidroid/fragments/e/ab;->p:D

    return-void
.end method

.method public a(Lcom/twidroid/net/c/a;Ljava/lang/CharSequence;)V
    .registers 5

    const/16 v0, 0x2bd

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab$4;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {v1}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/n;->b(ILandroid/content/Context;)V

    return-void
.end method

.method public b(Lcom/twidroid/net/c/a;Landroid/location/Address;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$4;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/twidroid/fragments/e/ab;->o:D

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$4;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/twidroid/fragments/e/ab;->p:D

    return-void
.end method
