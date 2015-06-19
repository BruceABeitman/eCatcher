.class  Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.field private final mActionId:I
.field private final mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mActionId:I
iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;->onConfirmDialogDismissed(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V
:cond_10
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "AlbumActionBar"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "DeleteDialogListener : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
if-ne p2, v0, :cond_33
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;->onConfirmDialogDismissed(Z)V
:cond_23
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mActionId:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
#calls: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->onActionItemClicked(ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;ILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;)V
:goto_2c
:cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mDeleteDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)V
const-string v1, " - Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_33
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$DeleteDialogListener;->mListener:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;->onConfirmDialogDismissed(Z)V
goto :goto_2c
.end method