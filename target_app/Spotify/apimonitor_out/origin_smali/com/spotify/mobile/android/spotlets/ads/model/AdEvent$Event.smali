.class public final enum Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

.field public static final enum b:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

.field public static final enum c:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

.field public static final enum d:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    const-string v1, "AVAILABLE"

    const-string v2, "available"

    invoke-direct {v0, v1, v3, v2}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->a:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    const-string v1, "DISCARD"

    const-string v2, "discard"

    invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->b:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    const-string v1, "PLAY"

    const-string v2, "play"

    invoke-direct {v0, v1, v5, v2}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->c:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v6, v2}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->d:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->a:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->b:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->c:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->d:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    aput-object v1, v0, v6

    sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->f:[Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->e:Ljava/util/Map;

    const-class v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->e:Ljava/util/Map;

    iget-object v3, v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :cond_6a
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->mName:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->f:[Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->mName:Ljava/lang/String;

    return-object v0
.end method
