.class final Lcom/spotify/mobile/android/service/flow/logic/f$14;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/flow/login/r;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$14;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$14;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$14;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/c;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$14;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
const/4 v1, 0x0
invoke-virtual {v0, p1, p2, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$14;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$14;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/l;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/l;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$14;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$14;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/service/ResetPasswordActivity;->a(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Landroid/content/Intent;)V
return-void
.end method