.class  Lco/vine/android/DebugHomeActivity$3;
.super Ljava/lang/Object;
.source "DebugHomeActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/DebugHomeActivity;
.field final synthetic val$query:Landroid/widget/EditText;
.method constructor <init>(Lco/vine/android/DebugHomeActivity;Landroid/widget/EditText;)V
.registers 3
iput-object p1, p0, Lco/vine/android/DebugHomeActivity$3;->this$0:Lco/vine/android/DebugHomeActivity;
iput-object p2, p0, Lco/vine/android/DebugHomeActivity$3;->val$query:Landroid/widget/EditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/DebugHomeActivity$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/DebugHomeActivity$3;->this$0:Lco/vine/android/DebugHomeActivity;
iget-object v1, p0, Lco/vine/android/DebugHomeActivity$3;->val$query:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
#calls: Lco/vine/android/DebugHomeActivity;->handleDebugQuery(Ljava/lang/String;)V
invoke-static {v0, v1}, Lco/vine/android/DebugHomeActivity;->access$000(Lco/vine/android/DebugHomeActivity;Ljava/lang/String;)V
const-string v1, " - Lco/vine/android/DebugHomeActivity$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method