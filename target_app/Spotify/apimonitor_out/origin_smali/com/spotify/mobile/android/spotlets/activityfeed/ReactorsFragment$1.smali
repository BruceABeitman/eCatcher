.class Lcom/spotify/mobile/android/spotlets/activityfeed/ReactorsFragment$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/activityfeed/b;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/spotlets/user/ProfileModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/b;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ReactorsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ReactorsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->b(Lcom/spotify/mobile/android/spotlets/activityfeed/b;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 8

    check-cast p2, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ReactorsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getImageHttpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/b;Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/UserModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/ReactorsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/b;)V

    return-void
.end method
