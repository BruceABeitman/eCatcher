.class public Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public reason:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reason"
    .end annotation
.end field

.field public referrer:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "referrer"
    .end annotation
.end field

.field public referrerVendor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "referrer_vendor"
    .end annotation
.end field

.field public referrerVersion:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "referrer_version"
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "source"
    .end annotation
.end field

.field public sourceContext:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "source_context"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
