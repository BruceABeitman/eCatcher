.class  Lco/vine/android/ConversationAdapter$3;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"
.implements Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;
.field final synthetic val$holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
.field final synthetic val$position:I
.method constructor <init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/ConversationAdapter$ConversationViewHolder;I)V
.registers 4
iput-object p1, p0, Lco/vine/android/ConversationAdapter$3;->this$0:Lco/vine/android/ConversationAdapter;
iput-object p2, p0, Lco/vine/android/ConversationAdapter$3;->val$holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iput p3, p0, Lco/vine/android/ConversationAdapter$3;->val$position:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPrepared(Lco/vine/android/player/VideoViewInterface;)V
.registers 5
iget-object v1, p0, Lco/vine/android/ConversationAdapter$3;->val$holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-boolean v1, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->isCurrentUser:Z
if-eqz v1, :cond_1f
invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->start()V
iget-object v1, p0, Lco/vine/android/ConversationAdapter$3;->this$0:Lco/vine/android/ConversationAdapter;
iget-object v2, p0, Lco/vine/android/ConversationAdapter$3;->val$holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
invoke-virtual {v1, v2}, Lco/vine/android/ConversationAdapter;->onLoadFinish(Lco/vine/android/ConversationAdapter$ConversationViewHolder;)V
:cond_10
:goto_10
iget-object v1, p0, Lco/vine/android/ConversationAdapter$3;->val$holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v1, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibs:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->bringToFront()V
iget-object v1, p0, Lco/vine/android/ConversationAdapter$3;->val$holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v1, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postNibs:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->bringToFront()V
return-void
:cond_1f
iget-object v1, p0, Lco/vine/android/ConversationAdapter$3;->this$0:Lco/vine/android/ConversationAdapter;
iget v2, p0, Lco/vine/android/ConversationAdapter$3;->val$position:I
#calls: Lco/vine/android/ConversationAdapter;->getSeekInfoMarkAsRead(Lco/vine/android/player/VideoViewInterface;I)Lco/vine/android/util/SeekInfoManager$SeekInfo;
invoke-static {v1, p1, v2}, Lco/vine/android/ConversationAdapter;->access$500(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/VideoViewInterface;I)Lco/vine/android/util/SeekInfoManager$SeekInfo;
move-result-object v0
if-nez v0, :cond_2f
const-string v1, "Invalid state onPrepared."
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_10
:cond_2f
invoke-virtual {v0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->isExpired()Z
move-result v1
if-nez v1, :cond_6c
invoke-virtual {v0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->hasLoopLimit()Z
move-result v1
if-eqz v1, :cond_5b
invoke-virtual {v0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->isExpired()Z
move-result v1
if-nez v1, :cond_5b
invoke-virtual {v0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->getSeekTime()I
move-result v1
invoke-interface {p1, v1}, Lco/vine/android/player/VideoViewInterface;->seekTo(I)V
iget-object v1, p0, Lco/vine/android/ConversationAdapter$3;->val$holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v1, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lco/vine/android/ConversationAdapter$3;->val$holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
iget-object v1, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;
invoke-virtual {v0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->getLoopsLeftForDisplay()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_5b
invoke-virtual {v0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->isExpired()Z
move-result v1
if-nez v1, :cond_10
invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->start()V
iget-object v1, p0, Lco/vine/android/ConversationAdapter$3;->this$0:Lco/vine/android/ConversationAdapter;
iget-object v2, p0, Lco/vine/android/ConversationAdapter$3;->val$holder:Lco/vine/android/ConversationAdapter$ConversationViewHolder;
invoke-virtual {v1, v2}, Lco/vine/android/ConversationAdapter;->onLoadFinish(Lco/vine/android/ConversationAdapter$ConversationViewHolder;)V
goto :goto_10
:cond_6c
iget-object v1, p0, Lco/vine/android/ConversationAdapter$3;->this$0:Lco/vine/android/ConversationAdapter;
iget v2, p0, Lco/vine/android/ConversationAdapter$3;->val$position:I
#calls: Lco/vine/android/ConversationAdapter;->onLoopFinished(Lco/vine/android/player/VideoViewInterface;I)Z
invoke-static {v1, p1, v2}, Lco/vine/android/ConversationAdapter;->access$600(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/VideoViewInterface;I)Z
goto :goto_10
.end method