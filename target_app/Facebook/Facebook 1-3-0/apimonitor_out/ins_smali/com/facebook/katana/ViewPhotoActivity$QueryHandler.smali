.class final Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ViewPhotoActivity.java"
.field public static final ALBUM_PHOTOS_TOKEN:I = 0x1
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;
.method public constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V
return-void
.end method
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.registers 7
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-virtual {v1}, Lcom/facebook/katana/ViewPhotoActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_48
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-virtual {v1, p3}, Lcom/facebook/katana/ViewPhotoActivity;->startManagingCursor(Landroid/database/Cursor;)V
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#setter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v1, p3}, Lcom/facebook/katana/ViewPhotoActivity;->access$25(Lcom/facebook/katana/ViewPhotoActivity;Landroid/database/Cursor;)V
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->refreshUI()V
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$26(Lcom/facebook/katana/ViewPhotoActivity;)V
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-virtual {v1}, Lcom/facebook/katana/ViewPhotoActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string v2, "android.intent.action.EDIT"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_47
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v1
const/4 v2, 0x2
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
const v2, 0x7f0b00c9
invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->enterEditMode()V
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$27(Lcom/facebook/katana/ViewPhotoActivity;)V
:goto_47
:cond_47
return-void
:cond_48
invoke-interface {p3}, Landroid/database/Cursor;->close()V
goto :goto_47
.end method