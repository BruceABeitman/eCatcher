.class Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosJsonSource$CosmosSearchTask$1;
.super Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/loader/source/b;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/loader/source/a;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/search/loader/source/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/source/b;Landroid/os/Handler;Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosJsonSource$CosmosSearchTask$1;->b:Lcom/spotify/mobile/android/spotlets/search/loader/source/b;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosJsonSource$CosmosSearchTask$1;->a:Lcom/spotify/mobile/android/spotlets/search/loader/source/a;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;-><init>(Landroid/os/Handler;Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosJsonSource$CosmosSearchTask$1;->b:Lcom/spotify/mobile/android/spotlets/search/loader/source/b;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->a(Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->a(Ljava/lang/Throwable;)Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->c(Lcom/spotify/mobile/android/spotlets/search/loader/source/b;Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Lcom/spotify/mobile/android/cosmos/JacksonModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosJsonSource$CosmosSearchTask$1;->b:Lcom/spotify/mobile/android/spotlets/search/loader/source/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->b()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosJsonSource$CosmosSearchTask$1;->b:Lcom/spotify/mobile/android/spotlets/search/loader/source/b;

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->a(Lcom/spotify/mobile/android/spotlets/search/loader/source/b;Ljava/lang/Object;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosJsonSource$CosmosSearchTask$1;->b:Lcom/spotify/mobile/android/spotlets/search/loader/source/b;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->b:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Empty response!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->a(Ljava/lang/Throwable;)Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->b(Lcom/spotify/mobile/android/spotlets/search/loader/source/b;Ljava/lang/Object;)V

    goto :goto_11
.end method
