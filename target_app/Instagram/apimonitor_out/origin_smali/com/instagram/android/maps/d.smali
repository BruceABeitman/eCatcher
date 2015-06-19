.class final Lcom/instagram/android/maps/d;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/e/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/maps/d;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/maps/d;->a:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    instance-of v2, v0, Lcom/instagram/android/maps/ui/ah;

    if-eqz v2, :cond_e

    check-cast v0, Lcom/instagram/android/maps/ui/ah;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/ah;->e()V

    goto :goto_e

    :cond_24
    return-void
.end method
