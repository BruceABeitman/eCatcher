.class public final enum Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;
.super Ljava/lang/Enum;
.source "ZmanimPrefs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

.field public static final enum LAST_LOCATION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

.field public static final enum LOCATION_MANAGEMENT:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

.field public static final enum PERSONAL:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

.field public static final enum VERSION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

.field public static final enum ZMANIM_SELECTION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    const-string v1, "VERSION"

    invoke-direct {v0, v1, v2}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->VERSION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    new-instance v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    const-string v1, "ZMANIM_SELECTION"

    invoke-direct {v0, v1, v3}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->ZMANIM_SELECTION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    new-instance v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    const-string v1, "LAST_LOCATION"

    invoke-direct {v0, v1, v4}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->LAST_LOCATION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    new-instance v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    const-string v1, "LOCATION_MANAGEMENT"

    invoke-direct {v0, v1, v5}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->LOCATION_MANAGEMENT:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    new-instance v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    const-string v1, "PERSONAL"

    invoke-direct {v0, v1, v6}, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->PERSONAL:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    sget-object v1, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->VERSION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->ZMANIM_SELECTION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->LAST_LOCATION:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->LOCATION_MANAGEMENT:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->PERSONAL:Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->$VALUES:[Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;
    .registers 2

    const-class v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    return-object p0
.end method

.method public static values()[Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;
    .registers 1

    sget-object v0, Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->$VALUES:[Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    invoke-virtual {v0}, [Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gindin/zmanim/android/prefs/ZmanimPrefs;

    return-object v0
.end method
