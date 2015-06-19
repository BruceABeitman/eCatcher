.class public final enum Lcom/gindin/zmanim/android/location/LocationError$Code;
.super Ljava/lang/Enum;
.source "LocationError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/location/LocationError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gindin/zmanim/android/location/LocationError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gindin/zmanim/android/location/LocationError$Code;

.field public static final enum BAD_INPUT:Lcom/gindin/zmanim/android/location/LocationError$Code;

.field public static final enum CANNOT_DETERMINE_LOCATION:Lcom/gindin/zmanim/android/location/LocationError$Code;

.field public static final enum NO_LOCATION_MANAGER_SERVICE:Lcom/gindin/zmanim/android/location/LocationError$Code;

.field public static final enum NO_PROVIDERS:Lcom/gindin/zmanim/android/location/LocationError$Code;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/gindin/zmanim/android/location/LocationError$Code;

    const-string v1, "CANNOT_DETERMINE_LOCATION"

    invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/location/LocationError$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/location/LocationError$Code;->CANNOT_DETERMINE_LOCATION:Lcom/gindin/zmanim/android/location/LocationError$Code;

    new-instance v0, Lcom/gindin/zmanim/android/location/LocationError$Code;

    const-string v1, "BAD_INPUT"

    invoke-direct {v0, v1, v3}, Lcom/gindin/zmanim/android/location/LocationError$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/location/LocationError$Code;->BAD_INPUT:Lcom/gindin/zmanim/android/location/LocationError$Code;

    new-instance v0, Lcom/gindin/zmanim/android/location/LocationError$Code;

    const-string v1, "NO_LOCATION_MANAGER_SERVICE"

    invoke-direct {v0, v1, v4}, Lcom/gindin/zmanim/android/location/LocationError$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/location/LocationError$Code;->NO_LOCATION_MANAGER_SERVICE:Lcom/gindin/zmanim/android/location/LocationError$Code;

    new-instance v0, Lcom/gindin/zmanim/android/location/LocationError$Code;

    const-string v1, "NO_PROVIDERS"

    invoke-direct {v0, v1, v5}, Lcom/gindin/zmanim/android/location/LocationError$Code;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/location/LocationError$Code;->NO_PROVIDERS:Lcom/gindin/zmanim/android/location/LocationError$Code;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/gindin/zmanim/android/location/LocationError$Code;

    sget-object v1, Lcom/gindin/zmanim/android/location/LocationError$Code;->CANNOT_DETERMINE_LOCATION:Lcom/gindin/zmanim/android/location/LocationError$Code;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gindin/zmanim/android/location/LocationError$Code;->BAD_INPUT:Lcom/gindin/zmanim/android/location/LocationError$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gindin/zmanim/android/location/LocationError$Code;->NO_LOCATION_MANAGER_SERVICE:Lcom/gindin/zmanim/android/location/LocationError$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gindin/zmanim/android/location/LocationError$Code;->NO_PROVIDERS:Lcom/gindin/zmanim/android/location/LocationError$Code;

    aput-object v1, v0, v5

    sput-object v0, Lcom/gindin/zmanim/android/location/LocationError$Code;->$VALUES:[Lcom/gindin/zmanim/android/location/LocationError$Code;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gindin/zmanim/android/location/LocationError$Code;
    .registers 2

    const-class v0, Lcom/gindin/zmanim/android/location/LocationError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/android/location/LocationError$Code;

    return-object p0
.end method

.method public static values()[Lcom/gindin/zmanim/android/location/LocationError$Code;
    .registers 1

    sget-object v0, Lcom/gindin/zmanim/android/location/LocationError$Code;->$VALUES:[Lcom/gindin/zmanim/android/location/LocationError$Code;

    invoke-virtual {v0}, [Lcom/gindin/zmanim/android/location/LocationError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gindin/zmanim/android/location/LocationError$Code;

    return-object v0
.end method
