.class  Lcom/spotify/mobile/android/core/internal/ConnectivityListener$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic this$0:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;
.method constructor <init>(Lcom/spotify/mobile/android/core/internal/ConnectivityListener;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener$1;->this$0:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener$1;->this$0:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;
#calls: Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->connectivityHasChanged()V
invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->access$000(Lcom/spotify/mobile/android/core/internal/ConnectivityListener;)V
return-void
.end method