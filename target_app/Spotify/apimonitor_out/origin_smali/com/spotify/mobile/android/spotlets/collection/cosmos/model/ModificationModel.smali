.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private final mError:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private final mSuccess:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "error"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "success"
        .end annotation
    .end parameter

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;->mError:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;->mSuccess:Z

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;->mError:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/ModificationModel;->mSuccess:Z

    return v0
.end method
