.class public Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mTopTracks:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;


# direct methods
.method public constructor <init>([Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;Ljava/lang/String;)V
    .registers 3
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "top_songs"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "label"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mTopTracks:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;

    iput-object p2, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getTopTracks()[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mTopTracks:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;

    return-object v0
.end method

.method public getTopTracksAsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mTopTracks:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_17

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->getTrackUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return-object v1
.end method
