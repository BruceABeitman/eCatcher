.class Lcom/pinguo/camera360/cloud/login/AssociateMailBox$5;
.super Ljava/lang/Object;
.source "AssociateMailBox.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$5;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$5;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #getter for: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$4(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$5;->this$0:Lcom/pinguo/camera360/cloud/login/AssociateMailBox;

    #calls: Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkPassword()Z
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->access$5(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Z

    :cond_f
    const/4 v0, 0x0

    return v0
.end method
