.class public Luserzoom/com/extended/UZActivity;
.super Landroid/app/Activity;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method protected onStart()V
.registers 3
const-string v1, " + Luserzoom/com/extended/UZActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
invoke-virtual {p0}, Luserzoom/com/extended/UZActivity;->getLocalClassName()Ljava/lang/String;
move-result-object v0
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v1
invoke-virtual {v1, v0}, Luserzoom/com/a;->a(Ljava/lang/String;)V
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v0
invoke-virtual {v0, p0}, Luserzoom/com/a;->a(Landroid/app/Activity;)V
const-string v1, " - Luserzoom/com/extended/UZActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Luserzoom/com/extended/UZActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStop()V
invoke-virtual {p0}, Luserzoom/com/extended/UZActivity;->getLocalClassName()Ljava/lang/String;
move-result-object v0
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v1
invoke-virtual {v1, v0}, Luserzoom/com/a;->b(Ljava/lang/String;)V
const-string v1, " - Luserzoom/com/extended/UZActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method