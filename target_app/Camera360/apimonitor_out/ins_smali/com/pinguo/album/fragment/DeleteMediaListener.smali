.class public Lcom/pinguo/album/fragment/DeleteMediaListener;
.super Ljava/lang/Object;
.source "DeleteMediaListener.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.field  context:Landroid/content/Context;
.field  manager:Lcom/pinguo/album/data/AlbumDataManager;
.field  progressListener:Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
.field  sourceMediaSet:Lcom/pinguo/album/data/MediaSet;
.method public constructor <init>(Landroid/app/Activity;Lcom/pinguo/album/data/AlbumDataManager;Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p4, p0, Lcom/pinguo/album/fragment/DeleteMediaListener;->progressListener:Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
iput-object p1, p0, Lcom/pinguo/album/fragment/DeleteMediaListener;->context:Landroid/content/Context;
iput-object p2, p0, Lcom/pinguo/album/fragment/DeleteMediaListener;->manager:Lcom/pinguo/album/data/AlbumDataManager;
iput-object p3, p0, Lcom/pinguo/album/fragment/DeleteMediaListener;->sourceMediaSet:Lcom/pinguo/album/data/MediaSet;
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener;->progressListener:Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/album/fragment/DeleteMediaListener;->progressListener:Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;->onConfirmDialogDismissed(Z)V
:cond_a
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/fragment/DeleteMediaListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const/4 v1, -0x1
if-ne p2, v1, :cond_1e
iget-object v1, p0, Lcom/pinguo/album/fragment/DeleteMediaListener;->progressListener:Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
invoke-interface {v1}, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;->getDeletePaths()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_1d
new-instance v1, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;
invoke-direct {v1, p0, v0}, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;-><init>(Lcom/pinguo/album/fragment/DeleteMediaListener;Ljava/util/List;)V
new-array v2, v2, [Ljava/lang/Void;
invoke-virtual {v1, v2}, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMeidaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
:goto_1d
:cond_1d
const-string v1, " - Lcom/pinguo/album/fragment/DeleteMediaListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1e
iget-object v1, p0, Lcom/pinguo/album/fragment/DeleteMediaListener;->progressListener:Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
if-eqz v1, :cond_1d
iget-object v1, p0, Lcom/pinguo/album/fragment/DeleteMediaListener;->progressListener:Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;
invoke-interface {v1, v2}, Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;->onConfirmDialogDismissed(Z)V
goto :goto_1d
.end method