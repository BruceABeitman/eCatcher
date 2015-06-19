.class public Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mCuratorName:Ljava/lang/String;

.field private final mCuratorUri:Ljava/lang/String;

.field private final mFollowersCount:I

.field private final mImageUrl:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
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
            value = "followers_count"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "image_url"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "curator_uri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "curator_name"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mFollowersCount:I

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mImageUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorUri:Ljava/lang/String;

    iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p0, p1, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mUri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mFollowersCount:I

    iget v3, p1, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mFollowersCount:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mImageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorUri:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public getCuratorName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "curator_name"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorName:Ljava/lang/String;

    return-object v0
.end method

.method public getCuratorUri()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "curator_uri"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowersCount()I
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "followers_count"
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mFollowersCount:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "image_url"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "uri"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mName:Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mFollowersCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_29
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorUri:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_36
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorName:Ljava/lang/String;

    if-eqz v2, :cond_43

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;->mCuratorName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_43
    add-int/2addr v0, v1

    return v0

    :cond_45
    move v0, v1

    goto :goto_b

    :cond_47
    move v0, v1

    goto :goto_17

    :cond_49
    move v0, v1

    goto :goto_29

    :cond_4b
    move v0, v1

    goto :goto_36
.end method
