.class public final enum Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

.field public static final enum b:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

.field public static final enum c:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

.field public static final d:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    const-string v1, "ACTIVATED"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->a:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    const-string v1, "STATE_CHANGE"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->b:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->c:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->a:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->b:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->c:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->e:[Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->d:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->e:[Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    return-object v0
.end method
