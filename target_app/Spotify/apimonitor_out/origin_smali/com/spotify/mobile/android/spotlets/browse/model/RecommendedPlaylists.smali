.class public Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = false
.end annotation


# instance fields
.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final recommendedPlaylists:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;)V
    .registers 3
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "description"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "playlists"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;->description:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;->recommendedPlaylists:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;

    return-void
.end method
