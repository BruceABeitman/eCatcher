.class public Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;


# instance fields
.field private mError:Ljava/lang/String;

.field private mStatus:Z

.field private mTest:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "status"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "username"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "test"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "error"
        .end annotation
    .end parameter
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mStatus:Z

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mUsername:Ljava/lang/String;

    iput p3, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mTest:I

    iput-object p4, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mError:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mError:Ljava/lang/String;

    return-object v0
.end method

.method public getTest()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mTest:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mStatus:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnonymousUserResponse{mStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUsername=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mTest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mError=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->mError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
