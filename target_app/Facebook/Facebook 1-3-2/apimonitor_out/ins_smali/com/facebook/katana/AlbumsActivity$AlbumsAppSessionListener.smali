.class  Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "AlbumsActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/AlbumsActivity;
.method private constructor <init>(Lcom/facebook/katana/AlbumsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/AlbumsActivity;Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;-><init>(Lcom/facebook/katana/AlbumsActivity;)V
return-void
.end method
.method public onPhotoDeleteAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
.registers 12
const/4 v3, 0x0
const/4 v4, 0x1
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
const/4 v2, 0x3
invoke-virtual {v1, v2}, Lcom/facebook/katana/AlbumsActivity;->removeDialog(I)V
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
#setter for: Lcom/facebook/katana/AlbumsActivity;->mDeleteAlbumReqId:Ljava/lang/String;
invoke-static {v1, v3}, Lcom/facebook/katana/AlbumsActivity;->access$13(Lcom/facebook/katana/AlbumsActivity;Ljava/lang/String;)V
const/16 v1, 0xc8
if-ne p3, v1, :cond_34
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
#getter for: Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-static {v1}, Lcom/facebook/katana/AlbumsActivity;->access$14(Lcom/facebook/katana/AlbumsActivity;)Lcom/facebook/katana/service/api/FacebookAlbum;
move-result-object v1
if-eqz v1, :cond_29
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
#setter for: Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
invoke-static {v1, v3}, Lcom/facebook/katana/AlbumsActivity;->access$15(Lcom/facebook/katana/AlbumsActivity;Lcom/facebook/katana/service/api/FacebookAlbum;)V
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
invoke-virtual {v1, v4}, Lcom/facebook/katana/AlbumsActivity;->removeDialog(I)V
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
const/4 v2, 0x2
invoke-virtual {v1, v2}, Lcom/facebook/katana/AlbumsActivity;->removeDialog(I)V
:cond_29
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
#calls: Lcom/facebook/katana/AlbumsActivity;->updateFatTitleBar()V
invoke-static {v1}, Lcom/facebook/katana/AlbumsActivity;->access$11(Lcom/facebook/katana/AlbumsActivity;)V
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
#calls: Lcom/facebook/katana/AlbumsActivity;->updateEmptyView()V
invoke-static {v1}, Lcom/facebook/katana/AlbumsActivity;->access$12(Lcom/facebook/katana/AlbumsActivity;)V
:goto_33
return-void
:cond_34
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
iget-object v2, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
const v3, 0x7f08000c
invoke-virtual {v2, v3}, Lcom/facebook/katana/AlbumsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_33
.end method
.method public onPhotoGetAlbumsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljava/lang/String;J)V
.registers 13
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
#getter for: Lcom/facebook/katana/AlbumsActivity;->mUserId:J
invoke-static {v1}, Lcom/facebook/katana/AlbumsActivity;->access$9(Lcom/facebook/katana/AlbumsActivity;)J
move-result-wide v1
cmp-long v1, p7, v1
if-eqz v1, :cond_b
:goto_a
return-void
:cond_b
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
const/4 v2, 0x0
#calls: Lcom/facebook/katana/AlbumsActivity;->showProgress(Z)V
invoke-static {v1, v2}, Lcom/facebook/katana/AlbumsActivity;->access$10(Lcom/facebook/katana/AlbumsActivity;Z)V
const/16 v1, 0xc8
if-ne p3, v1, :cond_20
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
#calls: Lcom/facebook/katana/AlbumsActivity;->updateFatTitleBar()V
invoke-static {v1}, Lcom/facebook/katana/AlbumsActivity;->access$11(Lcom/facebook/katana/AlbumsActivity;)V
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
#calls: Lcom/facebook/katana/AlbumsActivity;->updateEmptyView()V
invoke-static {v1}, Lcom/facebook/katana/AlbumsActivity;->access$12(Lcom/facebook/katana/AlbumsActivity;)V
goto :goto_a
:cond_20
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
iget-object v2, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
const v3, 0x7f080011
invoke-virtual {v2, v3}, Lcom/facebook/katana/AlbumsActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$AlbumsAppSessionListener;->this$0:Lcom/facebook/katana/AlbumsActivity;
const/4 v2, 0x1
invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_a
.end method