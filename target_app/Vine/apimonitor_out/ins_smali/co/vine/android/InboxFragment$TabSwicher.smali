.class public Lco/vine/android/InboxFragment$TabSwicher;
.super Ljava/lang/Object;
.source "InboxFragment.java"
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;
.field public final targetAdapter:Landroid/widget/BaseAdapter;
.field final synthetic this$0:Lco/vine/android/InboxFragment;
.method public constructor <init>(Lco/vine/android/InboxFragment;Landroid/widget/BaseAdapter;)V
.registers 3
iput-object p1, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lco/vine/android/InboxFragment$TabSwicher;->targetAdapter:Landroid/widget/BaseAdapter;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/InboxFragment$TabSwicher; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$100(Lco/vine/android/InboxFragment;)Landroid/widget/BaseAdapter;
move-result-object v0
iget-object v1, p0, Lco/vine/android/InboxFragment$TabSwicher;->targetAdapter:Landroid/widget/BaseAdapter;
if-eq v0, v1, :cond_28
iget-object v0, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mIsSwitching:Z
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$700(Lco/vine/android/InboxFragment;)Z
move-result v0
if-nez v0, :cond_28
iget-object v0, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
const/4 v1, 0x1
#setter for: Lco/vine/android/InboxFragment;->mIsSwitching:Z
invoke-static {v0, v1}, Lco/vine/android/InboxFragment;->access$702(Lco/vine/android/InboxFragment;Z)Z
iget-object v0, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
iget-object v0, v0, Lco/vine/android/InboxFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
iget-object v0, v0, Lco/vine/android/InboxFragment;->mHandler:Landroid/os/Handler;
const-wide/16 v1, 0xc8
invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_28
const-string v1, " - Lco/vine/android/InboxFragment$TabSwicher; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
iget-object v1, p0, Lco/vine/android/InboxFragment$TabSwicher;->targetAdapter:Landroid/widget/BaseAdapter;
#setter for: Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;
invoke-static {v0, v1}, Lco/vine/android/InboxFragment;->access$102(Lco/vine/android/InboxFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
iget-object v0, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
iget-object v0, v0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;
invoke-static {v1}, Lco/vine/android/InboxFragment;->access$100(Lco/vine/android/InboxFragment;)Landroid/widget/BaseAdapter;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
const/4 v1, 0x0
#setter for: Lco/vine/android/InboxFragment;->mIsSwitching:Z
invoke-static {v0, v1}, Lco/vine/android/InboxFragment;->access$702(Lco/vine/android/InboxFragment;Z)Z
iget-object v0, p0, Lco/vine/android/InboxFragment$TabSwicher;->this$0:Lco/vine/android/InboxFragment;
#calls: Lco/vine/android/InboxFragment;->invalidateAdapters()V
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$800(Lco/vine/android/InboxFragment;)V
return-void
.end method