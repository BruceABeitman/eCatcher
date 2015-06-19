.class Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$8;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$8;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    const-string v0, "Failed loading invitation code info"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$8;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$8;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->e(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$8;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;->getUnclaimedInvitationCodeCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$8;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->e(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V

    return-void
.end method
