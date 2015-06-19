.class public final Lcom/google/android/gms/internal/nv;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/realtime/b;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/multiplayer/realtime/d;[BLjava/lang/String;Ljava/lang/String;)I
.registers 7
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/games/multiplayer/realtime/d;[BLjava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;[BLjava/lang/String;)I
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/jy;->a([BLjava/lang/String;)I
move-result v0
return v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;[BLjava/lang/String;Ljava/lang/String;)I
.registers 8
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object p4, v1, v2
invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/internal/jy;->a([BLjava/lang/String;[Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;[BLjava/lang/String;Ljava/util/List;)I
.registers 7
invoke-interface {p4}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v1
invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/gms/internal/jy;->a([BLjava/lang/String;[Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;II)Landroid/content/Intent;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/internal/jy;->b(IIZ)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;IIZ)Landroid/content/Intent;
.registers 6
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/jy;->b(IIZ)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/e;
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/jy;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/e;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/multiplayer/realtime/f;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/games/multiplayer/realtime/f;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/multiplayer/realtime/j;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/games/multiplayer/realtime/j;Ljava/lang/String;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/jy;->b(Ljava/lang/String;I)V
return-void
.end method
.method public b(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/multiplayer/realtime/f;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jy;->b(Lcom/google/android/gms/games/multiplayer/realtime/f;)V
return-void
.end method
.method public b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/jy;->a(Ljava/lang/String;I)V
return-void
.end method