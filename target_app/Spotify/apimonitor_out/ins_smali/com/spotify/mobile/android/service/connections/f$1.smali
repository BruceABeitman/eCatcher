.class final Lcom/spotify/mobile/android/service/connections/f$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/l;
.field final synthetic a:Lcom/spotify/mobile/android/service/connections/f;
.method constructor <init>(Lcom/spotify/mobile/android/service/connections/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/f$1;->a:Lcom/spotify/mobile/android/service/connections/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/connections/m;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/f$1;->a:Lcom/spotify/mobile/android/service/connections/f;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/connections/f;->a(Lcom/spotify/mobile/android/service/connections/f;Lcom/spotify/mobile/android/service/connections/m;)Lcom/spotify/mobile/android/service/connections/m;
return-void
.end method
.method public final a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/f$1;->a:Lcom/spotify/mobile/android/service/connections/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/f;->g()Landroid/os/Binder;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/connections/d;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/connections/d;->a(Ljava/lang/Object;)V
return-void
.end method
.method public final a()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/f$1;->a:Lcom/spotify/mobile/android/service/connections/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/f;->c()Z
move-result v0
return v0
.end method
.method public final b(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/f$1;->a:Lcom/spotify/mobile/android/service/connections/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/f;->g()Landroid/os/Binder;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/connections/d;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/connections/d;->b(Ljava/lang/Object;)V
return-void
.end method