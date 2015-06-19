.class  Lcom/fsck/k9/activity/MessageList$MessageViewHolder;
.super Ljava/lang/Object;
.source "MessageList.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field public chip:Landroid/view/View;
.field public date:Landroid/widget/TextView;
.field public flagged:Landroid/widget/CheckBox;
.field public from:Landroid/widget/TextView;
.field public position:I
.field public preview:Landroid/widget/TextView;
.field public selected:Landroid/widget/CheckBox;
.field public subject:Landroid/widget/TextView;
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;
.field public time:Landroid/widget/TextView;
.method constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->position:I
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 6
iget v1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->position:I
const/4 v2, -0x1
if-eq v1, v2, :cond_36
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
move-result-object v1
iget v2, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->position:I
invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;
iget-boolean v1, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z
if-eq v1, p2, :cond_36
if-eqz p2, :cond_37
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$108(Lcom/fsck/k9/activity/MessageList;)I
:goto_1e
:cond_1e
iput-boolean p2, v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;->selected:Z
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mCheckboxes:Z
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$2500(Lcom/fsck/k9/activity/MessageList;)Z
move-result v1
if-nez v1, :cond_31
const/4 v1, 0x1
if-ne p2, v1, :cond_45
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
:goto_31
:cond_31
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#calls: Lcom/fsck/k9/activity/MessageList;->toggleBatchButtons()V
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$400(Lcom/fsck/k9/activity/MessageList;)V
:cond_36
return-void
:cond_37
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
#getter for: Lcom/fsck/k9/activity/MessageList;->mSelectedCount:I
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$100(Lcom/fsck/k9/activity/MessageList;)I
move-result v1
if-lez v1, :cond_1e
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageList;->access$110(Lcom/fsck/k9/activity/MessageList;)I
goto :goto_1e
:cond_45
iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageViewHolder;->selected:Landroid/widget/CheckBox;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
goto :goto_31
.end method