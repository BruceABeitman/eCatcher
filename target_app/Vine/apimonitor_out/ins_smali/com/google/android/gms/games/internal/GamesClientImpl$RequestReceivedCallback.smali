.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;
.super Lcom/google/android/gms/internal/hc$b;
.field final synthetic NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field private final Ox:Lcom/google/android/gms/games/request/GameRequest;
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/request/OnRequestReceivedListener;Lcom/google/android/gms/games/request/GameRequest;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;->NB:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hc$b;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;->Ox:Lcom/google/android/gms/games/request/GameRequest;
return-void
.end method
.method protected b(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;->Ox:Lcom/google/android/gms/games/request/GameRequest;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/request/OnRequestReceivedListener;->onRequestReceived(Lcom/google/android/gms/games/request/GameRequest;)V
return-void
.end method
.method protected synthetic d(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/request/OnRequestReceivedListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;->b(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
return-void
.end method
.method protected fp()V
.registers 1
return-void
.end method