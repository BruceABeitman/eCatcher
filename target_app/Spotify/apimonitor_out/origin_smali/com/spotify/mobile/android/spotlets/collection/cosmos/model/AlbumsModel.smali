.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumsModel;
.super Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel",
        "<",
        "Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;Ljava/lang/String;IIZ)V
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

    invoke-direct/range {p0 .. p5}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ItemsModel;-><init>([Lcom/spotify/mobile/android/cosmos/JacksonModel;Ljava/lang/String;IIZ)V

    return-void
.end method
