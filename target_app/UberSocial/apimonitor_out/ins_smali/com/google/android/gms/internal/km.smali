.class final Lcom/google/android/gms/internal/km;
.super Lcom/google/android/gms/internal/gn;
.field final synthetic a:Lcom/google/android/gms/internal/jy;
.field private final c:I
.field private final d:Ljava/lang/String;
.field private final e:I
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/d;IILjava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/km;->a:Lcom/google/android/gms/internal/jy;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V
iput p3, p0, Lcom/google/android/gms/internal/km;->c:I
iput p4, p0, Lcom/google/android/gms/internal/km;->e:I
iput-object p5, p0, Lcom/google/android/gms/internal/km;->d:Ljava/lang/String;
return-void
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/d;)V
.registers 5
if-eqz p1, :cond_b
iget v0, p0, Lcom/google/android/gms/internal/km;->c:I
iget v1, p0, Lcom/google/android/gms/internal/km;->e:I
iget-object v2, p0, Lcom/google/android/gms/internal/km;->d:Ljava/lang/String;
invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/d;->a(IILjava/lang/String;)V
:cond_b
return-void
.end method
.method public bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/d;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/km;->a(Lcom/google/android/gms/games/multiplayer/realtime/d;)V
return-void
.end method
.method protected c()V
.registers 1
return-void
.end method