.class public final enum Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

.field public static final enum b:Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

.field private static final synthetic c:[Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;


# instance fields
.field private mOrdering:Lcom/google/common/collect/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/am",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    const-string v1, "NAME"

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/google/common/collect/am;->a(Ljava/util/Comparator;)Lcom/google/common/collect/am;

    move-result-object v2

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists;->a()Lcom/google/common/base/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/am;->a(Lcom/google/common/base/b;)Lcom/google/common/collect/am;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;-><init>(Ljava/lang/String;ILcom/google/common/collect/am;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->a:Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;-><init>(Ljava/lang/String;ILcom/google/common/collect/am;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->b:Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->a:Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->b:Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    aput-object v1, v0, v5

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->c:[Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/common/collect/am;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/am",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->mOrdering:Lcom/google/common/collect/am;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->c:[Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Playlist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->mOrdering:Lcom/google/common/collect/am;

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    if-eqz p2, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->mOrdering:Lcom/google/common/collect/am;

    invoke-virtual {v0}, Lcom/google/common/collect/am;->a()Lcom/google/common/collect/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/am;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_16
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists$SortOrder;->mOrdering:Lcom/google/common/collect/am;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/am;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method
