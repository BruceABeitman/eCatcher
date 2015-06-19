.class public final enum Lcom/spotify/mobile/android/util/PlaybackListener$Change;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/util/PlaybackListener$Change;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

.field public static final enum b:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

.field public static final enum c:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

.field public static final enum d:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

.field private static final synthetic e:[Lcom/spotify/mobile/android/util/PlaybackListener$Change;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    const-string v1, "METADATA"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/PlaybackListener$Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->a:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    new-instance v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    const-string v1, "PLAYBACK_STATE"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/util/PlaybackListener$Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->b:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    new-instance v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    const-string v1, "QUEUE"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/util/PlaybackListener$Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->c:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    new-instance v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    const-string v1, "PLAYBACK_LOCATION"

    invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/util/PlaybackListener$Change;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->d:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->a:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->b:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->c:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->d:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    aput-object v1, v0, v5

    sput-object v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->e:[Lcom/spotify/mobile/android/util/PlaybackListener$Change;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/util/PlaybackListener$Change;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/util/PlaybackListener$Change;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->e:[Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/util/PlaybackListener$Change;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    return-object v0
.end method
