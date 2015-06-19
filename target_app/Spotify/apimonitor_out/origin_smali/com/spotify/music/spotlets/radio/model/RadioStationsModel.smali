.class public Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public final genreStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final recommendedStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;)V
    .registers 5
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "user_stations"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "recommended_stations"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "genre_stations"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->safeArray([Lcom/spotify/music/spotlets/radio/model/RadioStationModel;)[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-static {p2}, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->safeArray([Lcom/spotify/music/spotlets/radio/model/RadioStationModel;)[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->recommendedStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-static {p3}, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->safeArray([Lcom/spotify/music/spotlets/radio/model/RadioStationModel;)[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->genreStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    return-void
.end method

.method private static safeArray([Lcom/spotify/music/spotlets/radio/model/RadioStationModel;)[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
    .registers 2

    if-nez p0, :cond_5

    const/4 v0, 0x0

    new-array p0, v0, [Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    :cond_5
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    instance-of v1, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;

    if-eqz v1, :cond_28

    check-cast p1, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->recommendedStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->recommendedStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->genreStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->genreStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->recommendedStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->genreStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
