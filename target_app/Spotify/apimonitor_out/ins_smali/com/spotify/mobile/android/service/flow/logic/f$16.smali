.class final Lcom/spotify/mobile/android/service/flow/logic/f$16;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/flow/logic/i;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$16;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$16;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$16;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/q;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/q;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/a;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$16;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->d(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/k;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/flow/logic/k;->a(Ljava/lang/String;)V
return-void
.end method
.method public final b()Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$16;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/r;->e()I
move-result v0
if-gtz v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$16;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$16;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/StartFragment;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/a;)V
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method