.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private mHeaderPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/HeaderPolicy;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "header"
    .end annotation
.end field

.field private mListPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "list"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setHeaderPolicy(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/HeaderPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;->mHeaderPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/HeaderPolicy;

    return-void
.end method

.method public setListPolicy(Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/DecorationPolicy;->mListPolicy:Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;

    return-void
.end method
