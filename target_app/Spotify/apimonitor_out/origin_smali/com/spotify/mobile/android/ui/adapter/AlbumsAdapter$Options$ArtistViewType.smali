.class public final enum Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

.field public static final enum b:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

.field public static final enum c:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

.field private static final synthetic d:[Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    const-string v1, "YEAR"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->a:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->b:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    const-string v1, "TRACK_COUNTS"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->c:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    sget-object v1, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->a:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->b:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->c:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->d:[Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->d:[Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;

    return-object v0
.end method
