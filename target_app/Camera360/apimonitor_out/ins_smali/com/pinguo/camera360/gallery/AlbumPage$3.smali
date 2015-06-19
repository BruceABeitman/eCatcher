.class  Lcom/pinguo/camera360/gallery/AlbumPage$3;
.super Ljava/lang/Object;
.source "AlbumPage.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/AlbumPage$3;)Lcom/pinguo/camera360/gallery/AlbumPage;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$3;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
return-object v0
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/AlbumPage$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage$3;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumPage$3$1;->start()V
const-string v1, " - Lcom/pinguo/camera360/gallery/AlbumPage$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method