.class  Lcom/pinguo/album/fragment/PGFullImageFragment$6;
.super Ljava/lang/Object;
.source "PGFullImageFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
.field private final synthetic val$downloader:Lcom/pinguo/album/data/image/download/PictureDownloadManager;
.method constructor <init>(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/data/image/download/PictureDownloadManager;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$6;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;
iput-object p2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$6;->val$downloader:Lcom/pinguo/album/data/image/download/PictureDownloadManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/fragment/PGFullImageFragment$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$6;->val$downloader:Lcom/pinguo/album/data/image/download/PictureDownloadManager;
invoke-virtual {v0}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->cancelDownload()V
const-string v1, " - Lcom/pinguo/album/fragment/PGFullImageFragment$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method