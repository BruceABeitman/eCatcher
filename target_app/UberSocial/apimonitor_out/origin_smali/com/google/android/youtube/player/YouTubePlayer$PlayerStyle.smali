.class public final enum Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CHROMELESS:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

.field public static final enum DEFAULT:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

.field public static final enum MINIMAL:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

.field private static final synthetic a:[Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->DEFAULT:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    new-instance v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    const-string v1, "MINIMAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->MINIMAL:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    new-instance v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    const-string v1, "CHROMELESS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->CHROMELESS:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    sget-object v1, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->DEFAULT:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->MINIMAL:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->CHROMELESS:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->a:[Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;
    .registers 2

    const-class v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;
    .registers 1

    sget-object v0, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->a:[Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    invoke-virtual {v0}, [Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    return-object v0
.end method
