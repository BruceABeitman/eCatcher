.class public Lcom/spotify/mobile/android/spotlets/share/model/Resource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# instance fields
.field private mImage:Ljava/lang/String;

.field private mSubtitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "type"
        .end annotation
    .end parameter
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
            value = "subtitle"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "image"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mSubtitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mImage:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mImage:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mImage:Ljava/lang/String;

    if-nez v2, :cond_1b

    :cond_21
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mSubtitle:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mSubtitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_2f
    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mSubtitle:Ljava/lang/String;

    if-nez v2, :cond_2f

    :cond_35
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    :cond_43
    move v0, v1

    goto :goto_4

    :cond_45
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_43

    :cond_49
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mType:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mType:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    :cond_57
    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mType:Ljava/lang/String;

    if-nez v2, :cond_57

    :cond_5d
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_6b
    move v0, v1

    goto :goto_4

    :cond_6d
    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_6b
.end method

.method public getImage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mType:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mSubtitle:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mImage:Ljava/lang/String;

    if-eqz v2, :cond_3e

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->mImage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3e
    add-int/2addr v0, v1

    return v0

    :cond_40
    move v0, v1

    goto :goto_b

    :cond_42
    move v0, v1

    goto :goto_17

    :cond_44
    move v0, v1

    goto :goto_24

    :cond_46
    move v0, v1

    goto :goto_31
.end method
