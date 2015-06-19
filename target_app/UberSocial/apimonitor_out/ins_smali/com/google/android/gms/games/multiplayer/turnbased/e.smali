.class public final Lcom/google/android/gms/games/multiplayer/turnbased/e;
.super Ljava/lang/Object;
.field private final a:I
.field private final b:[Ljava/lang/String;
.field private final c:Landroid/os/Bundle;
.field private final d:I
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/f;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/f;->a:I
iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/e;->a:I
iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/f;->d:I
iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/e;->d:I
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/f;->c:Landroid/os/Bundle;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/e;->c:Landroid/os/Bundle;
iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/f;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p1, Lcom/google/android/gms/games/multiplayer/turnbased/f;->b:Ljava/util/ArrayList;
new-array v0, v0, [Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/e;->b:[Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/f;Lcom/google/android/gms/games/multiplayer/turnbased/e$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/e;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/f;)V
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
.method public static e()Lcom/google/android/gms/games/multiplayer/turnbased/f;
.registers 2
new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/f;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/f;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/e$1;)V
return-object v0
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/e;->a:I
return v0
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/e;->d:I
return v0
.end method
.method public c()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/e;->b:[Ljava/lang/String;
return-object v0
.end method
.method public d()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/e;->c:Landroid/os/Bundle;
return-object v0
.end method