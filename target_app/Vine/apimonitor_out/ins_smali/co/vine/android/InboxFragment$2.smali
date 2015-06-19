.class  Lco/vine/android/InboxFragment$2;
.super Ljava/lang/Object;
.source "InboxFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/InboxFragment;
.method constructor <init>(Lco/vine/android/InboxFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$100(Lco/vine/android/InboxFragment;)Landroid/widget/BaseAdapter;
move-result-object v0
iget-object v1, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;
invoke-static {v1}, Lco/vine/android/InboxFragment;->access$200(Lco/vine/android/InboxFragment;)Lco/vine/android/widget/SectionAdapter;
move-result-object v1
if-ne v0, v1, :cond_58
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mInboxCursorCount:I
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$300(Lco/vine/android/InboxFragment;)I
move-result v0
if-nez v0, :cond_38
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$400(Lco/vine/android/InboxFragment;)Z
move-result v0
if-nez v0, :cond_37
const-string v0, "Header change: Add."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#setter for: Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z
invoke-static {v0, v3}, Lco/vine/android/InboxFragment;->access$402(Lco/vine/android/InboxFragment;Z)Z
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
iget-object v0, v0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mEmptyView:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/InboxFragment;->access$500(Lco/vine/android/InboxFragment;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
:cond_37
:goto_37
return-void
:cond_38
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$400(Lco/vine/android/InboxFragment;)Z
move-result v0
if-eqz v0, :cond_37
const-string v0, "Header change: Remove."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#setter for: Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z
invoke-static {v0, v2}, Lco/vine/android/InboxFragment;->access$402(Lco/vine/android/InboxFragment;Z)Z
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
iget-object v0, v0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mEmptyView:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/InboxFragment;->access$500(Lco/vine/android/InboxFragment;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
goto :goto_37
:cond_58
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mOthersCursorCount:I
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$600(Lco/vine/android/InboxFragment;)I
move-result v0
if-nez v0, :cond_80
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$400(Lco/vine/android/InboxFragment;)Z
move-result v0
if-nez v0, :cond_37
const-string v0, "Header change: Add."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#setter for: Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z
invoke-static {v0, v3}, Lco/vine/android/InboxFragment;->access$402(Lco/vine/android/InboxFragment;Z)Z
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
iget-object v0, v0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mEmptyView:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/InboxFragment;->access$500(Lco/vine/android/InboxFragment;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
goto :goto_37
:cond_80
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z
invoke-static {v0}, Lco/vine/android/InboxFragment;->access$400(Lco/vine/android/InboxFragment;)Z
move-result v0
if-eqz v0, :cond_37
const-string v0, "Header change: Remove."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#setter for: Lco/vine/android/InboxFragment;->mIsEmptyViewAdded:Z
invoke-static {v0, v2}, Lco/vine/android/InboxFragment;->access$402(Lco/vine/android/InboxFragment;Z)Z
iget-object v0, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
iget-object v0, v0, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/InboxFragment$2;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mEmptyView:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/InboxFragment;->access$500(Lco/vine/android/InboxFragment;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
goto :goto_37
.end method