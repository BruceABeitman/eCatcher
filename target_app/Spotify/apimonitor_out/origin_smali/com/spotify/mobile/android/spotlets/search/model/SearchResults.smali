.class public final Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final NO_RESULTS:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;


# instance fields
.field public final albums:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;",
            ">;"
        }
    .end annotation
.end field

.field public final artists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;",
            ">;"
        }
    .end annotation
.end field

.field public final genres:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Genre;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasResults:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    .end annotation
.end field

.field public final playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field public final profiles:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;",
            ">;"
        }
    .end annotation
.end field

.field public final sortedCategory:[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

.field public final suggestions:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field public final topHit:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

.field public final tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v1, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;-><init>(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->NO_RESULTS:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    return-void
.end method

.method private constructor <init>(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Genre;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;",
            ">;[",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->artists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->albums:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->profiles:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->genres:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iput-object p7, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->suggestions:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iput-object p9, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->topHit:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    iput-object p8, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->sortedCategory:[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->artists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->albums:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->profiles:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_64

    :cond_49
    move v2, v1

    :goto_4a
    if-nez v2, :cond_60

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->suggestions:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->genres:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_61

    :cond_60
    move v0, v1

    :cond_61
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->mHasResults:Z

    return-void

    :cond_64
    move v2, v0

    goto :goto_4a
.end method

.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "artists"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "albums"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "tracks"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "playlists"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "profiles"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "genres"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "suggestions"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "sortedCategory"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "topHit"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Genre;",
            ">;",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->fromNullable(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v1

    invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->fromNullable(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v2

    invoke-static {p3}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->fromNullable(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v3

    invoke-static {p4}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->fromNullable(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v4

    invoke-static {p5}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->fromNullable(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->fromNullable(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->fromNullable(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->a([Ljava/lang/String;)[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    move-result-object v8

    invoke-static/range {p9 .. p9}, Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;-><init>(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;)V

    return-void
.end method


# virtual methods
.method public final append(Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;
    .registers 12

    if-nez p1, :cond_3

    :goto_2
    return-object p0

    :cond_3
    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->artists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->artists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->append(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->albums:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->albums:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->append(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v4, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    invoke-virtual {v3, v4}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->append(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v5, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->append(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->profiles:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v6, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->profiles:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    invoke-virtual {v5, v6}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->append(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v5

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->genres:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v7, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->genres:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    invoke-virtual {v6, v7}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->append(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v6

    iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->suggestions:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v8, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->suggestions:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    invoke-virtual {v7, v8}, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->append(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;)Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    move-result-object v7

    iget-object v8, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->sortedCategory:[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    iget-object v9, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->topHit:Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    invoke-direct/range {v0 .. v9}, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;-><init>(Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;Lcom/spotify/mobile/android/spotlets/search/model/ResultList;[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;)V

    move-object p0, v0

    goto :goto_2
.end method

.method public final hasResults()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->mHasResults:Z

    return v0
.end method
