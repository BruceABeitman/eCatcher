.class Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mFollowersCount:I

.field private final mFollowingCount:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->mFollowersCount:I

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->mFollowingCount:I

    return-void
.end method


# virtual methods
.method public getFollowersCount()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->mFollowersCount:I

    return v0
.end method

.method public getFollowingCount()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader$Count;->mFollowingCount:I

    return v0
.end method
