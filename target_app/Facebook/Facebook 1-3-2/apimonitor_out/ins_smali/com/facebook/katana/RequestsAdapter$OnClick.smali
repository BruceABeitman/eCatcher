.class  Lcom/facebook/katana/RequestsAdapter$OnClick;
.super Ljava/lang/Object;
.source "RequestsAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field  mConfirm:Z
.field  mFriendRequest:Lcom/facebook/katana/RequestsAdapter$FriendRequest;
.field final synthetic this$0:Lcom/facebook/katana/RequestsAdapter;
.method public constructor <init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/RequestsAdapter$FriendRequest;Z)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->this$0:Lcom/facebook/katana/RequestsAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mFriendRequest:Lcom/facebook/katana/RequestsAdapter$FriendRequest;
iput-boolean p3, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mConfirm:Z
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/RequestsAdapter$OnClick; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mFriendRequest:Lcom/facebook/katana/RequestsAdapter$FriendRequest;
iget-boolean v1, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mConfirm:Z
if-eqz v1, :cond_25
sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;
:goto_8
invoke-virtual {v0, v1}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->setState(Lcom/facebook/katana/RequestsAdapter$RequestState;)V
iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->this$0:Lcom/facebook/katana/RequestsAdapter;
#getter for: Lcom/facebook/katana/RequestsAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter;->access$3(Lcom/facebook/katana/RequestsAdapter;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->this$0:Lcom/facebook/katana/RequestsAdapter;
#getter for: Lcom/facebook/katana/RequestsAdapter;->mContext:Landroid/content/Context;
invoke-static {v1}, Lcom/facebook/katana/RequestsAdapter;->access$2(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mFriendRequest:Lcom/facebook/katana/RequestsAdapter$FriendRequest;
iget-object v2, v2, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->mRequestor:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v2
iget-boolean v4, p0, Lcom/facebook/katana/RequestsAdapter$OnClick;->mConfirm:Z
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->respondToFriendRequest(Landroid/content/Context;JZ)Ljava/lang/String;
const-string v1, " - Lcom/facebook/katana/RequestsAdapter$OnClick; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_25
sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;
goto :goto_8
.end method