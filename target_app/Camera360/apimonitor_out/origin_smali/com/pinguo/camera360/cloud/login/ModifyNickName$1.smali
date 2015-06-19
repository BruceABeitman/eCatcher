.class Lcom/pinguo/camera360/cloud/login/ModifyNickName$1;
.super Ljava/lang/Object;
.source "ModifyNickName.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/login/ModifyNickName;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName$1;->this$0:Lcom/pinguo/camera360/cloud/login/ModifyNickName;

    #getter for: Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mErrorTipTV:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->access$0(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
