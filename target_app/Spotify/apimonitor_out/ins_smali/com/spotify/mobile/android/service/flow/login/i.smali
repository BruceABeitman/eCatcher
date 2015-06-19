.class final Lcom/spotify/mobile/android/service/flow/login/i;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/android/gms/common/api/k;
.implements Lcom/google/android/gms/common/api/l;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/g;
.field private b:Lcom/spotify/mobile/android/service/flow/login/h;
.field private c:Lcom/google/android/gms/common/api/i;
.method public constructor <init>(Lcom/spotify/mobile/android/service/flow/login/g;Landroid/content/Context;)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/i;->a:Lcom/spotify/mobile/android/service/flow/login/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/common/api/j;
invoke-direct {v0, p2}, Lcom/google/android/gms/common/api/j;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/k;)Lcom/google/android/gms/common/api/j;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/j;
move-result-object v0
sget-object v1, Lcom/google/android/gms/plus/d;->c:Lcom/google/android/gms/common/api/a;
new-instance v2, Lcom/google/android/gms/plus/f;
invoke-direct {v2}, Lcom/google/android/gms/plus/f;-><init>()V
invoke-virtual {v2}, Lcom/google/android/gms/plus/f;->a()Lcom/google/android/gms/plus/e;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/j;
move-result-object v0
sget-object v1, Lcom/google/android/gms/plus/d;->d:Lcom/google/android/gms/common/api/q;
invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/j;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/common/api/j;->a()Lcom/google/android/gms/common/api/i;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/i;->c:Lcom/google/android/gms/common/api/i;
return-void
.end method
.method public final a(Lcom/google/android/gms/common/a;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/i;->b:Lcom/spotify/mobile/android/service/flow/login/h;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/i;->b:Lcom/spotify/mobile/android/service/flow/login/h;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/i;->c:Lcom/google/android/gms/common/api/i;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/h;->a(Lcom/google/android/gms/common/api/i;)V
:cond_b
return-void
.end method
.method final a(Lcom/spotify/mobile/android/service/flow/login/h;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/i;->b:Lcom/spotify/mobile/android/service/flow/login/h;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/i;->c:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->a()V
return-void
.end method
.method public final a_(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/i;->c:Lcom/google/android/gms/common/api/i;
invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->a()V
return-void
.end method
.method public final a_(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/i;->b:Lcom/spotify/mobile/android/service/flow/login/h;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/i;->b:Lcom/spotify/mobile/android/service/flow/login/h;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/i;->c:Lcom/google/android/gms/common/api/i;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/h;->a(Lcom/google/android/gms/common/api/i;)V
:cond_b
return-void
.end method