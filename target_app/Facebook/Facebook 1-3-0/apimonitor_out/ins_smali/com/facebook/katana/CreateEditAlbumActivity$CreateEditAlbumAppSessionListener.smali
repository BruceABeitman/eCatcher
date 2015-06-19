.class  Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "CreateEditAlbumActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
.method private constructor <init>(Lcom/facebook/katana/CreateEditAlbumActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/CreateEditAlbumActivity;Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;-><init>(Lcom/facebook/katana/CreateEditAlbumActivity;)V
return-void
.end method
.method public onPhotoCreateAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/api/FacebookAlbum;)V
.registers 11
const/4 v3, 0x1
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
invoke-virtual {v0, v3}, Lcom/facebook/katana/CreateEditAlbumActivity;->removeDialog(I)V
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
const/4 v1, 0x0
#setter for: Lcom/facebook/katana/CreateEditAlbumActivity;->mCreateReqId:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/facebook/katana/CreateEditAlbumActivity;->access$8(Lcom/facebook/katana/CreateEditAlbumActivity;Ljava/lang/String;)V
const/16 v0, 0xc8
if-ne p3, v0, :cond_2f
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
iget-object v1, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
const v2, 0x7f080026
invoke-virtual {v1, v2}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/facebook/katana/CreateEditAlbumActivity;->setResult(I)V
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
invoke-virtual {v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->finish()V
:goto_2e
return-void
:cond_2f
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
iget-object v1, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
const v2, 0x7f080024
invoke-virtual {v1, v2}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_2e
.end method
.method public onPhotoEditAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
.registers 10
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/facebook/katana/CreateEditAlbumActivity;->removeDialog(I)V
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
const/4 v1, 0x0
#setter for: Lcom/facebook/katana/CreateEditAlbumActivity;->mEditReqId:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/facebook/katana/CreateEditAlbumActivity;->access$9(Lcom/facebook/katana/CreateEditAlbumActivity;Ljava/lang/String;)V
const/16 v0, 0xc8
if-ne p3, v0, :cond_2f
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
iget-object v1, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
const v2, 0x7f08002d
invoke-virtual {v1, v2}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/facebook/katana/CreateEditAlbumActivity;->setResult(I)V
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
invoke-virtual {v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->finish()V
:goto_2e
return-void
:cond_2f
iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
iget-object v1, p0, Lcom/facebook/katana/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;
const v2, 0x7f08002b
invoke-virtual {v1, v2}, Lcom/facebook/katana/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_2e
.end method