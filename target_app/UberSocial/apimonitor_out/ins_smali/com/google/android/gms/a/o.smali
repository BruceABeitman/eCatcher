.class public final Lcom/google/android/gms/a/o;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/a/a;
.field private final a:I
.field private final b:Ljava/lang/String;
.field private final c:[B
.field private final d:Z
.field private final e:Ljava/lang/String;
.field private final f:[B
.method public constructor <init>(Lcom/google/android/gms/a/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-interface {p1}, Lcom/google/android/gms/a/a;->a()I
move-result v0
iput v0, p0, Lcom/google/android/gms/a/o;->a:I
invoke-interface {p1}, Lcom/google/android/gms/a/a;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/a/o;->b:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/a/a;->c()[B
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/a/o;->c:[B
invoke-interface {p1}, Lcom/google/android/gms/a/a;->d()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/a/o;->d:Z
invoke-interface {p1}, Lcom/google/android/gms/a/a;->e()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/a/o;->e:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/a/a;->f()[B
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/a/o;->f:[B
return-void
.end method
.method static a(Lcom/google/android/gms/a/a;)I
.registers 4
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/a/a;->a()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/a/a;->b()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/a/a;->c()[B
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/a/a;->d()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p0}, Lcom/google/android/gms/a/a;->e()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-interface {p0}, Lcom/google/android/gms/a/a;->f()[B
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/a/a;Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
instance-of v2, p1, Lcom/google/android/gms/a/a;
if-nez v2, :cond_8
move v0, v1
:cond_7
:goto_7
return v0
:cond_8
if-eq p0, p1, :cond_7
check-cast p1, Lcom/google/android/gms/a/a;
invoke-interface {p1}, Lcom/google/android/gms/a/a;->a()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/a/a;->a()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_70
invoke-interface {p1}, Lcom/google/android/gms/a/a;->b()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/a/a;->b()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_70
invoke-interface {p1}, Lcom/google/android/gms/a/a;->c()[B
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/a/a;->c()[B
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_70
invoke-interface {p1}, Lcom/google/android/gms/a/a;->d()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/a/a;->d()Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_70
invoke-interface {p1}, Lcom/google/android/gms/a/a;->e()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/a/a;->e()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_70
invoke-interface {p1}, Lcom/google/android/gms/a/a;->f()[B
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/a/a;->f()[B
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_7
:cond_70
move v0, v1
goto :goto_7
.end method
.method static b(Lcom/google/android/gms/a/a;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "Key"
invoke-interface {p0}, Lcom/google/android/gms/a/a;->a()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "LocalVersion"
invoke-interface {p0}, Lcom/google/android/gms/a/a;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "LocalData"
invoke-interface {p0}, Lcom/google/android/gms/a/a;->c()[B
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "HasConflict"
invoke-interface {p0}, Lcom/google/android/gms/a/a;->d()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "ConflictVersion"
invoke-interface {p0}, Lcom/google/android/gms/a/a;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
const-string v1, "ConflictData"
invoke-interface {p0}, Lcom/google/android/gms/a/a;->f()[B
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hs;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hs;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/a/o;->a:I
return v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/a/o;->b:Ljava/lang/String;
return-object v0
.end method
.method public c()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/a/o;->c:[B
return-object v0
.end method
.method public d()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/a/o;->d:Z
return v0
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/a/o;->e:Ljava/lang/String;
return-object v0
.end method
.method public e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/a/o;->a(Lcom/google/android/gms/a/a;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public f()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/a/o;->f:[B
return-object v0
.end method
.method public g()Lcom/google/android/gms/a/a;
.registers 1
return-object p0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/a/o;->a(Lcom/google/android/gms/a/a;)I
move-result v0
return v0
.end method
.method public synthetic i()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/a/o;->g()Lcom/google/android/gms/a/a;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/a/o;->b(Lcom/google/android/gms/a/a;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method