.class Lcom/twidroid/net/c/e;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/net/c/a;


# direct methods
.method constructor <init>(Lcom/twidroid/net/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    invoke-static {v0}, Lcom/twidroid/net/c/a;->b(Lcom/twidroid/net/c/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    iget-object v0, v0, Lcom/twidroid/net/c/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    iget-object v0, v0, Lcom/twidroid/net/c/a;->d:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    invoke-static {v0}, Lcom/twidroid/net/c/a;->c(Lcom/twidroid/net/c/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_61

    new-instance v1, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    iget-object v0, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    invoke-static {v0}, Lcom/twidroid/net/c/a;->d(Lcom/twidroid/net/c/a;)Lcom/twidroid/net/c/c;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    invoke-virtual {v0, v2, v1}, Lcom/twidroid/net/c/c;->a(Lcom/twidroid/net/c/a;Landroid/location/Address;)V

    iget-object v0, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V

    goto :goto_8

    :cond_61
    const-string v0, "GPSUpdateTask"

    const-string v1, "TIMEOUT!!! during get location. Failed to get location."

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    invoke-static {v0}, Lcom/twidroid/net/c/a;->d(Lcom/twidroid/net/c/a;)Lcom/twidroid/net/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    iget-object v2, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    invoke-static {v2}, Lcom/twidroid/net/c/a;->c(Lcom/twidroid/net/c/a;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c02fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/c/c;->a(Lcom/twidroid/net/c/a;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/net/c/e;->a:Lcom/twidroid/net/c/a;

    invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V

    goto :goto_8
.end method
