.class public abstract Lcom/google/android/gms/drive/q;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/data/g;
.field public static final a:I = 0x0
.field public static final b:I = 0x1
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public A()J
.registers 3
sget-object v0, Lcom/google/android/gms/internal/jq;->u:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
return-wide v0
.end method
.method public B()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->v:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public C()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->w:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public D()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->h:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public a()Lcom/google/android/gms/drive/DriveId;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->a:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/DriveId;
return-object v0
.end method
.method protected abstract a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
.end method
.method public b()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->c:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->b:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/js;->a:Lcom/google/android/gms/drive/metadata/c;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public e()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/js;->b:Lcom/google/android/gms/drive/metadata/c;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public f()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/js;->e:Lcom/google/android/gms/drive/metadata/c;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public g()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/js;->c:Lcom/google/android/gms/drive/metadata/c;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public j()Ljava/util/Date;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/js;->d:Lcom/google/android/gms/drive/metadata/c;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
return-object v0
.end method
.method public k()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->d:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public l()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->e:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public m()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->f:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public n()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->g:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public o()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->i:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public p()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jw;->a:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto :goto_b
.end method
.method public q()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public r()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->k:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public s()Z
.registers 3
const-string v0, "application/vnd.google-apps.folder"
invoke-virtual {p0}, Lcom/google/android/gms/drive/q;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public t()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->m:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public u()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->o:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public v()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->p:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public w()J
.registers 3
sget-object v0, Lcom/google/android/gms/internal/jq;->q:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
return-wide v0
.end method
.method public x()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->r:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public y()Z
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->s:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_b
.end method
.method public z()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/jq;->t:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/q;->a(Lcom/google/android/gms/drive/metadata/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method