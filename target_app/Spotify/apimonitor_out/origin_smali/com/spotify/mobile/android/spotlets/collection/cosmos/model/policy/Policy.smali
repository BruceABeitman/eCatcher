.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/Policy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mDecorationPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "policy"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/Policy;->mDecorationPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;

    return-void
.end method
