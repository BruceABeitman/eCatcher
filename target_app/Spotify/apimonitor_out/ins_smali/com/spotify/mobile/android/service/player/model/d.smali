.class public final Lcom/spotify/mobile/android/service/player/model/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Z
.field private final b:I
.field private final c:I
.field private final d:Z
.field private final e:I
.field private final f:Z
.field private final g:Z
.field private final h:Z
.field private final i:Z
.field private final j:Z
.field private final k:Z
.field private final l:Ljava/lang/String;
.field private final m:Z
.field private final n:Lcom/spotify/mobile/android/model/c;
.field private final o:Z
.field private final p:Ljava/lang/String;
.field private final q:I
.field private final r:Z
.field private final s:Z
.field private final t:Z
.field private final u:I
.field private final v:J
.field private final w:Z
.method public constructor <init>(ZIIZIZZZZZZLjava/lang/String;ZLcom/spotify/mobile/android/model/c;ZLjava/lang/String;IZZZIJZ)V
.registers 27
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/spotify/mobile/android/service/player/model/d;->a:Z
iput p2, p0, Lcom/spotify/mobile/android/service/player/model/d;->b:I
move-wide/from16 v0, p22
iput-wide v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->v:J
iput p3, p0, Lcom/spotify/mobile/android/service/player/model/d;->c:I
iput-boolean p4, p0, Lcom/spotify/mobile/android/service/player/model/d;->d:Z
iput p5, p0, Lcom/spotify/mobile/android/service/player/model/d;->e:I
iput-boolean p6, p0, Lcom/spotify/mobile/android/service/player/model/d;->f:Z
iput-boolean p7, p0, Lcom/spotify/mobile/android/service/player/model/d;->g:Z
iput-boolean p8, p0, Lcom/spotify/mobile/android/service/player/model/d;->h:Z
iput-boolean p9, p0, Lcom/spotify/mobile/android/service/player/model/d;->i:Z
iput-boolean p10, p0, Lcom/spotify/mobile/android/service/player/model/d;->j:Z
iput-boolean p11, p0, Lcom/spotify/mobile/android/service/player/model/d;->k:Z
iput-object p12, p0, Lcom/spotify/mobile/android/service/player/model/d;->l:Ljava/lang/String;
iput-boolean p13, p0, Lcom/spotify/mobile/android/service/player/model/d;->m:Z
move-object/from16 v0, p14
iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->n:Lcom/spotify/mobile/android/model/c;
move/from16 v0, p15
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->o:Z
move-object/from16 v0, p16
iput-object v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->p:Ljava/lang/String;
move/from16 v0, p17
iput v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->q:I
move/from16 v0, p18
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->r:Z
move/from16 v0, p19
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->s:Z
move/from16 v0, p20
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->t:Z
move/from16 v0, p21
iput v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->u:I
move/from16 v0, p24
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->w:Z
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->a:Z
return v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->b:I
return v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->c:I
return v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->d:Z
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->g:Z
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 7
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
check-cast p1, Lcom/spotify/mobile/android/service/player/model/d;
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->a:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->a:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->b:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
iget v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->b:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->c:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
iget v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->c:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->d:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->d:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->e:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
iget v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->e:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->f:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->f:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->g:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->g:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->h:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->h:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->i:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->i:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->j:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->j:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->k:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->k:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->l:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->l:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->m:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->m:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->n:Lcom/spotify/mobile/android/model/c;
iget-object v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->n:Lcom/spotify/mobile/android/model/c;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->o:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->o:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->p:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->p:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->q:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
iget v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->q:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->r:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->r:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->s:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->s:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->t:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->t:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->u:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
iget v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->u:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_189
iget-wide v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->v:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
iget-wide v3, p1, Lcom/spotify/mobile/android/service/player/model/d;->v:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_189
move v0, v1
goto/16 :goto_4
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->h:Z
return v0
.end method
.method public final g()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->i:Z
return v0
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->k:Z
return v0
.end method
.method public final hashCode()I
.registers 5
const/16 v0, 0x16
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->a:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->b:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->c:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->d:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->e:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->f:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->g:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->h:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->i:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x9
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->j:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xa
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->k:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xb
iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->l:Ljava/lang/String;
aput-object v2, v0, v1
const/16 v1, 0xc
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->m:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xd
iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->n:Lcom/spotify/mobile/android/model/c;
aput-object v2, v0, v1
const/16 v1, 0xe
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->o:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xf
iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->p:Ljava/lang/String;
aput-object v2, v0, v1
const/16 v1, 0x10
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->q:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x11
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->r:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x12
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->s:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x13
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->t:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x14
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->u:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x15
iget-wide v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->v:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->l:Ljava/lang/String;
return-object v0
.end method
.method public final j()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->m:Z
return v0
.end method
.method public final k()Lcom/spotify/mobile/android/model/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->n:Lcom/spotify/mobile/android/model/c;
return-object v0
.end method
.method public final l()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->o:Z
return v0
.end method
.method public final m()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->q:I
return v0
.end method
.method public final n()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->s:Z
return v0
.end method
.method public final o()Z
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->q:I
const/4 v1, -0x1
if-eq v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final p()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->v:J
return-wide v0
.end method
.method public final q()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/player/model/d;->w:Z
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/common/base/e;->a(Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mPaused"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->a:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mPosition"
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->b:I
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;I)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mLength"
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->c:I
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;I)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mShuffle"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->d:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mRepeatState"
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->e:I
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;I)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsPrevEnabled"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->f:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsNextEnabled"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->g:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsSeekEnabled"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->h:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsRadioImproving"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->i:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsMockRadio"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->j:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsRadioLoading"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->k:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mRadioThumbState"
iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->l:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsRadio"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->m:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mContextInfo"
iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->n:Lcom/spotify/mobile/android/model/c;
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsAdPlaying"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->o:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mAdUrl"
iget-object v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->p:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mSkipsRemaining"
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->q:I
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;I)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsQueueAvailable"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->r:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsSuggested"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->s:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mIsShuffleRestricted"
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->t:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mRow"
iget v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->u:I
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;I)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mCachedOn"
iget-wide v2, p0, Lcom/spotify/mobile/android/service/player/model/d;->v:J
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/f;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method