.class final Lcom/google/android/gms/internal/kp;
.super Lcom/google/android/gms/internal/gn;
.field final synthetic a:Lcom/google/android/gms/internal/jy;
.field private final c:Lcom/google/android/gms/games/request/GameRequest;
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/request/d;Lcom/google/android/gms/games/request/GameRequest;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/kp;->a:Lcom/google/android/gms/internal/jy;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/kp;->c:Lcom/google/android/gms/games/request/GameRequest;
return-void
.end method
.method protected a(Lcom/google/android/gms/games/request/d;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/kp;->c:Lcom/google/android/gms/games/request/GameRequest;
invoke-interface {p1, v0}, Lcom/google/android/gms/games/request/d;->a(Lcom/google/android/gms/games/request/GameRequest;)V
return-void
.end method
.method protected synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/request/d;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kp;->a(Lcom/google/android/gms/games/request/d;)V
return-void
.end method
.method protected c()V
.registers 1
return-void
.end method