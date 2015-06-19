.class  Lcom/pinguo/camera360/mycenter/MyCenterActivity$2;
.super Ljava/lang/Object;
.source "MyCenterActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/mycenter/MyCenterActivity;
.field private final synthetic val$backBtn:Landroid/view/View;
.method constructor <init>(Lcom/pinguo/camera360/mycenter/MyCenterActivity;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity$2;->this$0:Lcom/pinguo/camera360/mycenter/MyCenterActivity;
iput-object p2, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity$2;->val$backBtn:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MyCenterActivity$2;->val$backBtn:Landroid/view/View;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
return-void
.end method