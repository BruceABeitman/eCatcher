.class public Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public final clusters:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field public final recType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;Ljava/lang/String;)V
    .registers 3
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "recs"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "userRecType"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;->recType:Ljava/lang/String;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;->clusters:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;

    return-void
.end method
