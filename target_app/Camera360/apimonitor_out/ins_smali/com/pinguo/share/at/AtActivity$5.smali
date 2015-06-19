.class  Lcom/pinguo/share/at/AtActivity$5;
.super Landroid/os/Handler;
.source "AtActivity.java"
.field final synthetic this$0:Lcom/pinguo/share/at/AtActivity;
.method constructor <init>(Lcom/pinguo/share/at/AtActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/at/AtActivity$5;)Lcom/pinguo/share/at/AtActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
return-object v0
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
const/4 v7, 0x0
const-string/jumbo v4, "AtActivity"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "handle message "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p1, Landroid/os/Message;->what:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget v4, p1, Landroid/os/Message;->what:I
packed-switch v4, :pswitch_data_de
:goto_1e
const-string/jumbo v4, "AtActivity"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "finished handle message "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p1, Landroid/os/Message;->what:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_36
return-void
:pswitch_37
:try_start_37
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Ljava/util/List;
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;
invoke-static {v4}, Lcom/pinguo/share/at/AtActivity;->access$8(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;
move-result-object v4
const v5, 0x7f0a006e
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/share/at/MyListView;
invoke-virtual {v2}, Lcom/pinguo/share/at/MyListView;->onRefreshComplete()V
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mOnAttentionListItemClick:Landroid/widget/AdapterView$OnItemClickListener;
invoke-static {v4}, Lcom/pinguo/share/at/AtActivity;->access$14(Lcom/pinguo/share/at/AtActivity;)Landroid/widget/AdapterView$OnItemClickListener;
move-result-object v4
invoke-virtual {v2, v4}, Lcom/pinguo/share/at/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v0, Lcom/pinguo/share/at/AtListAdapter;
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
invoke-virtual {v4}, Lcom/pinguo/share/at/AtActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v4
invoke-direct {v0, v4, v1}, Lcom/pinguo/share/at/AtListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
invoke-virtual {v2, v0}, Lcom/pinguo/share/at/MyListView;->setAdapter(Landroid/widget/BaseAdapter;)V
invoke-virtual {v2, v0}, Lcom/pinguo/share/at/MyListView;->setTag(Ljava/lang/Object;)V
new-instance v4, Lcom/pinguo/share/at/AtActivity$5$1;
invoke-direct {v4, p0}, Lcom/pinguo/share/at/AtActivity$5$1;-><init>(Lcom/pinguo/share/at/AtActivity$5;)V
invoke-virtual {v2, v4}, Lcom/pinguo/share/at/MyListView;->setonRefreshListener(Lcom/pinguo/share/at/MyListView$OnRefreshListener;)V
:try_end_6f
.catchall {:try_start_37 .. :try_end_6f} :catchall_75
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#setter for: Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z
invoke-static {v4, v7}, Lcom/pinguo/share/at/AtActivity;->access$13(Lcom/pinguo/share/at/AtActivity;Z)V
goto :goto_1e
:catchall_75
move-exception v4
iget-object v5, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#setter for: Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z
invoke-static {v5, v7}, Lcom/pinguo/share/at/AtActivity;->access$13(Lcom/pinguo/share/at/AtActivity;Z)V
throw v4
:pswitch_7c
:try_start_7c
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;
invoke-static {v4}, Lcom/pinguo/share/at/AtActivity;->access$8(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;
:try_end_81
.catchall {:try_start_7c .. :try_end_81} :catchall_cf
move-result-object v4
if-nez v4, :cond_8a
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#setter for: Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z
invoke-static {v4, v7}, Lcom/pinguo/share/at/AtActivity;->access$13(Lcom/pinguo/share/at/AtActivity;Z)V
goto :goto_36
:try_start_8a
:cond_8a
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;
invoke-static {v4}, Lcom/pinguo/share/at/AtActivity;->access$8(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;
move-result-object v4
const v5, 0x7f0a006e
invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Lcom/pinguo/share/at/MyListView;
:try_end_99
.catchall {:try_start_8a .. :try_end_99} :catchall_cf
if-nez v3, :cond_a1
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#setter for: Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z
invoke-static {v4, v7}, Lcom/pinguo/share/at/AtActivity;->access$13(Lcom/pinguo/share/at/AtActivity;Z)V
goto :goto_36
:try_start_a1
:cond_a1
invoke-virtual {v3}, Lcom/pinguo/share/at/MyListView;->onRefreshComplete()V
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z
invoke-static {v4}, Lcom/pinguo/share/at/AtActivity;->access$6(Lcom/pinguo/share/at/AtActivity;)Z
move-result v4
if-nez v4, :cond_c8
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->isPaused:Z
invoke-static {v4}, Lcom/pinguo/share/at/AtActivity;->access$16(Lcom/pinguo/share/at/AtActivity;)Z
move-result v4
if-nez v4, :cond_c8
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
iget-object v5, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
const v6, 0x7f08006b
invoke-virtual {v5, v6}, Lcom/pinguo/share/at/AtActivity;->getString(I)Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mNowOrientation:I
invoke-static {v6}, Lcom/pinguo/share/at/AtActivity;->access$2(Lcom/pinguo/share/at/AtActivity;)I
move-result v6
invoke-static {v4, v5, v6}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
:try_end_c8
.catchall {:try_start_a1 .. :try_end_c8} :catchall_cf
:cond_c8
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#setter for: Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z
invoke-static {v4, v7}, Lcom/pinguo/share/at/AtActivity;->access$13(Lcom/pinguo/share/at/AtActivity;Z)V
goto/16 :goto_1e
:catchall_cf
move-exception v4
iget-object v5, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#setter for: Lcom/pinguo/share/at/AtActivity;->mStartFetch:Z
invoke-static {v5, v7}, Lcom/pinguo/share/at/AtActivity;->access$13(Lcom/pinguo/share/at/AtActivity;Z)V
throw v4
:pswitch_d6
iget-object v4, p0, Lcom/pinguo/share/at/AtActivity$5;->this$0:Lcom/pinguo/share/at/AtActivity;
#calls: Lcom/pinguo/share/at/AtActivity;->restoreTextChangeListener()V
invoke-static {v4}, Lcom/pinguo/share/at/AtActivity;->access$17(Lcom/pinguo/share/at/AtActivity;)V
goto/16 :goto_1e
nop
:pswitch_data_de
.packed-switch 0x1
:pswitch_37
:pswitch_7c
:pswitch_d6
.end packed-switch
.end method