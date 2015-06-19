.class Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PersonalInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/login/PersonalInformation;->bindForSso(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    #calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->dissmissDialog()V
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$7(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/pinguo/lib/os/Fault;

    if-eqz v2, :cond_25

    move-object v1, p1

    check-cast v1, Lcom/pinguo/lib/os/Fault;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v2

    const/16 v3, 0x1a4

    if-ne v2, v3, :cond_1b

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    #calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->logout()V
    invoke-static {v2}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$9(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    invoke-virtual {v1}, Lcom/pinguo/lib/os/Fault;->getStatus()I

    move-result v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    const v3, 0x7f08017e

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_34
    iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    #calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->showMessage(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$6(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    #calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->dissmissDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$7(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$12;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    #calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->updateView()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$8(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    return-void
.end method
