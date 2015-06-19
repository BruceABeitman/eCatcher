.class Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;
.super Ljava/lang/Object;
.source "AssociateMailBox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$6(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$4(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$3(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    return-void
.end method
