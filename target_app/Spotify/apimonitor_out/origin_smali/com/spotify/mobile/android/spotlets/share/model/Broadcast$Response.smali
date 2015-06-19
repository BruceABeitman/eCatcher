.class public Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# instance fields
.field private mStatusList:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;)V
    .registers 2
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "status"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;->mStatusList:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;

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
    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;->mStatusList:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;->mStatusList:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;->mStatusList:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1b
    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;->mStatusList:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;

    if-eqz v2, :cond_4

    goto :goto_1b
.end method

.method public getStatusList()Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;->mStatusList:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;->mStatusList:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response;->mStatusList:Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Response$StatusList;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
