.class  Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;
.super Ljava/lang/Object;
.source "FriendActivity.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
.field private final synthetic val$groupt:Ljava/util/List;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
iput-object p2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->val$groupt:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/weibo/sdk/android/component/FriendActivity$6; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v1, "first"
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
:goto_14
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->val$groupt:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lt v0, v1, :cond_1d
:goto_1c
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/FriendActivity$6; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1d
if-nez v0, :cond_41
if-ltz p2, :cond_41
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)[I
move-result-object v1
aget v1, v1, v0
if-ge p2, v1, :cond_41
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/FriendActivity;->textView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)Landroid/widget/TextView;
move-result-object v2
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->val$groupt:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_1c
:cond_41
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)[I
move-result-object v1
aget v1, v1, v0
if-ge p2, v1, :cond_6d
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)[I
move-result-object v1
add-int/lit8 v2, v0, -0x1
aget v1, v1, v2
if-lt p2, v1, :cond_6d
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->this$0:Lcom/tencent/weibo/sdk/android/component/FriendActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/FriendActivity;->textView:Landroid/widget/TextView;
invoke-static {v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)Landroid/widget/TextView;
move-result-object v2
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;->val$groupt:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_1c
:cond_6d
add-int/lit8 v0, v0, 0x1
goto :goto_14
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/weibo/sdk/android/component/FriendActivity$6; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/FriendActivity$6; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method