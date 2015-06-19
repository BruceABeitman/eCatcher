.class public final enum Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;
.super Ljava/lang/Enum;
.source "LocationProviders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/prefs/LocationProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DynamicProviderOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

.field public static final enum PREFER_GPS:Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

    const-string v1, "PREFER_GPS"

    invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;->PREFER_GPS:Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

    sget-object v1, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;->PREFER_GPS:Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

    aput-object v1, v0, v2

    sput-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;->$VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;
    .registers 2

    const-class v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

    return-object p0
.end method

.method public static values()[Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;
    .registers 1

    sget-object v0, Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;->$VALUES:[Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

    invoke-virtual {v0}, [Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gindin/zmanim/android/prefs/LocationProviders$DynamicProviderOptions;

    return-object v0
.end method
