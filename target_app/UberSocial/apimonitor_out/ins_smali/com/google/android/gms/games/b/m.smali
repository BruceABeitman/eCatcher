.class public final Lcom/google/android/gms/games/b/m;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/b/a;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Landroid/net/Uri;
.field private final f:I
.field private final g:Ljava/util/ArrayList;
.field private final h:Lcom/google/android/gms/games/Game;
.field private final i:Ljava/lang/String;
.method public constructor <init>(Lcom/google/android/gms/games/b/a;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/m;->c:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/m;->d:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->c()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/m;->e:Landroid/net/Uri;
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->d()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/games/b/m;->i:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->e()I
move-result v0
iput v0, p0, Lcom/google/android/gms/games/b/m;->f:I
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->g()Lcom/google/android/gms/games/Game;
move-result-object v1
if-nez v1, :cond_54
const/4 v0, 0x0
:goto_28
iput-object v0, p0, Lcom/google/android/gms/games/b/m;->h:Lcom/google/android/gms/games/Game;
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->f()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/games/b/m;->g:Ljava/util/ArrayList;
const/4 v0, 0x0
move v1, v0
:goto_3b
if-ge v1, v3, :cond_5a
iget-object v4, p0, Lcom/google/android/gms/games/b/m;->g:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/b/e;
invoke-interface {v0}, Lcom/google/android/gms/games/b/e;->i()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/b/r;
check-cast v0, Lcom/google/android/gms/games/b/r;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_3b
:cond_54
new-instance v0, Lcom/google/android/gms/games/GameEntity;
invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V
goto :goto_28
:cond_5a
return-void
.end method
.method static a(Lcom/google/android/gms/games/b/a;)I
.registers 4
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->a()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->b()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->c()Landroid/net/Uri;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->e()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->f()Ljava/util/ArrayList;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/b/a;Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/b/a;
if-nez v2, :cond_8
move v0, v1
:cond_7
:goto_7
return v0
:cond_8
if-eq p0, p1, :cond_7
check-cast p1, Lcom/google/android/gms/games/b/a;
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->a()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5a
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->b()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->b()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5a
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->c()Landroid/net/Uri;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->c()Landroid/net/Uri;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5a
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->e()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->e()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5a
invoke-interface {p1}, Lcom/google/android/gms/games/b/a;->f()Ljava/util/ArrayList;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->f()Ljava/util/ArrayList;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_7
:cond_5a
move v0, v1
goto :goto_7
.end method
.method static b(Lcom/google/android/gms/games/b/a;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "LeaderboardId"
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "DisplayName"
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "IconImageUri"
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->c()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "IconImageUrl"
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "ScoreOrder"
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->e()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Variants"
invoke-interface {p0}, Lcom/google/android/gms/games/b/a;->f()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/m;->c:Ljava/lang/String;
return-object v0
.end method
.method public a(Landroid/database/CharArrayBuffer;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/b/m;->d:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/google/android/gms/internal/jf;->a(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/m;->d:Ljava/lang/String;
return-object v0
.end method
.method public c()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/m;->e:Landroid/net/Uri;
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/m;->i:Ljava/lang/String;
return-object v0
.end method
.method public e()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/b/m;->f:I
return v0
.end method
.method public e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/b/m;->a(Lcom/google/android/gms/games/b/a;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public f()Ljava/util/ArrayList;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/games/b/m;->g:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public g()Lcom/google/android/gms/games/Game;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/b/m;->h:Lcom/google/android/gms/games/Game;
return-object v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/b/m;->a(Lcom/google/android/gms/games/b/a;)I
move-result v0
return v0
.end method
.method public synthetic i()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/b/m;->j()Lcom/google/android/gms/games/b/a;
move-result-object v0
return-object v0
.end method
.method public j()Lcom/google/android/gms/games/b/a;
.registers 1
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/b/m;->b(Lcom/google/android/gms/games/b/a;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method