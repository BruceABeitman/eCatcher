.class public Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# instance fields
.field public final action:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation
.end field

.field public contextUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "context"
    .end annotation
.end field

.field public durationInMs:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation
.end field

.field public index:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "index"
    .end annotation
.end field

.field public loading:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "loading"
    .end annotation
.end field

.field public nextPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "next_page_url"
    .end annotation
.end field

.field public options:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "options"
    .end annotation
.end field

.field public origin:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "play_origin"
    .end annotation
.end field

.field public playing:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "playing"
    .end annotation
.end field

.field public positionInMs:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "position"
    .end annotation
.end field

.field public trackUri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "track"
    .end annotation
.end field

.field public tracks:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tracks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->UNKNOWN:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;-><init>(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->action:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;

    return-void
.end method
