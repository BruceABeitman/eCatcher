.class Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$SimpleProfileModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .registers 6
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "followers_count"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "following_count"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "is_following"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/follow/a;-><init>(Ljava/lang/String;IIZ)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$SimpleProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;

    return-void
.end method


# virtual methods
.method public getFollowData()Lcom/spotify/mobile/android/spotlets/follow/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$SimpleProfileModel;->mFollowData:Lcom/spotify/mobile/android/spotlets/follow/a;

    return-object v0
.end method
