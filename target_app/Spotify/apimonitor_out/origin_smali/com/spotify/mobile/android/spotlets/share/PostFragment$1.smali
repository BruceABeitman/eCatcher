.class Lcom/spotify/mobile/android/spotlets/share/PostFragment$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/share/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/share/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/share/a;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/PostFragment$1;->a:Lcom/spotify/mobile/android/spotlets/share/a;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 3

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/PostFragment$1;->a:Lcom/spotify/mobile/android/spotlets/share/a;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;->getResource()Lcom/spotify/mobile/android/spotlets/share/model/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/share/a;->a(Lcom/spotify/mobile/android/spotlets/share/model/Resource;)V

    return-void
.end method
