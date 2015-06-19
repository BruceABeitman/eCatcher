.class public final Lcom/spotify/mobile/android/service/c/g;
.super Ljava/lang/Object;
.source "SourceFile"
.field public final a:Ljava/lang/String;
.field public final b:Ljava/lang/String;
.field public final c:Lcom/spotify/mobile/android/g/a;
.field public final d:Lcom/spotify/mobile/android/g/a;
.field public final e:Z
.field private f:Lcom/spotify/mobile/android/g/a;
.field private g:Lcom/spotify/mobile/android/g/a;
.field private h:Lcom/spotify/mobile/android/g/a;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->f:Lcom/spotify/mobile/android/g/a;
invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->g:Lcom/spotify/mobile/android/g/a;
invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->h:Lcom/spotify/mobile/android/g/a;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->a:Ljava/lang/String;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->b:Ljava/lang/String;
invoke-static {p3}, Lcom/spotify/mobile/android/g/a;->b(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->c:Lcom/spotify/mobile/android/g/a;
invoke-static {p4}, Lcom/spotify/mobile/android/g/a;->b(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;
iput-boolean p5, p0, Lcom/spotify/mobile/android/service/c/g;->e:Z
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/service/c/e;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->f:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->c()Z
move-result v0
if-nez v0, :cond_13
new-instance v0, Lcom/spotify/mobile/android/service/c/e;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/c/e;-><init>(Lcom/spotify/mobile/android/service/c/g;)V
invoke-static {v0}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->f:Lcom/spotify/mobile/android/g/a;
:cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->f:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/c/e;
return-object v0
.end method
.method public final b()Lcom/spotify/mobile/android/service/c/h;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->g:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->c()Z
move-result v0
if-nez v0, :cond_13
new-instance v0, Lcom/spotify/mobile/android/service/c/h;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/c/h;-><init>(Lcom/spotify/mobile/android/service/c/g;)V
invoke-static {v0}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->g:Lcom/spotify/mobile/android/g/a;
:cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->g:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/c/h;
return-object v0
.end method
.method public final c()Lcom/spotify/mobile/android/service/c/f;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->h:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->c()Z
move-result v0
if-nez v0, :cond_13
new-instance v0, Lcom/spotify/mobile/android/service/c/f;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/c/f;-><init>(Lcom/spotify/mobile/android/service/c/g;)V
invoke-static {v0}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->h:Lcom/spotify/mobile/android/g/a;
:cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->h:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/c/f;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/spotify/mobile/android/service/c/g;
iget-object v2, p0, Lcom/spotify/mobile/android/service/c/g;->c:Lcom/spotify/mobile/android/g/a;
iget-object v3, p1, Lcom/spotify/mobile/android/service/c/g;->c:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_21
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;
iget-object v3, p1, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/spotify/mobile/android/service/c/g;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/service/c/g;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_39
move v0, v1
goto :goto_4
:cond_39
iget-object v2, p0, Lcom/spotify/mobile/android/service/c/g;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/service/c/g;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_45
move v0, v1
goto :goto_4
:cond_45
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/c/g;->e:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/c/g;->e:Z
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/g;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/service/c/g;->b:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/service/c/g;->c:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/c/g;->e:Z
if-eqz v0, :cond_2a
const/4 v0, 0x1
:goto_28
add-int/2addr v0, v1
return v0
:cond_2a
const/4 v0, 0x0
goto :goto_28
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "TrackInfo{name=\'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/c/g;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x27
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", album="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/c/g;->c:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", artist="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/c/g;->d:Lcom/spotify/mobile/android/g/a;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", isInCollection="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/c/g;->e:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method