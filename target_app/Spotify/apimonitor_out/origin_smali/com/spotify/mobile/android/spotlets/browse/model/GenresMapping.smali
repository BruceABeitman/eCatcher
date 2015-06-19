.class public Lcom/spotify/mobile/android/spotlets/browse/model/GenresMapping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public final genres:[Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;


# direct methods
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;)V
    .registers 2
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "genres"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/GenresMapping;->genres:[Lcom/spotify/mobile/android/spotlets/browse/model/GenreMapping;

    return-void
.end method
