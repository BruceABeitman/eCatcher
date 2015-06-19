.class  Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "UserSearchResultsActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/UserSearchResultsActivity;
.method private constructor <init>(Lcom/facebook/katana/UserSearchResultsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/UserSearchResultsActivity;Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;-><init>(Lcom/facebook/katana/UserSearchResultsActivity;)V
return-void
.end method
.method public onDownloadStreamPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 9
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
#getter for: Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
invoke-static {v0}, Lcom/facebook/katana/UserSearchResultsActivity;->access$1(Lcom/facebook/katana/UserSearchResultsActivity;)Lcom/facebook/katana/UserSearchResultsAdapter;
move-result-object v0
invoke-virtual {v0, p7, p6}, Lcom/facebook/katana/UserSearchResultsAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
return-void
.end method
.method public onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
#getter for: Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
invoke-static {v0}, Lcom/facebook/katana/UserSearchResultsActivity;->access$1(Lcom/facebook/katana/UserSearchResultsActivity;)Lcom/facebook/katana/UserSearchResultsAdapter;
move-result-object v0
invoke-virtual {v0, p2, p3}, Lcom/facebook/katana/UserSearchResultsAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
return-void
.end method
.method public onUsersSearchComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;II)V
.registers 14
const/4 v5, 0x0
iget-object v2, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
#getter for: Lcom/facebook/katana/UserSearchResultsActivity;->mCurrentQueryId:Ljava/lang/String;
invoke-static {v2}, Lcom/facebook/katana/UserSearchResultsActivity;->access$2(Lcom/facebook/katana/UserSearchResultsActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_e
:goto_d
:cond_d
return-void
:cond_e
iget-object v2, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
const/4 v3, 0x2
#calls: Lcom/facebook/katana/UserSearchResultsActivity;->showProgress(IZ)V
invoke-static {v2, v3, v5}, Lcom/facebook/katana/UserSearchResultsActivity;->access$0(Lcom/facebook/katana/UserSearchResultsActivity;IZ)V
const/16 v2, 0xc8
if-ne p3, v2, :cond_2d
iget-object v2, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
#setter for: Lcom/facebook/katana/UserSearchResultsActivity;->mTotalSearchResults:I
invoke-static {v2, p7}, Lcom/facebook/katana/UserSearchResultsActivity;->access$3(Lcom/facebook/katana/UserSearchResultsActivity;I)V
iget-object v2, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
#getter for: Lcom/facebook/katana/UserSearchResultsActivity;->mUsersSearchAdapter:Lcom/facebook/katana/UserSearchResultsAdapter;
invoke-static {v2}, Lcom/facebook/katana/UserSearchResultsActivity;->access$1(Lcom/facebook/katana/UserSearchResultsActivity;)Lcom/facebook/katana/UserSearchResultsAdapter;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/UserSearchResultsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_d
invoke-interface {v0}, Landroid/database/Cursor;->requery()Z
goto :goto_d
:cond_2d
iget-object v2, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
iget-object v3, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
const v4, 0x7f08005a
invoke-virtual {v3, v4}, Lcom/facebook/katana/UserSearchResultsActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/UserSearchResultsActivity$FriendsAppSessionListener;->this$0:Lcom/facebook/katana/UserSearchResultsActivity;
invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Toast;->show()V
goto :goto_d
.end method