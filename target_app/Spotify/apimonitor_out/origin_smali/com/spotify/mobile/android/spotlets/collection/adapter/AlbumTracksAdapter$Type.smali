.class final enum Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

.field private static final synthetic b:[Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    const-string v1, "TRACK"

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->b:[Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->b:[Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    return-object v0
.end method
