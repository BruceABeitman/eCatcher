.class  Lco/vine/android/InboxFragment$3;
.super Ljava/lang/Object;
.source "InboxFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/InboxFragment;
.method constructor <init>(Lco/vine/android/InboxFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 8
const/4 v4, 0x1
iget-object v5, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mActiveAdapter:Landroid/widget/BaseAdapter;
invoke-static {v5}, Lco/vine/android/InboxFragment;->access$100(Lco/vine/android/InboxFragment;)Landroid/widget/BaseAdapter;
move-result-object v5
iget-object v6, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;
invoke-static {v6}, Lco/vine/android/InboxFragment;->access$200(Lco/vine/android/InboxFragment;)Lco/vine/android/widget/SectionAdapter;
move-result-object v6
if-ne v5, v6, :cond_66
iget-object v5, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
iget-object v5, v5, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v2
const/4 v3, 0x1
:try_start_18
iget-object v5, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
iget-object v5, v5, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I
move-result v5
add-int/lit8 v5, v5, -0x1
if-ne v2, v5, :cond_67
iget-object v5, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
iget-object v5, v5, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getBottom()I
move-result v5
iget-object v6, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
iget-object v6, v6, Lco/vine/android/InboxFragment;->mListView:Landroid/widget/ListView;
invoke-virtual {v6}, Landroid/widget/ListView;->getHeight()I
:try_end_37
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_37} :catch_69
move-result v6
if-gt v5, v6, :cond_67
move v3, v4
:goto_3b
const/4 v1, 0x0
:try_start_3c
iget-object v5, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
iget-object v5, v5, Lco/vine/android/InboxFragment;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;
invoke-virtual {v5}, Lco/vine/android/MessageBoxAdapter;->isEmpty()Z
:try_end_43
.catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_70
move-result v1
:goto_44
iget-object v5, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mIsAddressBookShowing:Z
invoke-static {v5}, Lco/vine/android/InboxFragment;->access$1300(Lco/vine/android/InboxFragment;)Z
move-result v5
if-nez v5, :cond_61
iget-object v5, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v5, v4}, Lco/vine/android/InboxFragment;->isFetched(I)Z
move-result v4
if-eqz v4, :cond_56
if-nez v1, :cond_61
:cond_56
iget-object v4, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
const/4 v5, 0x3
invoke-virtual {v4, v5}, Lco/vine/android/InboxFragment;->isFetched(I)Z
move-result v4
if-eqz v4, :cond_66
if-eqz v3, :cond_66
:cond_61
iget-object v4, p0, Lco/vine/android/InboxFragment$3;->this$0:Lco/vine/android/InboxFragment;
invoke-virtual {v4}, Lco/vine/android/InboxFragment;->addEntriesToAddressAdapter()V
:cond_66
return-void
:cond_67
const/4 v3, 0x0
goto :goto_3b
:catch_69
move-exception v0
const-string v5, "Cannot get listview state."
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto :goto_3b
:catch_70
move-exception v0
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_44
.end method