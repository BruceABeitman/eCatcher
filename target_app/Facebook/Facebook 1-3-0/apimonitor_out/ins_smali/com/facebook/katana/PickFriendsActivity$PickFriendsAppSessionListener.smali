.class  Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "PickFriendsActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/PickFriendsActivity;
.method private constructor <init>(Lcom/facebook/katana/PickFriendsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;->this$0:Lcom/facebook/katana/PickFriendsActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/PickFriendsActivity;Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;-><init>(Lcom/facebook/katana/PickFriendsActivity;)V
return-void
.end method
.method public onFriendsSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 10
iget-object v1, p0, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;->this$0:Lcom/facebook/katana/PickFriendsActivity;
const v2, 0x7f0b00b2
invoke-virtual {v1, v2}, Lcom/facebook/katana/PickFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
const/16 v1, 0xc8
if-eq p3, v1, :cond_2b
iget-object v1, p0, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;->this$0:Lcom/facebook/katana/PickFriendsActivity;
iget-object v2, p0, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;->this$0:Lcom/facebook/katana/PickFriendsActivity;
const v3, 0x7f080056
invoke-virtual {v2, v3}, Lcom/facebook/katana/PickFriendsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;->this$0:Lcom/facebook/katana/PickFriendsActivity;
const/4 v2, 0x1
invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
:cond_2b
return-void
.end method
.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
.registers 9
const/16 v0, 0xc8
if-ne p3, v0, :cond_d
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;->this$0:Lcom/facebook/katana/PickFriendsActivity;
#getter for: Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
invoke-static {v0}, Lcom/facebook/katana/PickFriendsActivity;->access$2(Lcom/facebook/katana/PickFriendsActivity;)Lcom/facebook/katana/PickFriendsAdapter;
move-result-object v0
invoke-virtual {v0, p6}, Lcom/facebook/katana/PickFriendsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
:cond_d
return-void
.end method
.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/PickFriendsActivity$PickFriendsAppSessionListener;->this$0:Lcom/facebook/katana/PickFriendsActivity;
#getter for: Lcom/facebook/katana/PickFriendsActivity;->mAdapter:Lcom/facebook/katana/PickFriendsAdapter;
invoke-static {v0}, Lcom/facebook/katana/PickFriendsActivity;->access$2(Lcom/facebook/katana/PickFriendsActivity;)Lcom/facebook/katana/PickFriendsAdapter;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/facebook/katana/PickFriendsAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
return-void
.end method