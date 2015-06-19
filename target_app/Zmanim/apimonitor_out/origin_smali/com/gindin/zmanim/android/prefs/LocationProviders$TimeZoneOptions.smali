.class public final enum Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;
.super Ljava/lang/Enum;
.source "LocationProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/prefs/LocationProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeZoneOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

.field public static final enum OVERRIDE_SYSTEM_TIME_ZONE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

.field public static final enum TIME_ZONE_AREA:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

.field public static final enum TIME_ZONE_LOCALE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    const-string v1, "OVERRIDE_SYSTEM_TIME_ZONE"

    invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->OVERRIDE_SYSTEM_TIME_ZONE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    new-instance v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    const-string v1, "TIME_ZONE_AREA"

    invoke-direct {v0, v1, v3}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_AREA:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    new-instance v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    const-string v1, "TIME_ZONE_LOCALE"

    invoke-direct {v0, v1, v4}, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_LOCALE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->OVERRIDE_SYSTEM_TIME_ZONE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_AREA:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->TIME_ZONE_LOCALE:Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    aput-object v1, v0, v4

    sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->$VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;
    .registers 2

    const-class v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    return-object p0
.end method

.method public static values()[Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;
    .registers 1

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->$VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    invoke-virtual {v0}, [Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gindin/zmanim/android/prefs/LocationProviders$TimeZoneOptions;

    return-object v0
.end method
