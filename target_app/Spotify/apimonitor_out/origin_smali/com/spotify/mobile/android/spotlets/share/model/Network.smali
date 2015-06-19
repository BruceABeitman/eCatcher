.class public Lcom/spotify/mobile/android/spotlets/share/model/Network;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNetwork:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

.field private mState:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;Lcom/spotify/mobile/android/spotlets/share/model/Network$State;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "network"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "state"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "id"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "name"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mNetwork:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mState:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mId:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mName:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Network;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/share/model/Network;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mId:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mId:Ljava/lang/String;

    if-nez v2, :cond_1b

    :cond_21
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mName:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_2f
    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mName:Ljava/lang/String;

    if-nez v2, :cond_2f

    :cond_35
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mNetwork:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mNetwork:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    if-eq v2, v3, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mState:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mState:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mNetwork:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    return-object v0
.end method

.method public getState()Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mState:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mNetwork:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mNetwork:Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/model/Network$Type;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mState:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mState:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mId:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mName:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Network;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
