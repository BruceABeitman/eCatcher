.class final Lcom/spotify/mobile/android/service/flow/login/t$12;
.super Lcom/spotify/mobile/android/util/a;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$12;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-direct {p0}, Lcom/spotify/mobile/android/util/a;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$12;->a:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/aa;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/aa;->b(Ljava/lang/String;)V
return-void
.end method