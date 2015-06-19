.class  Lco/vine/android/ConversationActivity$ConversationSessionListener$1;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lco/vine/android/ConversationActivity$ConversationSessionListener;
.field final synthetic val$show:Z
.field final synthetic val$userId:J
.method constructor <init>(Lco/vine/android/ConversationActivity$ConversationSessionListener;ZJ)V
.registers 5
iput-object p1, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener$1;->this$1:Lco/vine/android/ConversationActivity$ConversationSessionListener;
iput-boolean p2, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener$1;->val$show:Z
iput-wide p3, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener$1;->val$userId:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v1, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener$1;->this$1:Lco/vine/android/ConversationActivity$ConversationSessionListener;
iget-object v1, v1, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;
invoke-virtual {v1}, Lco/vine/android/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
const-string v2, "conversationFragment"
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v1, v0, Lco/vine/android/ConversationFragment;
if-eqz v1, :cond_1b
check-cast v0, Lco/vine/android/ConversationFragment;
iget-boolean v1, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener$1;->val$show:Z
iget-wide v2, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener$1;->val$userId:J
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/ConversationFragment;->showTypingIndicator(ZJ)V
:cond_1b
return-void
.end method