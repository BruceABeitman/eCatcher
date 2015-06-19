.class public Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

.field private mTitle:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;)V
    .registers 6
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "title"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "message"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "networks"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mMessage:Ljava/lang/String;

    if-nez p4, :cond_e

    const/4 v0, 0x0

    new-array p4, v0, [Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    :cond_e
    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mMessage:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mMessage:Ljava/lang/String;

    if-nez v2, :cond_1b

    :cond_21
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    :cond_3b
    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_3b

    :cond_41
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_4f
    move v0, v1

    goto :goto_4

    :cond_51
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_4f
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworks()[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    if-eqz v2, :cond_31

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;->mNetworks:[Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_31
    add-int/2addr v0, v1

    return v0

    :cond_33
    move v0, v1

    goto :goto_b

    :cond_35
    move v0, v1

    goto :goto_17

    :cond_37
    move v0, v1

    goto :goto_24
.end method
