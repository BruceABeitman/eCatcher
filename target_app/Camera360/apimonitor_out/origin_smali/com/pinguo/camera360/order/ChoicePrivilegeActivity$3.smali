.class Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$3;
.super Ljava/lang/Object;
.source "ChoicePrivilegeActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$3;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$3;->this$0:Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    #calls: Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onTitleRightBtnClick()V
    invoke-static {v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->access$0(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    const/4 v0, 0x0

    return v0
.end method
