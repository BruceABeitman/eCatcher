.class  Lcom/spotify/mobile/android/spotlets/share/PostFragment$3$1;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/share/a$2;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/share/a$2;Landroid/os/Handler;Ljava/lang/Class;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/PostFragment$3$1;->a:Lcom/spotify/mobile/android/spotlets/share/a$2;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 3
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/PostFragment$3$1;->a:Lcom/spotify/mobile/android/spotlets/share/a$2;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/share/a$2;->a:Lcom/spotify/mobile/android/spotlets/share/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/PostFragment$3$1;->a:Lcom/spotify/mobile/android/spotlets/share/a$2;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/share/a$2;->a:Lcom/spotify/mobile/android/spotlets/share/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/music/MainActivity;
invoke-virtual {v0}, Lcom/spotify/music/MainActivity;->d()Lcom/spotify/mobile/android/ui/f;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->c()Z
return-void
.end method