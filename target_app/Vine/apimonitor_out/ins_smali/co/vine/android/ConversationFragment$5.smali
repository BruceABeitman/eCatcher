.class  Lco/vine/android/ConversationFragment$5;
.super Ljava/lang/Object;
.source "ConversationFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/ConversationFragment;
.field final synthetic val$container:Landroid/view/ViewGroup;
.method constructor <init>(Lco/vine/android/ConversationFragment;Landroid/view/ViewGroup;)V
.registers 3
iput-object p1, p0, Lco/vine/android/ConversationFragment$5;->this$0:Lco/vine/android/ConversationFragment;
iput-object p2, p0, Lco/vine/android/ConversationFragment$5;->val$container:Landroid/view/ViewGroup;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/ConversationFragment$5;->val$container:Landroid/view/ViewGroup;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
return-void
.end method