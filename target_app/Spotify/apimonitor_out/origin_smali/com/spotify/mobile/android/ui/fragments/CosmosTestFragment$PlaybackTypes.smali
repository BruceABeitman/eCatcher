.class public final enum Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

.field public static final enum b:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

.field public static final enum c:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

.field public static final enum d:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

.field public static final enum e:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

.field private static final synthetic f:[Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    const-string v1, "TRACKS_LIST"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    const-string v1, "ALBUM_URI"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->b:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    const-string v1, "ARTIST_URI"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->c:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    const-string v1, "PLAYLIST_URI"

    invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->d:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->e:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->b:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->c:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->d:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->e:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    aput-object v1, v0, v6

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->f:[Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->f:[Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$PlaybackTypes;

    return-object v0
.end method
