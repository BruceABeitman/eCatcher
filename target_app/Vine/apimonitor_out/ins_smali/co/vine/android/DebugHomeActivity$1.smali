.class  Lco/vine/android/DebugHomeActivity$1;
.super Ljava/lang/Object;
.source "DebugHomeActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/DebugHomeActivity;
.field final synthetic val$session:Lco/vine/android/client/Session;
.method constructor <init>(Lco/vine/android/DebugHomeActivity;Lco/vine/android/client/Session;)V
.registers 3
iput-object p1, p0, Lco/vine/android/DebugHomeActivity$1;->this$0:Lco/vine/android/DebugHomeActivity;
iput-object p2, p0, Lco/vine/android/DebugHomeActivity$1;->val$session:Lco/vine/android/client/Session;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/DebugHomeActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "VINEDEBUG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "vine-session-id: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/DebugHomeActivity$1;->val$session:Lco/vine/android/client/Session;
invoke-virtual {v2}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v1, " - Lco/vine/android/DebugHomeActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method