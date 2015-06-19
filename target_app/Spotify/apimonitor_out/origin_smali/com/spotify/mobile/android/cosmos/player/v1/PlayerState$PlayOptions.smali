.class public Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public canRepeat:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_repeat"
    .end annotation
.end field

.field public canSeek:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_seek"
    .end annotation
.end field

.field public canShuffle:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_shuffle"
    .end annotation
.end field

.field public canSkipNext:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_skip_next"
    .end annotation
.end field

.field public canSkipPrev:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "can_skip_prev"
    .end annotation
.end field

.field public repeat:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "repeat"
    .end annotation
.end field

.field public shuffle:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "shuffle"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
