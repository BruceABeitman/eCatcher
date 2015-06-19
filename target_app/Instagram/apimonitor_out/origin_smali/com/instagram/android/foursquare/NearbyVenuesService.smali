.class public Lcom/instagram/android/foursquare/NearbyVenuesService;
.super Landroid/app/IntentService;
.source "NearbyVenuesService.java"


# static fields
.field private static a:Landroid/location/Location;

.field private static b:Lcom/instagram/android/foursquare/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/foursquare/NearbyVenuesService;->a:Landroid/location/Location;

    sput-object v0, Lcom/instagram/android/foursquare/NearbyVenuesService;->b:Lcom/instagram/android/foursquare/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "NearbyVenuesService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a()Lcom/instagram/android/foursquare/b;
    .registers 1

    sget-object v0, Lcom/instagram/android/foursquare/NearbyVenuesService;->b:Lcom/instagram/android/foursquare/b;

    return-object v0
.end method

.method private static a(Landroid/location/Location;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/instagram/android/foursquare/a;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/foursquare/a;-><init>(Landroid/location/Location;Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3e

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_3e

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/foursquare/a;->a(Ljava/lang/String;)Lcom/instagram/android/foursquare/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/foursquare/b;->c()Z

    move-result v1

    if-eqz v1, :cond_45

    if-nez p1, :cond_3a

    invoke-static {v0, p0}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;Landroid/location/Location;)V

    :cond_3a
    invoke-static {v0}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;)V

    :goto_3d
    return-void

    :cond_3e
    const-string v0, "NearbyVenuesService"

    const-string v1, "Failed to fetch nearby venues: status code is not 2xx."

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_45} :catch_52

    :cond_45
    :goto_45
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;)V

    goto :goto_3d

    :cond_4a
    :try_start_4a
    const-string v0, "NearbyVenuesService"

    const-string v1, "Failed to receive response (no network connection?)"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_51} :catch_52

    goto :goto_45

    :catch_52
    move-exception v0

    const-string v1, "NearbyVenuesService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fetch nearby venues: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method

.method private static a(Lcom/instagram/android/foursquare/b;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.instagram.android.creation.NearbyVenuesFragment.venuesFetched"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_24

    const-string v1, "requestId"

    invoke-virtual {p0}, Lcom/instagram/android/foursquare/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "venues"

    invoke-virtual {p0}, Lcom/instagram/android/foursquare/b;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "isFoursquareLocation"

    invoke-virtual {p0}, Lcom/instagram/android/foursquare/b;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_24
    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private static a(Lcom/instagram/android/foursquare/b;Landroid/location/Location;)V
    .registers 2

    sput-object p0, Lcom/instagram/android/foursquare/NearbyVenuesService;->b:Lcom/instagram/android/foursquare/b;

    sput-object p1, Lcom/instagram/android/foursquare/NearbyVenuesService;->a:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    const-string v1, "searchString"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1c

    const-string v0, "NearbyVenuesService"

    const-string v1, "Cannot query venues for null location"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;)V

    :goto_1b
    return-void

    :cond_1c
    if-nez v1, :cond_36

    sget-object v2, Lcom/instagram/android/foursquare/NearbyVenuesService;->a:Landroid/location/Location;

    if-eqz v2, :cond_36

    sget-object v2, Lcom/instagram/android/foursquare/NearbyVenuesService;->a:Landroid/location/Location;

    invoke-virtual {v0, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    const/high16 v3, 0x41a0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_36

    invoke-static {}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a()Lcom/instagram/android/foursquare/b;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Lcom/instagram/android/foursquare/b;)V

    goto :goto_1b

    :cond_36
    invoke-static {v0, v1}, Lcom/instagram/android/foursquare/NearbyVenuesService;->a(Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_1b
.end method
