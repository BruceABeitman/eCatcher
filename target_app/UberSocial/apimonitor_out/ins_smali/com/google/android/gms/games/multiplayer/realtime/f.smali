.class public final Lcom/google/android/gms/games/multiplayer/realtime/f;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/games/multiplayer/realtime/j;
.field private final b:Lcom/google/android/gms/games/multiplayer/realtime/i;
.field private final c:Lcom/google/android/gms/games/multiplayer/realtime/a;
.field private final d:Ljava/lang/String;
.field private final e:I
.field private final f:[Ljava/lang/String;
.field private final g:Landroid/os/Bundle;
.field private final h:Z
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/g;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/g;->a:Lcom/google/android/gms/games/multiplayer/realtime/j;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->a:Lcom/google/android/gms/games/multiplayer/realtime/j;
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/g;->b:Lcom/google/android/gms/games/multiplayer/realtime/i;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->b:Lcom/google/android/gms/games/multiplayer/realtime/i;
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/g;->c:Lcom/google/android/gms/games/multiplayer/realtime/a;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->c:Lcom/google/android/gms/games/multiplayer/realtime/a;
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/g;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->d:Ljava/lang/String;
iget v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/g;->e:I
iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->e:I
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/g;->g:Landroid/os/Bundle;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->g:Landroid/os/Bundle;
iget-boolean v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/g;->h:Z
iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->h:Z
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/g;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p1, Lcom/google/android/gms/games/multiplayer/realtime/g;->f:Ljava/util/ArrayList;
new-array v0, v0, [Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->f:[Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->c:Lcom/google/android/gms/games/multiplayer/realtime/a;
if-nez v0, :cond_3c
iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->h:Z
const-string v1, "Must either enable sockets OR specify a message listener"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
:cond_3c
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/g;Lcom/google/android/gms/games/multiplayer/realtime/f$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/g;)V
return-void
.end method
.method public static a(IIJ)Landroid/os/Bundle;
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "min_automatch_players"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "max_automatch_players"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "exclusive_bit_mask"
invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-object v0
.end method
.method public static a(Lcom/google/android/gms/games/multiplayer/realtime/j;)Lcom/google/android/gms/games/multiplayer/realtime/g;
.registers 3
new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/g;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/g;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/j;Lcom/google/android/gms/games/multiplayer/realtime/f$1;)V
return-object v0
.end method
.method public a()Lcom/google/android/gms/games/multiplayer/realtime/j;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->a:Lcom/google/android/gms/games/multiplayer/realtime/j;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->d:Ljava/lang/String;
return-object v0
.end method
.method public c()Lcom/google/android/gms/games/multiplayer/realtime/i;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->b:Lcom/google/android/gms/games/multiplayer/realtime/i;
return-object v0
.end method
.method public d()Lcom/google/android/gms/games/multiplayer/realtime/a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->c:Lcom/google/android/gms/games/multiplayer/realtime/a;
return-object v0
.end method
.method public e()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->e:I
return v0
.end method
.method public f()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->f:[Ljava/lang/String;
return-object v0
.end method
.method public g()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->g:Landroid/os/Bundle;
return-object v0
.end method
.method public h()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/f;->h:Z
return v0
.end method