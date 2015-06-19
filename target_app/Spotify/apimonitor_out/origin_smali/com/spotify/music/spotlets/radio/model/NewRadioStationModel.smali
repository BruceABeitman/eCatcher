.class public Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;
.super Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public final station:Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/TrackModel;Ljava/lang/String;)V
    .registers 4
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "station"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "tracks"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "next_tracks_uri"
        .end annotation
    .end parameter

    invoke-direct {p0, p2, p3}, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;-><init>([Lcom/spotify/music/spotlets/radio/model/TrackModel;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;->station:Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    instance-of v1, p1, Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;

    if-eqz v1, :cond_1a

    check-cast p1, Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;

    invoke-super {p0, p1}, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;->station:Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;->station:Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public hashCode()I
    .registers 4
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;->station:Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
