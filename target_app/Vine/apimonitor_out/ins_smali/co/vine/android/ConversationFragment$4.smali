.class  Lco/vine/android/ConversationFragment$4;
.super Ljava/lang/Object;
.source "ConversationFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/ConversationFragment;
.field final synthetic val$count:I
.field final synthetic val$listView:Landroid/widget/ListView;
.field final synthetic val$smooth:Z
.method constructor <init>(Lco/vine/android/ConversationFragment;ZLandroid/widget/ListView;I)V
.registers 5
iput-object p1, p0, Lco/vine/android/ConversationFragment$4;->this$0:Lco/vine/android/ConversationFragment;
iput-boolean p2, p0, Lco/vine/android/ConversationFragment$4;->val$smooth:Z
iput-object p3, p0, Lco/vine/android/ConversationFragment$4;->val$listView:Landroid/widget/ListView;
iput p4, p0, Lco/vine/android/ConversationFragment$4;->val$count:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-boolean v0, p0, Lco/vine/android/ConversationFragment$4;->val$smooth:Z
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/ConversationFragment$4;->val$listView:Landroid/widget/ListView;
iget v1, p0, Lco/vine/android/ConversationFragment$4;->val$count:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lco/vine/android/ConversationFragment$4;->val$listView:Landroid/widget/ListView;
iget v1, p0, Lco/vine/android/ConversationFragment$4;->val$count:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
goto :goto_d
.end method