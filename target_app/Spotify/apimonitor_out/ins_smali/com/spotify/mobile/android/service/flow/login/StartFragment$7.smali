.class final Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;
.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;Lcom/spotify/mobile/android/service/flow/logic/f;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;
iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/flow/login/StartFragment$7; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;->b:Lcom/spotify/mobile/android/service/flow/login/StartFragment;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;Lcom/spotify/mobile/android/service/flow/logic/f;)V
const-string v1, " - Lcom/spotify/mobile/android/service/flow/login/StartFragment$7; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method