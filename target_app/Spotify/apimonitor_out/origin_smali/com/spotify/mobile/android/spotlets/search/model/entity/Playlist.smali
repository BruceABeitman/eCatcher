.class public final Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;
.super Lcom/spotify/mobile/android/spotlets/search/model/entity/Followable;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/model/entity/e;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public final author:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .registers 15
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "uri"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "author"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "image"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "name"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "followersCount"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "following"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "loggingData"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Followable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/fasterxml/jackson/databind/JsonNode;)V

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;->author:Ljava/lang/String;

    return-void
.end method
