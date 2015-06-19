.class public Lcom/spotify/music/spotlets/radio/model/TrackModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public final albumName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final albumUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final artistName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final artistUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final imageUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final thumb:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final thumbState:Lcom/spotify/music/spotlets/radio/model/ThumbState;

.field public final uri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "name"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "artistName"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "artistUri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "albumName"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "albumUri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "imageUri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "thumb"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->artistName:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->artistUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->albumName:Ljava/lang/String;

    iput-object p6, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->albumUri:Ljava/lang/String;

    iput-object p7, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->imageUri:Ljava/lang/String;

    iput-object p8, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->thumb:Ljava/lang/String;

    invoke-static {p8}, Lcom/spotify/music/spotlets/radio/model/TrackModel;->getThumbStateFromBackendResponse(Ljava/lang/String;)Lcom/spotify/music/spotlets/radio/model/ThumbState;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->thumbState:Lcom/spotify/music/spotlets/radio/model/ThumbState;

    return-void
.end method

.method private static getThumbStateFromBackendResponse(Ljava/lang/String;)Lcom/spotify/music/spotlets/radio/model/ThumbState;
    .registers 2

    const-string v0, "up"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;->b:Lcom/spotify/music/spotlets/radio/model/ThumbState;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "down"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;->c:Lcom/spotify/music/spotlets/radio/model/ThumbState;

    goto :goto_a

    :cond_16
    sget-object v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;->a:Lcom/spotify/music/spotlets/radio/model/ThumbState;

    goto :goto_a
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5a

    instance-of v1, p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;

    if-eqz v1, :cond_5a

    check-cast p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->uri:Ljava/lang/String;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;->uri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->artistName:Ljava/lang/String;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;->artistName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->artistUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;->artistUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->albumName:Ljava/lang/String;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;->albumName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->albumUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;->albumUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->imageUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;->imageUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->thumb:Ljava/lang/String;

    iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/TrackModel;->thumb:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v0, 0x1

    :cond_5a
    return v0
.end method

.method public hashCode()I
    .registers 4
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->uri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->artistName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->artistUri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->albumName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->albumUri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->imageUri:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/TrackModel;->thumb:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
