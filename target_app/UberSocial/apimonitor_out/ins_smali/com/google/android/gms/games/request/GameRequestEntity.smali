.class public final Lcom/google/android/gms/games/request/GameRequestEntity;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/request/GameRequest;
.field public static final CREATOR:Lcom/google/android/gms/games/request/c;
.field private final f:I
.field private final g:Lcom/google/android/gms/games/GameEntity;
.field private final h:Lcom/google/android/gms/games/PlayerEntity;
.field private final i:[B
.field private final j:Ljava/lang/String;
.field private final k:Ljava/util/ArrayList;
.field private final l:I
.field private final m:J
.field private final n:J
.field private final o:Landroid/os/Bundle;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/request/c;
invoke-direct {v0}, Lcom/google/android/gms/games/request/c;-><init>()V
sput-object v0, Lcom/google/android/gms/games/request/GameRequestEntity;->CREATOR:Lcom/google/android/gms/games/request/c;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/games/GameEntity;Lcom/google/android/gms/games/PlayerEntity;[BLjava/lang/String;Ljava/util/ArrayList;IJJLandroid/os/Bundle;)V
.registers 13
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->f:I
iput-object p2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->g:Lcom/google/android/gms/games/GameEntity;
iput-object p3, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->h:Lcom/google/android/gms/games/PlayerEntity;
iput-object p4, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->i:[B
iput-object p5, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->j:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:Ljava/util/ArrayList;
iput p7, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->l:I
iput-wide p8, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->m:J
iput-wide p10, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->n:J
iput-object p12, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->o:Landroid/os/Bundle;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/games/request/GameRequest;)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x1
iput v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->f:I
new-instance v1, Lcom/google/android/gms/games/GameEntity;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->b()Lcom/google/android/gms/games/Game;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->g:Lcom/google/android/gms/games/GameEntity;
new-instance v1, Lcom/google/android/gms/games/PlayerEntity;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->c()Lcom/google/android/gms/games/Player;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->h:Lcom/google/android/gms/games/PlayerEntity;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->a()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->j:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->j()I
move-result v1
iput v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->l:I
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->k()J
move-result-wide v1
iput-wide v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->m:J
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->l()J
move-result-wide v1
iput-wide v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->n:J
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->g()[B
move-result-object v1
if-nez v1, :cond_7b
const/4 v1, 0x0
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->i:[B
:goto_3e
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->f()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:Ljava/util/ArrayList;
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->o:Landroid/os/Bundle;
move v1, v0
:goto_55
if-ge v1, v3, :cond_87
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/Player;
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->i()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/Player;
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->a()Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:Ljava/util/ArrayList;
check-cast v0, Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->o:Landroid/os/Bundle;
invoke-interface {p1, v4}, Lcom/google/android/gms/games/request/GameRequest;->a(Ljava/lang/String;)I
move-result v5
invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_55
:cond_7b
array-length v2, v1
new-array v2, v2, [B
iput-object v2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->i:[B
iget-object v2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->i:[B
array-length v3, v1
invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_3e
:cond_87
return-void
.end method
.method static a(Lcom/google/android/gms/games/request/GameRequest;)I
.registers 5
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->b()Lcom/google/android/gms/games/Game;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->f()Ljava/util/ArrayList;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->a()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->c()Lcom/google/android/gms/games/Player;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->c(Lcom/google/android/gms/games/request/GameRequest;)[I
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->j()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->k()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->l()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/request/GameRequest;Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/request/GameRequest;
if-nez v2, :cond_8
move v0, v1
:cond_7
:goto_7
return v0
:cond_8
if-eq p0, p1, :cond_7
check-cast p1, Lcom/google/android/gms/games/request/GameRequest;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->b()Lcom/google/android/gms/games/Game;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->b()Lcom/google/android/gms/games/Game;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_94
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->f()Ljava/util/ArrayList;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->f()Ljava/util/ArrayList;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_94
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->a()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_94
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->c()Lcom/google/android/gms/games/Player;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->c()Lcom/google/android/gms/games/Player;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_94
invoke-static {p1}, Lcom/google/android/gms/games/request/GameRequestEntity;->c(Lcom/google/android/gms/games/request/GameRequest;)[I
move-result-object v2
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->c(Lcom/google/android/gms/games/request/GameRequest;)[I
move-result-object v3
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z
move-result v2
if-eqz v2, :cond_94
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->j()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->j()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_94
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->k()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->k()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_94
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->l()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->l()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_7
:cond_94
move v0, v1
goto/16 :goto_7
.end method
.method static b(Lcom/google/android/gms/games/request/GameRequest;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Game"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->b()Lcom/google/android/gms/games/Game;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Sender"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->c()Lcom/google/android/gms/games/Player;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Recipients"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->f()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Data"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->g()[B
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "RequestId"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Type"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->j()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "CreationTimestamp"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->k()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "ExpirationTimestamp"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->l()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static c(Lcom/google/android/gms/games/request/GameRequest;)[I
.registers 6
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->f()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
new-array v4, v3, [I
const/4 v0, 0x0
move v1, v0
:goto_c
if-ge v1, v3, :cond_22
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/Player;
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->a()Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0}, Lcom/google/android/gms/games/request/GameRequest;->a(Ljava/lang/String;)I
move-result v0
aput v0, v4, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_c
:cond_22
return-object v4
.end method
.method public a(Ljava/lang/String;)I
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->o:Landroid/os/Bundle;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->j:Ljava/lang/String;
return-object v0
.end method
.method public b()Lcom/google/android/gms/games/Game;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->g:Lcom/google/android/gms/games/GameEntity;
return-object v0
.end method
.method public c()Lcom/google/android/gms/games/Player;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->h:Lcom/google/android/gms/games/PlayerEntity;
return-object v0
.end method
.method public d()Lcom/google/android/gms/games/Player;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/Player;
goto :goto_9
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->m()I
move-result v1
if-ne v1, v0, :cond_8
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntity;->a(Lcom/google/android/gms/games/request/GameRequest;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public f()Ljava/util/ArrayList;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public g()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->i:[B
return-object v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->a(Lcom/google/android/gms/games/request/GameRequest;)I
move-result v0
return v0
.end method
.method public synthetic i()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->p()Lcom/google/android/gms/games/request/GameRequest;
move-result-object v0
return-object v0
.end method
.method public j()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->l:I
return v0
.end method
.method public k()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->m:J
return-wide v0
.end method
.method public l()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->n:J
return-wide v0
.end method
.method public m()I
.registers 4
const/4 v2, 0x0
iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->o:Landroid/os/Bundle;
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public n()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->f:I
return v0
.end method
.method public o()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->o:Landroid/os/Bundle;
return-object v0
.end method
.method public p()Lcom/google/android/gms/games/request/GameRequest;
.registers 1
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->b(Lcom/google/android/gms/games/request/GameRequest;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/request/c;->a(Lcom/google/android/gms/games/request/GameRequestEntity;Landroid/os/Parcel;I)V
return-void
.end method