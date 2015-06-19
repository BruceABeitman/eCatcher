.class  Lco/vine/android/ConversationAdapter$1;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;
.field final synthetic val$vpm:Lco/vine/android/api/VinePrivateMessage;
.method constructor <init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/api/VinePrivateMessage;)V
.registers 3
iput-object p1, p0, Lco/vine/android/ConversationAdapter$1;->this$0:Lco/vine/android/ConversationAdapter;
iput-object p2, p0, Lco/vine/android/ConversationAdapter$1;->val$vpm:Lco/vine/android/api/VinePrivateMessage;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ConversationAdapter$1; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/ConversationAdapter$1;->this$0:Lco/vine/android/ConversationAdapter;
#getter for: Lco/vine/android/ConversationAdapter;->mActivity:Lco/vine/android/ConversationActivity;
invoke-static {v0}, Lco/vine/android/ConversationAdapter;->access$000(Lco/vine/android/ConversationAdapter;)Lco/vine/android/ConversationActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/ConversationAdapter$1;->val$vpm:Lco/vine/android/api/VinePrivateMessage;
iget-wide v1, v1, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-virtual {v0, v1, v2}, Lco/vine/android/ConversationActivity;->showDeleteMessageDialog(J)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lco/vine/android/ConversationAdapter$1; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method