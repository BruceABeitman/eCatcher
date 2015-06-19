.class Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;
.super Ljava/lang/Object;
.source "AssociateMailBox.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->finish()V

    return-void
.end method

.method public onRightBtnClick()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->assocaiteMainbox()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$0(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V

    return-void
.end method
