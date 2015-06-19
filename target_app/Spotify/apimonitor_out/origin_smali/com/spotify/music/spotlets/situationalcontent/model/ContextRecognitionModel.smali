.class public Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mContextModels:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;

.field private final mStatus:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;)V
    .registers 3
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "status"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "contexts"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;->mStatus:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;->mContextModels:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;

    return-void
.end method


# virtual methods
.method public getContextModels()[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;->mContextModels:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextRecognitionModel;->mStatus:Ljava/lang/String;

    return-object v0
.end method
