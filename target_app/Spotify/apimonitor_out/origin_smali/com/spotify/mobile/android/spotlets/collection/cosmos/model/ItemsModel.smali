.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/spotify/mobile/android/cosmos/JacksonModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/cosmos/JacksonModel;"
    }
.end annotation


# instance fields
.field private final mError:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mItems:[Lcom/spotify/mobile/android/cosmos/JacksonModel;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final mLength:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mLoadingContents:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mUnfilteredLength:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/spotify/mobile/android/cosmos/JacksonModel;Ljava/lang/String;IIZ)V
    .registers 6
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "items"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "error"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "unfilteredLength"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "length"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "loadingContents"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mItems:[Lcom/spotify/mobile/android/cosmos/JacksonModel;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mError:Ljava/lang/String;

    iput p3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mUnfilteredLength:I

    iput p4, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLength:I

    iput-boolean p5, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLoadingContents:Z

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mError:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Lcom/spotify/mobile/android/cosmos/JacksonModel;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mItems:[Lcom/spotify/mobile/android/cosmos/JacksonModel;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mUnfilteredLength:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEmptyWithFilter()Z
    .registers 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLength:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLength:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mUnfilteredLength:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isLoading()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLoadingContents:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;->mLength:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
