.class final Lcom/spotify/mobile/android/service/flow/login/y$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/z;
.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/y;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/y;Lcom/spotify/mobile/android/service/flow/login/z;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/y$2;->b:Lcom/spotify/mobile/android/service/flow/login/y;
iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/y$2;->a:Lcom/spotify/mobile/android/service/flow/login/z;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/flow/login/y$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p1, Lcom/spotify/android/paste/app/a;
const/4 v0, 0x0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/app/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/y$2;->a:Lcom/spotify/mobile/android/service/flow/login/z;
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/z;->a()V
const-string v1, " - Lcom/spotify/mobile/android/service/flow/login/y$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method