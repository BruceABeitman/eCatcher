.class  Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;
.super Ljava/lang/Object;
.source "PhotoPageControl.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;
.field private final synthetic val$videoInfoDialog:Landroid/app/Dialog;
.method constructor <init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;Landroid/app/Dialog;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;->val$videoInfoDialog:Landroid/app/Dialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1;->val$videoInfoDialog:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V
const-string v1, " - Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method