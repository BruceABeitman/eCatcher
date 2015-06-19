.class  Lcom/pinguo/album/views/PGAlbumShareView$2;
.super Ljava/lang/Object;
.source "PGAlbumShareView.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/pinguo/album/views/PGAlbumShareView;
.method constructor <init>(Lcom/pinguo/album/views/PGAlbumShareView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/PGAlbumShareView$2;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/views/PGAlbumShareView$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView$2;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;
#getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mListener:Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
invoke-static {v0}, Lcom/pinguo/album/views/PGAlbumShareView;->access$2(Lcom/pinguo/album/views/PGAlbumShareView;)Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
move-result-object v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView$2;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;
#getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mListener:Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
invoke-static {v0}, Lcom/pinguo/album/views/PGAlbumShareView;->access$2(Lcom/pinguo/album/views/PGAlbumShareView;)Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;
move-result-object v1
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView$2;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;
#getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mLocalShareItems:Ljava/util/List;
invoke-static {v0}, Lcom/pinguo/album/views/PGAlbumShareView;->access$3(Lcom/pinguo/album/views/PGAlbumShareView;)Ljava/util/List;
move-result-object v0
invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/ShareItem;
invoke-interface {v1, v0}, Lcom/pinguo/album/views/PGAlbumShareView$OnMenuItemClickListener;->onMenuItemClick(Lcom/pinguo/album/views/ShareItem;)V
:cond_1d
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView$2;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;
#getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-static {v0}, Lcom/pinguo/album/views/PGAlbumShareView;->access$1(Lcom/pinguo/album/views/PGAlbumShareView;)Landroid/widget/PopupWindow;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
const-string v1, " - Lcom/pinguo/album/views/PGAlbumShareView$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method