.class public final Lcom/instagram/android/foursquare/a;
.super Lcom/instagram/api/k/a/c;
.source "NearbyVenuesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/android/foursquare/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/foursquare/a;->c:Landroid/location/Location;

    iput-object p2, p0, Lcom/instagram/android/foursquare/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/instagram/android/foursquare/b;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/instagram/android/foursquare/b;

    invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/instagram/android/foursquare/b;-><init>(Lcom/instagram/service/b/a;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    const-string v1, "NearbyVenuesRequest"

    const-string v2, "Unable to parse venues"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/c/b;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/foursquare/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "search_query"

    iget-object v1, p0, Lcom/instagram/android/foursquare/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/instagram/share/d/a;->a()Lcom/instagram/share/d/a;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v0, "foursquare_access_token"

    invoke-static {}, Lcom/instagram/share/d/a;->a()Lcom/instagram/share/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/share/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "fb_access_token"

    invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    const-string v0, "latitude"

    iget-object v1, p0, Lcom/instagram/android/foursquare/a;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "longitude"

    iget-object v1, p0, Lcom/instagram/android/foursquare/a;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()I
    .registers 2

    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final d_()Ljava/lang/String;
    .registers 2

    const-string v0, "location_search/"

    return-object v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
