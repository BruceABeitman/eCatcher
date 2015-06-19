.class public Lco/vine/android/network/ssl/VinePins;
.super Ljava/lang/Object;
.source "VinePins.java"


# static fields
.field public static final PINS:[Ljava/lang/String;

.field public static final PIN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lco/vine/android/network/ssl/VinePins$1;

    invoke-direct {v0}, Lco/vine/android/network/ssl/VinePins$1;-><init>()V

    sput-object v0, Lco/vine/android/network/ssl/VinePins;->PIN_MAP:Ljava/util/Map;

    sget-object v0, Lco/vine/android/network/ssl/VinePins;->PIN_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lco/vine/android/network/ssl/VinePins;->PIN_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lco/vine/android/network/ssl/VinePins;->PINS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
