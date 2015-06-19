.class final Lcom/google/android/gms/internal/fx$aq;
.super Lcom/google/android/gms/internal/eh$b;
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;
.field private final Hh:Ljava/lang/String;
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/request/OnRequestReceivedListener;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/fx$aq;->GJ:Lcom/google/android/gms/internal/fx;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/fx$aq;->Hh:Ljava/lang/String;
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/request/OnRequestReceivedListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$aq;->b(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
return-void
.end method
.method protected final b(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fx$aq;->Hh:Ljava/lang/String;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/request/OnRequestReceivedListener;->onRequestRemoved(Ljava/lang/String;)V
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method