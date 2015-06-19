.class final Lcom/spotify/mobile/android/service/flow/login/a/f$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/bh;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/a/f;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/a/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/a/f$1;->a:Lcom/spotify/mobile/android/service/flow/login/a/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 4
check-cast p1, Lorg/json/JSONObject;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f$1;->a:Lcom/spotify/mobile/android/service/flow/login/a/f;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->a(Lcom/spotify/mobile/android/service/flow/login/a/f;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f$1;->a:Lcom/spotify/mobile/android/service/flow/login/a/f;
new-instance v1, Lcom/spotify/mobile/android/service/flow/login/a/c;
invoke-direct {v1, p1}, Lcom/spotify/mobile/android/service/flow/login/a/c;-><init>(Lorg/json/JSONObject;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/a/f;->a(Lcom/spotify/mobile/android/service/flow/login/a/f;Lcom/spotify/mobile/android/service/flow/login/a/d;)Lcom/spotify/mobile/android/service/flow/login/a/d;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f$1;->a:Lcom/spotify/mobile/android/service/flow/login/a/f;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->b(Lcom/spotify/mobile/android/service/flow/login/a/f;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f$1;->a:Lcom/spotify/mobile/android/service/flow/login/a/f;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->c(Lcom/spotify/mobile/android/service/flow/login/a/f;)Lcom/spotify/mobile/android/service/flow/login/a/g;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/a/g;->a()V
return-void
.end method
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f$1;->a:Lcom/spotify/mobile/android/service/flow/login/a/f;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->a(Lcom/spotify/mobile/android/service/flow/login/a/f;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f$1;->a:Lcom/spotify/mobile/android/service/flow/login/a/f;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/a/f;->a(Lcom/spotify/mobile/android/service/flow/login/a/f;Lcom/spotify/mobile/android/service/flow/login/a/d;)Lcom/spotify/mobile/android/service/flow/login/a/d;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/f$1;->a:Lcom/spotify/mobile/android/service/flow/login/a/f;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->c(Lcom/spotify/mobile/android/service/flow/login/a/f;)Lcom/spotify/mobile/android/service/flow/login/a/g;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/a/g;->b()V
return-void
.end method