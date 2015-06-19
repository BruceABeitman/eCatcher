.class  Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;
.super Ljava/lang/Object;
.source "MessageView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
.field final synthetic val$answered:Z
.field final synthetic val$cc:Ljava/lang/String;
.field final synthetic val$date:Ljava/lang/String;
.field final synthetic val$flagged:Z
.field final synthetic val$from:Ljava/lang/String;
.field final synthetic val$hasAttachments:Z
.field final synthetic val$subject:Ljava/lang/String;
.field final synthetic val$time:Ljava/lang/String;
.field final synthetic val$to:Ljava/lang/String;
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
.registers 11
iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iput-object p2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$subject:Ljava/lang/String;
iput-object p3, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$from:Ljava/lang/String;
iput-object p4, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$date:Ljava/lang/String;
iput-object p5, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$time:Ljava/lang/String;
iput-object p6, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$to:Ljava/lang/String;
iput-object p7, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$cc:Ljava/lang/String;
iput-boolean p8, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$hasAttachments:Z
iput-boolean p9, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$flagged:Z
iput-boolean p10, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$answered:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const/16 v5, 0x8
const/4 v3, 0x0
const/4 v4, 0x0
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$subject:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageView;->setTitle(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mSubjectView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$200(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$subject:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mFromView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$300(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$from:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$date:Ljava/lang/String;
if-eqz v1, :cond_bf
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mDateView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$400(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$date:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mDateView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$400(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
:goto_43
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mTimeView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$500(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$time:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mToView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$600(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$to:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mCcView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$700(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$cc:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mAttachmentIcon:Landroid/view/View;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$800(Lcom/fsck/k9/activity/MessageView;)Landroid/view/View;
move-result-object v1
iget-boolean v2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$hasAttachments:Z
if-eqz v2, :cond_cc
move v2, v3
:goto_77
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$flagged:Z
if-eqz v1, :cond_ce
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mFlagged:Landroid/widget/CheckBox;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$900(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/CheckBox;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
:goto_8a
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mSubjectView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$200(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
const/high16 v2, -0x100
iget-object v3, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v3, v3, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->defaultSubjectColor:I
invoke-static {v3}, Lcom/fsck/k9/activity/MessageView;->access$1000(Lcom/fsck/k9/activity/MessageView;)I
move-result v3
or-int/2addr v2, v3
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->val$answered:Z
if-eqz v1, :cond_da
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
invoke-virtual {v1}, Lcom/fsck/k9/activity/MessageView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f020056
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mSubjectView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$200(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
:goto_be
return-void
:cond_bf
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mDateView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$400(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_43
:cond_cc
move v2, v5
goto :goto_77
:cond_ce
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mFlagged:Landroid/widget/CheckBox;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$900(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/CheckBox;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V
goto :goto_8a
:cond_da
iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$4;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mSubjectView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/fsck/k9/activity/MessageView;->access$200(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto :goto_be
.end method