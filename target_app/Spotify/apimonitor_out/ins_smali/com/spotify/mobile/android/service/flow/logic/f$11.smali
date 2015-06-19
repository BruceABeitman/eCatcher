.class final Lcom/spotify/mobile/android/service/flow/logic/f$11;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/flow/login/ah;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$11;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$11;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/r;->c()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$11;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$11;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-static {v1, p1}, Lcom/spotify/mobile/android/service/flow/login/q;->a(Lcom/spotify/mobile/android/service/flow/logic/d;Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/login/q;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$11;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
const/4 v1, 0x1
invoke-virtual {v0, p1, p2, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$11;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/e;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/e;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$11;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->E()V
return-void
.end method