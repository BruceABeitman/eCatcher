.class final Lcom/instagram/android/maps/j;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Lcom/instagram/android/maps/ui/a/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/maps/ui/ah;

.field final synthetic b:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/ah;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;

    iput-object p2, p0, Lcom/instagram/android/maps/j;->a:Lcom/instagram/android/maps/ui/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/android/maps/b/f;)Z
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/i;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->d()Lcom/instagram/android/maps/b/h;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/android/maps/b/f;->e()Lcom/instagram/android/maps/b/h;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/maps/k;

    invoke-direct {v3, p0, p1}, Lcom/instagram/android/maps/k;-><init>(Lcom/instagram/android/maps/j;Lcom/instagram/android/maps/b/f;)V

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
