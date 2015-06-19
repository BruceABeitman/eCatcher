.class public final Lcom/google/android/gms/games/multiplayer/turnbased/f;
.super Ljava/lang/Object;
.field  a:I
.field  b:Ljava/util/ArrayList;
.field  c:Landroid/os/Bundle;
.field  d:I
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/f;->a:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/f;->b:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/f;->c:Landroid/os/Bundle;
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/f;->d:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/e$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/turnbased/f;-><init>()V
return-void
.end method
.method public a()Lcom/google/android/gms/games/multiplayer/turnbased/e;
.registers 3
new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/e;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/e;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/f;Lcom/google/android/gms/games/multiplayer/turnbased/e$1;)V
return-object v0
.end method
.method public a(I)Lcom/google/android/gms/games/multiplayer/turnbased/f;
.registers 4
const/4 v0, -0x1
if-eq p1, v0, :cond_5
if-lez p1, :cond_e
:cond_5
const/4 v0, 0x1
:goto_6
const-string v1, "Variant must be a positive integer or TurnBasedMatch.MATCH_VARIANT_ANY"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
iput p1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/f;->a:I
return-object p0
:cond_e
const/4 v0, 0x0
goto :goto_6
.end method
.method public a(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/turnbased/f;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/f;->c:Landroid/os/Bundle;
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/turnbased/f;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/f;->b:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/turnbased/f;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/f;->b:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
return-object p0
.end method
.method public b(I)Lcom/google/android/gms/games/multiplayer/turnbased/f;
.registers 2
iput p1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/f;->d:I
return-object p0
.end method