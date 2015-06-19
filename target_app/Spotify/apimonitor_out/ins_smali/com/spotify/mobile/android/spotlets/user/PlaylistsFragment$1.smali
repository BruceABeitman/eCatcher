.class  Lcom/spotify/mobile/android/spotlets/user/PlaylistsFragment$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/e;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/e;Landroid/os/Handler;Ljava/lang/Class;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/e;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/e;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/e;->b(Lcom/spotify/mobile/android/spotlets/user/e;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->c:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 5
check-cast p2, Lcom/spotify/mobile/android/spotlets/user/PlaylistListModel;
invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getStatus()I
move-result v0
const/16 v1, 0xc8
if-ne v0, v1, :cond_31
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/user/PlaylistListModel;->getPlaylists()[Lcom/spotify/mobile/android/spotlets/user/PlaylistModel;
move-result-object v0
if-eqz v0, :cond_25
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/e;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/e;->a(Lcom/spotify/mobile/android/spotlets/user/e;)Lcom/spotify/mobile/android/spotlets/user/d;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/user/d;->a([Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/e;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/e;->b(Lcom/spotify/mobile/android/spotlets/user/e;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V
:goto_24
return-void
:cond_25
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/e;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/e;->b(Lcom/spotify/mobile/android/spotlets/user/e;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->c:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V
goto :goto_24
:cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/PlaylistsFragment$1;->a:Lcom/spotify/mobile/android/spotlets/user/e;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/e;->b(Lcom/spotify/mobile/android/spotlets/user/e;)Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->c:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V
goto :goto_24
.end method