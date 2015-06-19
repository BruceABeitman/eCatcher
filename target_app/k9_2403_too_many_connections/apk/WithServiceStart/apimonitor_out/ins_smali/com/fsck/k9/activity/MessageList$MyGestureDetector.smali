.class  Lcom/fsck/k9/activity/MessageList$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MessageList.java"
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;
.method constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 15
if-eqz p2, :cond_4
if-nez p1, :cond_6
:cond_4
const/4 v7, 0x1
:goto_5
return v7
:cond_6
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v8
sub-float v0, v7, v8
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v8
sub-float v1, v7, v8
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v7
const/high16 v8, 0x4080
mul-float/2addr v8, v1
invoke-static {v8}, Ljava/lang/Math;->abs(F)F
move-result v8
cmpl-float v7, v7, v8
if-lez v7, :cond_83
const/4 v7, 0x1
move v2, v7
:goto_2b
div-float v7, v0, v1
invoke-static {v7}, Ljava/lang/Math;->abs(F)F
move-result v7
const/high16 v8, 0x4000
cmpl-float v7, v7, v8
if-lez v7, :cond_86
const/4 v7, 0x1
move v6, v7
:goto_39
if-eqz v2, :cond_81
if-eqz v6, :cond_81
const/4 v7, 0x0
cmpl-float v7, v0, v7
if-lez v7, :cond_89
const/4 v7, 0x1
move v5, v7
:goto_44
iget-object v7, p0, Lcom/fsck/k9/activity/MessageList$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;
invoke-static {v7}, Lcom/fsck/k9/activity/MessageList;->access$500(Lcom/fsck/k9/activity/MessageList;)Landroid/widget/ListView;
move-result-object v7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v8
float-to-int v8, v8
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v9
float-to-int v9, v9
invoke-virtual {v7, v8, v9}, Landroid/widget/ListView;->pointToPosition(II)I
move-result v4
const/4 v7, -0x1
if-eq v4, v7, :cond_81
iget-object v7, p0, Lcom/fsck/k9/activity/MessageList$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v7}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v7
invoke-virtual {v7, v4}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
if-eqz v3, :cond_81
iput-boolean v5, v3, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z
iget-object v7, p0, Lcom/fsck/k9/activity/MessageList$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageList;
if-eqz v5, :cond_8c
const/4 v8, 0x1
:goto_70
invoke-static {v7, v8}, Lcom/fsck/k9/activity/MessageList;->access$112(Lcom/fsck/k9/activity/MessageList;I)I
iget-object v7, p0, Lcom/fsck/k9/activity/MessageList$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v7}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v7
invoke-virtual {v7}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V
iget-object v7, p0, Lcom/fsck/k9/activity/MessageList$MyGestureDetector;->this$0:Lcom/fsck/k9/activity/MessageList;
#calls: Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V
invoke-static {v7}, Lcom/fsck/k9/activity/MessageList;->access$400(Lcom/fsck/k9/activity/MessageList;)V
:cond_81
const/4 v7, 0x0
goto :goto_5
:cond_83
const/4 v7, 0x0
move v2, v7
goto :goto_2b
:cond_86
const/4 v7, 0x0
move v6, v7
goto :goto_39
:cond_89
const/4 v7, 0x0
move v5, v7
goto :goto_44
:cond_8c
const/4 v8, -0x1
goto :goto_70
.end method