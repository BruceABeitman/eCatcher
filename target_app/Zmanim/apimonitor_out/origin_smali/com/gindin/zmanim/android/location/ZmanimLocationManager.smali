.class public Lcom/gindin/zmanim/android/location/ZmanimLocationManager;
.super Ljava/lang/Object;
.source "ZmanimLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private lastKnownLocation:Lcom/gindin/zmanim/android/location/ZmanimLocation;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final locationClickListener:Landroid/view/View$OnClickListener;

.field private locationField:Landroid/view/View;

.field private final locationListener:Lcom/gindin/zmanim/android/location/LocationProvider$Listener;

.field private final locationLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final locationManagementPrefs:Landroid/content/SharedPreferences;

.field private locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

.field private prefsBeforeEditing:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    new-instance v0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$1;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$1;-><init>(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$2;-><init>(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationLongClickListener:Landroid/view/View$OnLongClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->lastKnownLocation:Lcom/gindin/zmanim/android/location/ZmanimLocation;

    iput-object p1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->activity:Landroid/app/Activity;

    sget-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->LOCATION_MANAGEMENT:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$3;

    invoke-direct {v0, p0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$3;-><init>(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationListener:Lcom/gindin/zmanim/android/location/LocationProvider$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->showLocationDetails()V

    return-void
.end method

.method static synthetic access$100(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->fireProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;Landroid/location/Location;Ljava/lang/String;)Lcom/gindin/zmanim/android/location/ZmanimLocation;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->updateLastKnownLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/gindin/zmanim/android/location/ZmanimLocation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->fireLocationChanged(Lcom/gindin/zmanim/android/location/ZmanimLocation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/gindin/zmanim/android/location/ZmanimLocationManager;Lcom/gindin/zmanim/android/location/LocationError;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->fireError(Lcom/gindin/zmanim/android/location/LocationError;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V

    return-void
.end method

.method private clearLocationFieldListeners()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationField:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationField:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private fireError(Lcom/gindin/zmanim/android/location/LocationError;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
    .registers 6

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;

    invoke-interface {v1, p1, p2}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;->error(Lcom/gindin/zmanim/android/location/LocationError;Lcom/gindin/zmanim/android/location/ZmanimLocation;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private fireLocationChanged(Lcom/gindin/zmanim/android/location/ZmanimLocation;)V
    .registers 10

    const-string v2, "newLocation"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "latitude: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "longitude: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->getLocationName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/gindin/util/LogUtils;->logEvent(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;

    invoke-interface {v1, p1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;->locationChanged(Lcom/gindin/zmanim/android/location/ZmanimLocation;)V

    goto :goto_5c

    :cond_6c
    return-void
.end method

.method private fireProgress(Ljava/lang/String;)V
    .registers 5

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;

    invoke-interface {v1, p1}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;->onProgress(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private getTimeZoneFromPrefs()Ljava/util/TimeZone;
    .registers 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->OVERRIDE_SYSTEM_TIME_ZONE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-virtual {v3}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_12

    move-object v2, v5

    :goto_11
    return-object v2

    :cond_12
    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_AREA:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-virtual {v3}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2c

    :cond_2a
    move-object v2, v5

    goto :goto_11

    :cond_2c
    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_LOCALE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-virtual {v3}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_46

    :cond_44
    move-object v2, v5

    goto :goto_11

    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    goto :goto_11
.end method

.method private showLocationDetails()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Current Location"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->lastKnownLocation:Lcom/gindin/zmanim/android/location/ZmanimLocation;

    invoke-virtual {v2}, Lcom/gindin/zmanim/android/location/ZmanimLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startInitialProvider()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationListener:Lcom/gindin/zmanim/android/location/LocationProvider$Listener;

    invoke-virtual {v1, v2}, Lcom/gindin/zmanim/android/location/LocationProvider;->removeListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    invoke-virtual {v1}, Lcom/gindin/zmanim/android/location/LocationProvider;->onDestroy()V

    :cond_11
    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/gindin/zmanim/android/prefs/LocationProviders;->DYNAMIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;

    invoke-virtual {v2}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_53

    new-instance v1, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v1, v2, v3}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    :cond_2a
    :goto_2a
    if-nez v0, :cond_4b

    new-instance v1, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v1, v2, v3}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/gindin/zmanim/android/prefs/LocationProviders;->DYNAMIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;

    invoke-virtual {v2}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4b
    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationListener:Lcom/gindin/zmanim/android/location/LocationProvider$Listener;

    invoke-virtual {v1, v2}, Lcom/gindin/zmanim/android/location/LocationProvider;->addListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z

    return-void

    :cond_53
    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/gindin/zmanim/android/prefs/LocationProviders;->STATIC_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;

    invoke-virtual {v2}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6d

    new-instance v1, Lcom/gindin/zmanim/android/location/StaticLocationProvider;

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v1, v2, v3}, Lcom/gindin/zmanim/android/location/StaticLocationProvider;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    goto :goto_2a

    :cond_6d
    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/gindin/zmanim/android/prefs/LocationProviders;->LATITUDE_LONGITUDE_POSITION:Lcom/gindin/zmanim/android/prefs/LocationProviders;

    invoke-virtual {v2}, Lcom/gindin/zmanim/android/prefs/LocationProviders;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v1, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v1, v2, v3}, Lcom/gindin/zmanim/android/location/LatitudeLongitudeLocationProvider;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    goto :goto_2a
.end method

.method private updateLastKnownLocation(Landroid/location/Location;Ljava/lang/String;)Lcom/gindin/zmanim/android/location/ZmanimLocation;
    .registers 5

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    invoke-direct {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->getTimeZoneFromPrefs()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Lcom/gindin/zmanim/android/location/ZmanimLocation;

    invoke-direct {v1, p1, p2, v0}, Lcom/gindin/zmanim/android/location/ZmanimLocation;-><init>(Landroid/location/Location;Ljava/lang/String;Ljava/util/TimeZone;)V

    iput-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->lastKnownLocation:Lcom/gindin/zmanim/android/location/ZmanimLocation;

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->lastKnownLocation:Lcom/gindin/zmanim/android/location/ZmanimLocation;

    goto :goto_3
.end method


# virtual methods
.method public addListener(Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;)V
    .registers 4

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/gindin/util/Version;->isDevelopment()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener already listening!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_27

    invoke-direct {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->startInitialProvider()V

    :cond_27
    return-void
.end method

.method public editLocationPrefs()V
    .registers 5

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->prefsBeforeEditing:Ljava/util/Map;

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->activity:Landroid/app/Activity;

    const-class v3, Lcom/gindin/zmanim/android/prefs/EditLocationProviderPreferences;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/gindin/zmanim/android/Activities;->EDIT_LOCATION_PREFERENCES:Lcom/gindin/zmanim/android/Activities;

    invoke-virtual {v2}, Lcom/gindin/zmanim/android/Activities;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getLastKnownLocation()Lcom/gindin/zmanim/android/location/ZmanimLocation;
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->lastKnownLocation:Lcom/gindin/zmanim/android/location/ZmanimLocation;

    return-object v0
.end method

.method public locationPrefsChanged()V
    .registers 3

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationManagementPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->prefsBeforeEditing:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-direct {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->startInitialProvider()V

    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->prefsBeforeEditing:Ljava/util/Map;

    return-void
.end method

.method public onDestroy()V
    .registers 7

    iget-object v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;

    invoke-virtual {p0, v2}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->removeListener(Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;)V

    goto :goto_e

    :cond_1e
    iget-object v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    iget-object v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    iget-object v4, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationListener:Lcom/gindin/zmanim/android/location/LocationProvider$Listener;

    invoke-virtual {v3, v4}, Lcom/gindin/zmanim/android/location/LocationProvider;->removeListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z

    invoke-static {}, Lcom/gindin/util/Version;->isDevelopment()Z

    move-result v3

    if-eqz v3, :cond_52

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Should have removed all listeners. Still have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_52
    iget-object v3, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    invoke-virtual {v3}, Lcom/gindin/zmanim/android/location/LocationProvider;->onDestroy()V

    invoke-direct {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->clearLocationFieldListeners()V

    return-void
.end method

.method public onLocationProvidersChanged()V
    .registers 2

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    invoke-virtual {v0}, Lcom/gindin/zmanim/android/location/LocationProvider;->onLocationProvidersChanged()V

    return-void
.end method

.method public removeListener(Lcom/gindin/zmanim/android/location/ZmanimLocationManager$Listener;)V
    .registers 4

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationProvider:Lcom/gindin/zmanim/android/location/LocationProvider;

    iget-object v1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationListener:Lcom/gindin/zmanim/android/location/LocationProvider$Listener;

    invoke-virtual {v0, v1}, Lcom/gindin/zmanim/android/location/LocationProvider;->removeListener(Lcom/gindin/zmanim/android/location/LocationProvider$Listener;)Z

    :cond_1c
    return-void

    :cond_1d
    invoke-static {}, Lcom/gindin/util/Version;->isDevelopment()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener isn\'t listening!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLocationField(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationField:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->clearLocationFieldListeners()V

    :cond_7
    iput-object p1, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationField:Landroid/view/View;

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/gindin/zmanim/android/location/ZmanimLocationManager;->locationLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
