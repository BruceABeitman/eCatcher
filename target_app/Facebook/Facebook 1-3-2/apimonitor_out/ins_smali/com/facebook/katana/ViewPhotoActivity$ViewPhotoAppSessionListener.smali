.class  Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ViewPhotoActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;
.method private constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;-><init>(Lcom/facebook/katana/ViewPhotoActivity;)V
return-void
.end method
.method public onDownloadPhotoFullComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
const/4 v4, 0x0
if-eqz p6, :cond_18
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$14(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_18
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$14(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_18
:cond_17
:goto_17
return-void
:cond_18
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$15(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_40
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoFullDataTask:Lcom/facebook/katana/util/TaskContext;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$16(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/util/TaskContext;
move-result-object v2
const/4 v3, 0x1
iput-boolean v3, v2, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
if-eqz v2, :cond_40
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v3
#calls: Lcom/facebook/katana/ViewPhotoActivity;->refreshCursor(Landroid/database/Cursor;)V
invoke-static {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$17(Lcom/facebook/katana/ViewPhotoActivity;Landroid/database/Cursor;)V
:cond_40
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPendingDownloadMap:Ljava/util/Map;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$18(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/util/Map;
move-result-object v2
invoke-interface {v2, p7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mDownloadedPhotos:Ljava/util/List;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$19(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mDownloadedPhotos:Ljava/util/List;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$19(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
const/4 v3, 0x5
if-le v2, v3, :cond_17
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mDownloadedPhotos:Ljava/util/List;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$19(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$15(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_17
sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_PID_CONTENT_URI:Landroid/net/Uri;
invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-static {v2, v1}, Lcom/facebook/katana/provider/PhotosProvider;->clearPhotoFiles(Landroid/content/Context;Landroid/net/Uri;)V
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mDownloadedPhotos:Ljava/util/List;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$19(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
goto :goto_17
.end method
.method public onPhotoDeletePhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
.registers 14
const/4 v5, 0x1
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
const/4 v3, 0x4
invoke-virtual {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->removeDialog(I)V
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
const/4 v3, 0x0
#setter for: Lcom/facebook/katana/ViewPhotoActivity;->mDeletePhotoReqId:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$12(Lcom/facebook/katana/ViewPhotoActivity;Ljava/lang/String;)V
const/16 v2, 0xc8
if-ne p3, v2, :cond_74
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I
move-result v0
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
invoke-interface {v2}, Landroid/database/Cursor;->requery()Z
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
move-result v2
if-nez v2, :cond_3e
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-virtual {v2}, Lcom/facebook/katana/ViewPhotoActivity;->finish()V
:goto_3d
:cond_3d
return-void
:cond_3e
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
move-result v2
if-ge v0, v2, :cond_68
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
:goto_53
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v3
invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
#calls: Lcom/facebook/katana/ViewPhotoActivity;->setPhotoId(Ljava/lang/String;)V
invoke-static {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$13(Lcom/facebook/katana/ViewPhotoActivity;Ljava/lang/String;)V
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-virtual {v2, v5}, Lcom/facebook/katana/ViewPhotoActivity;->showImage(Z)V
goto :goto_3d
:cond_68
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
sub-int v3, v0, v5
invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z
goto :goto_53
:cond_74
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
const v4, 0x7f0800cd
invoke-virtual {v3, v4}, Lcom/facebook/katana/ViewPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Toast;->show()V
goto :goto_3d
.end method
.method public onPhotoEditPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
const/4 v4, 0x1
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-virtual {v1, v4}, Lcom/facebook/katana/ViewPhotoActivity;->dismissDialog(I)V
const/16 v1, 0xc8
if-ne p3, v1, :cond_60
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v1
if-eqz v1, :cond_47
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I
move-result v0
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1}, Landroid/database/Cursor;->requery()Z
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v1
invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
const v2, 0x7f0b00c3
invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
const/4 v3, 0x2
invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_47
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->exitEditMode()V
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$11(Lcom/facebook/katana/ViewPhotoActivity;)V
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
const v3, 0x7f080193
invoke-virtual {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
:goto_5f
return-void
:cond_60
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
const v3, 0x7f080192
invoke-virtual {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_5f
.end method
.method public onPhotoGetAlbumsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljava/lang/String;J)V
.registers 10
const/16 v0, 0xc8
if-ne v0, p3, :cond_e
const-string v0, "get album query succeeded"
#calls: Lcom/facebook/katana/ViewPhotoActivity;->D(Ljava/lang/String;)V
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$21(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->loadAlbum()V
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$23(Lcom/facebook/katana/ViewPhotoActivity;)V
:cond_e
return-void
.end method
.method public onPhotoGetPhotosComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/String;J)V
.registers 14
const/4 v3, 0x1
const/16 v2, 0xc8
if-ne v2, p3, :cond_43
move v1, v3
:goto_6
const/4 v0, 0x0
if-eqz p7, :cond_46
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$15(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;
move-result-object v2
invoke-static {p7, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
move-result v2
if-ltz v2, :cond_46
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$20(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/util/TaskContext;
move-result-object v2
iput-boolean v3, v2, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z
const/4 v0, 0x1
if-eqz v1, :cond_25
const-string v2, "get photo query succeeded"
#calls: Lcom/facebook/katana/ViewPhotoActivity;->D(Ljava/lang/String;)V
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$21(Ljava/lang/String;)V
:goto_25
:cond_25
if-eqz v0, :cond_42
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-virtual {v2}, Lcom/facebook/katana/ViewPhotoActivity;->isFinishing()Z
move-result v2
if-nez v2, :cond_42
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v2
if-eqz v2, :cond_42
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v3
#calls: Lcom/facebook/katana/ViewPhotoActivity;->refreshCursor(Landroid/database/Cursor;)V
invoke-static {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$17(Lcom/facebook/katana/ViewPhotoActivity;Landroid/database/Cursor;)V
:cond_42
return-void
:cond_43
const/4 v2, 0x0
move v1, v2
goto :goto_6
:cond_46
if-eqz p6, :cond_25
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$14(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mAlbumPhotosMetadataTask:Lcom/facebook/katana/util/TaskContext;
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$22(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/util/TaskContext;
move-result-object v2
iput-boolean v3, v2, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z
const/4 v0, 0x1
if-eqz v1, :cond_25
const-string v2, "get album photos query succeeded"
#calls: Lcom/facebook/katana/ViewPhotoActivity;->D(Ljava/lang/String;)V
invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$21(Ljava/lang/String;)V
goto :goto_25
.end method