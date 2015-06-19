.class  Lcom/pinguo/album/views/PGAlbumShareView$1;
.super Ljava/lang/Object;
.source "PGAlbumShareView.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/pinguo/album/views/PGAlbumShareView;
.method constructor <init>(Lcom/pinguo/album/views/PGAlbumShareView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/PGAlbumShareView$1;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 5
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_12
iget-object v0, p0, Lcom/pinguo/album/views/PGAlbumShareView$1;->this$0:Lcom/pinguo/album/views/PGAlbumShareView;
#getter for: Lcom/pinguo/album/views/PGAlbumShareView;->mPopupWindow:Landroid/widget/PopupWindow;
invoke-static {v0}, Lcom/pinguo/album/views/PGAlbumShareView;->access$1(Lcom/pinguo/album/views/PGAlbumShareView;)Landroid/widget/PopupWindow;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method