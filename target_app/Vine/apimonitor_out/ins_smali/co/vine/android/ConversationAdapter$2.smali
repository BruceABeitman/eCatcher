.class  Lco/vine/android/ConversationAdapter$2;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;
.method constructor <init>(Lco/vine/android/ConversationAdapter;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public declared-synchronized run()V
.registers 18
monitor-enter p0
:try_start_1
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
#getter for: Lco/vine/android/ConversationAdapter;->mListView:Landroid/widget/ListView;
invoke-static {v13}, Lco/vine/android/ConversationAdapter;->access$100(Lco/vine/android/ConversationAdapter;)Landroid/widget/ListView;
move-result-object v8
invoke-virtual {v8}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v2
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
#getter for: Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;
invoke-static {v13}, Lco/vine/android/ConversationAdapter;->access$200(Lco/vine/android/ConversationAdapter;)Landroid/util/SparseArray;
move-result-object v13
invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lco/vine/android/api/VinePrivateMessage;
if-eqz v9, :cond_b3
iget-boolean v13, v9, Lco/vine/android/api/VinePrivateMessage;->hasVideo:Z
if-eqz v13, :cond_b3
const/4 v3, 0x1
:goto_22
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
#calls: Lco/vine/android/ConversationAdapter;->getViewAt(I)Landroid/view/View;
invoke-static {v13, v2}, Lco/vine/android/ConversationAdapter;->access$300(Lco/vine/android/ConversationAdapter;I)Landroid/view/View;
move-result-object v5
const/high16 v12, -0x4080
if-eqz v5, :cond_59
const/4 v6, 0x0
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
invoke-virtual {v13}, Lco/vine/android/ConversationAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;
move-result-object v13
if-eqz v13, :cond_47
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
invoke-virtual {v13}, Lco/vine/android/ConversationAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;
move-result-object v13
invoke-virtual {v13}, Lco/vine/android/player/SdkVideoView;->getHeight()I
move-result v13
div-int/lit8 v6, v13, 0x2
:cond_47
invoke-virtual {v5}, Landroid/view/View;->getBottom()I
move-result v13
int-to-float v13, v13
int-to-float v14, v6
add-float v1, v13, v14
invoke-virtual {v5}, Landroid/view/View;->getHeight()I
move-result v13
int-to-float v13, v13
int-to-float v14, v6
add-float v7, v13, v14
div-float v12, v1, v7
:cond_59
const-string v13, "Current First: {}, ratio: {}"
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v15
invoke-static {v13, v14, v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
const/4 v4, -0x1
float-to-double v13, v12
const-wide/high16 v15, 0x3fe0
cmpg-double v13, v13, v15
if-ltz v13, :cond_73
const/4 v13, -0x1
if-eq v2, v13, :cond_73
if-nez v3, :cond_b9
:cond_73
add-int/lit8 v11, v2, 0x1
:goto_75
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
invoke-virtual {v13}, Lco/vine/android/ConversationAdapter;->getCount()I
move-result v13
if-ge v11, v13, :cond_94
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
#getter for: Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;
invoke-static {v13}, Lco/vine/android/ConversationAdapter;->access$200(Lco/vine/android/ConversationAdapter;)Landroid/util/SparseArray;
move-result-object v13
invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Lco/vine/android/api/VinePrivateMessage;
if-eqz v10, :cond_94
iget-boolean v13, v10, Lco/vine/android/api/VinePrivateMessage;->hasVideo:Z
if-eqz v13, :cond_b6
move v4, v11
:cond_94
const-string v13, "Current Next: {}"
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
invoke-static {v13, v14}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const/4 v13, -0x1
if-eq v4, v13, :cond_b1
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
#getter for: Lco/vine/android/ConversationAdapter;->mCurrentPlaying:I
invoke-static {v13}, Lco/vine/android/ConversationAdapter;->access$400(Lco/vine/android/ConversationAdapter;)I
move-result v13
if-eq v4, v13, :cond_b1
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
invoke-virtual {v13, v4}, Lco/vine/android/ConversationAdapter;->play(I)V
:cond_b1
:try_end_b1
.catchall {:try_start_1 .. :try_end_b1} :catchall_cb
:goto_b1
monitor-exit p0
return-void
:cond_b3
const/4 v3, 0x0
goto/16 :goto_22
:cond_b6
add-int/lit8 v11, v11, 0x1
goto :goto_75
:try_start_b9
:cond_b9
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
#getter for: Lco/vine/android/ConversationAdapter;->mCurrentPlaying:I
invoke-static {v13}, Lco/vine/android/ConversationAdapter;->access$400(Lco/vine/android/ConversationAdapter;)I
move-result v13
if-eq v2, v13, :cond_ce
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
invoke-virtual {v13, v2}, Lco/vine/android/ConversationAdapter;->play(I)V
:try_end_ca
.catchall {:try_start_b9 .. :try_end_ca} :catchall_cb
goto :goto_b1
:catchall_cb
move-exception v13
monitor-exit p0
throw v13
:cond_ce
:try_start_ce
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/ConversationAdapter$2;->this$0:Lco/vine/android/ConversationAdapter;
const/4 v14, 0x0
invoke-virtual {v13, v2, v14}, Lco/vine/android/ConversationAdapter;->playFile(IZ)V
:try_end_d6
.catchall {:try_start_ce .. :try_end_d6} :catchall_cb
goto :goto_b1
.end method