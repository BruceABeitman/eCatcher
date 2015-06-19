.class public final Lcom/google/android/gms/internal/nz;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/turnbased/h;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/e;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->n()Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;II)Landroid/content/Intent;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/internal/jy;->a(IIZ)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;IIZ)Landroid/content/Intent;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/jy;->a(IIZ)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;I[I)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/nz$2;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/nz$2;-><init>(Lcom/google/android/gms/internal/nz;I[I)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/multiplayer/turnbased/e;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nz$1;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nz$1;-><init>(Lcom/google/android/gms/internal/nz;Lcom/google/android/gms/games/multiplayer/turnbased/e;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nz$4;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nz$4;-><init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/nz$9;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/nz$9;-><init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 11
const/4 v5, 0x0
check-cast v5, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/nz;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/j;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/j;
.registers 12
if-nez p5, :cond_d
const/4 v5, 0x0
:goto_3
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/nz;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/j;
move-result-object v0
return-object v0
:cond_d
invoke-interface {p5}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
invoke-interface {p5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
move-object v5, v0
goto :goto_3
.end method
.method public varargs a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/j;
.registers 12
new-instance v0, Lcom/google/android/gms/internal/nz$6;
move-object v1, p0
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/nz$6;-><init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[BLjava/util/List;)Lcom/google/android/gms/common/api/j;
.registers 6
if-nez p4, :cond_8
const/4 v0, 0x0
:goto_3
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/nz;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/j;
move-result-object v0
return-object v0
:cond_8
invoke-interface {p4}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
goto :goto_3
.end method
.method public varargs a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/j;
.registers 6
new-instance v0, Lcom/google/android/gms/internal/nz$7;
invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/nz$7;-><init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;[I)Lcom/google/android/gms/common/api/j;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/nz;->a(Lcom/google/android/gms/common/api/e;I[I)Lcom/google/android/gms/common/api/j;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/multiplayer/turnbased/c;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/games/multiplayer/turnbased/c;)V
return-void
.end method
.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nz$5;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nz$5;-><init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/google/android/gms/common/api/e;)V
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->u()V
return-void
.end method
.method public c(Lcom/google/android/gms/common/api/e;)I
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->A()I
move-result v0
return v0
.end method
.method public c(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/jy;->b(Ljava/lang/String;I)V
return-void
.end method
.method public d(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/jy;->a(Ljava/lang/String;I)V
return-void
.end method
.method public e(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 5
const/4 v1, 0x0
move-object v0, v1
check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;
invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/nz;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/j;
move-result-object v0
return-object v0
.end method
.method public f(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nz$8;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nz$8;-><init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public g(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nz$10;
invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/nz$10;-><init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->b(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method
.method public h(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jy;->b(Ljava/lang/String;)V
return-void
.end method
.method public i(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)Lcom/google/android/gms/common/api/j;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/nz$3;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nz$3;-><init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;
move-result-object v0
return-object v0
.end method