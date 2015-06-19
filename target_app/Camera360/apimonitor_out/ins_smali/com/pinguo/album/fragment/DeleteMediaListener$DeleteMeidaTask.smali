.class  Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;
.super Landroid/os/AsyncTask;
.source "DeleteMediaListener.java"
.field private deletePaths:Ljava/util/List;
.field  dialog:Landroid/app/ProgressDialog;
.field final synthetic this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
.method public constructor <init>(Lcom/pinguo/album/fragment/DeleteMediaListener;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->deletePaths:Ljava/util/List;
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.registers 14
const/4 v11, -0x1
iget-object v8, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->deletePaths:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v8
new-array v1, v8, [Lcom/pinguo/album/data/MediaPath;
iget-object v8, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->deletePaths:Ljava/util/List;
invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
array-length v8, v1
new-array v5, v8, [Ljava/lang/String;
const/4 v3, 0x0
array-length v9, v1
const/4 v8, 0x0
move v4, v3
:goto_15
if-lt v8, v9, :cond_40
new-instance v0, Lcom/pinguo/album/data/download/ApiDeletePhoto;
iget-object v8, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v8, v8, Lcom/pinguo/album/fragment/DeleteMediaListener;->context:Landroid/content/Context;
invoke-direct {v0, v8, v5}, Lcom/pinguo/album/data/download/ApiDeletePhoto;-><init>(Landroid/content/Context;[Ljava/lang/String;)V
:try_start_20
invoke-virtual {v0}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->get()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/pinguo/album/data/download/ApiDeletePhoto$Response;
:try_end_26
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_4e
if-eqz v7, :cond_57
iget v8, v7, Lcom/pinguo/album/data/download/ApiDeletePhoto$Response;->status:I
const/16 v9, 0xc8
if-ne v8, v9, :cond_57
iget-object v8, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v8, v8, Lcom/pinguo/album/fragment/DeleteMediaListener;->manager:Lcom/pinguo/album/data/AlbumDataManager;
iget-object v9, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v9, v9, Lcom/pinguo/album/fragment/DeleteMediaListener;->sourceMediaSet:Lcom/pinguo/album/data/MediaSet;
invoke-virtual {v8, v1, v9}, Lcom/pinguo/album/data/AlbumDataManager;->delete([Lcom/pinguo/album/data/MediaPath;Lcom/pinguo/album/data/MediaSet;)V
iget v8, v7, Lcom/pinguo/album/data/download/ApiDeletePhoto$Response;->status:I
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
:goto_3f
return-object v8
:cond_40
aget-object v6, v1, v8
add-int/lit8 v3, v4, 0x1
invoke-virtual {v6}, Lcom/pinguo/album/data/MediaPath;->getIdentity()Ljava/lang/String;
move-result-object v10
aput-object v10, v5, v4
add-int/lit8 v8, v8, 0x1
move v4, v3
goto :goto_15
:catch_4e
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
goto :goto_3f
:cond_57
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
goto :goto_3f
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Ljava/lang/Integer;)V
.registers 5
invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_27
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v0, v0, Lcom/pinguo/album/fragment/DeleteMediaListener;->context:Landroid/content/Context;
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v0, v0, Lcom/pinguo/album/fragment/DeleteMediaListener;->context:Landroid/content/Context;
iget-object v1, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v1, v1, Lcom/pinguo/album/fragment/DeleteMediaListener;->context:Landroid/content/Context;
const v2, 0x7f080023
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_27
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_34
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v0, v0, Lcom/pinguo/album/fragment/DeleteMediaListener;->progressListener:Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v0, v0, Lcom/pinguo/album/fragment/DeleteMediaListener;->progressListener:Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;->onConfirmDialogDismissed(Z)V
:cond_42
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->onPostExecute(Ljava/lang/Integer;)V
return-void
.end method
.method protected onPreExecute()V
.registers 4
invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V
new-instance v0, Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v1, v1, Lcom/pinguo/album/fragment/DeleteMediaListener;->context:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->dialog:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->dialog:Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v1, v1, Lcom/pinguo/album/fragment/DeleteMediaListener;->context:Landroid/content/Context;
const v2, 0x7f080295
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->dialog:Landroid/app/ProgressDialog;
iget-object v1, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->this$0:Lcom/pinguo/album/fragment/DeleteMediaListener;
iget-object v1, v1, Lcom/pinguo/album/fragment/DeleteMediaListener;->context:Landroid/content/Context;
const v2, 0x7f080031
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->dialog:Landroid/app/ProgressDialog;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->dialog:Landroid/app/ProgressDialog;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
return-void
.end method