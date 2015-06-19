.class final Lcom/spotify/mobile/android/service/flow/login/t$16;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/t;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$16;->b:Lcom/spotify/mobile/android/service/flow/login/t;
iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/t$16;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/flow/login/t$16; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$16;->b:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->D()Lcom/spotify/mobile/android/service/flow/login/u;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$16;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$16;->b:Lcom/spotify/mobile/android/service/flow/login/t;
invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->t(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/u;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/service/flow/login/t$16; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method