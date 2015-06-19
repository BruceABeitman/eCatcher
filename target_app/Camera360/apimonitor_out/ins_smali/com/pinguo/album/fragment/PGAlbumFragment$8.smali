.class  Lcom/pinguo/album/fragment/PGAlbumFragment$8;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$8;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/fragment/PGAlbumFragment$8; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, -0x1
if-ne p2, v0, :cond_b
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$8;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;
#calls: Lcom/pinguo/album/fragment/PGAlbumFragment;->startDownload()V
invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$34(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
:cond_b
const-string v1, " - Lcom/pinguo/album/fragment/PGAlbumFragment$8; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method