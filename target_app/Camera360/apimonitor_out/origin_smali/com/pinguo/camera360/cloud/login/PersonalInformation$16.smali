.class Lcom/pinguo/camera360/cloud/login/PersonalInformation$16;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "PersonalInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/cloud/login/PersonalInformation;->getUserInfo()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$16;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/login/PersonalInformation$16;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$16;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;

    #calls: Lcom/pinguo/camera360/cloud/login/PersonalInformation;->updateView()V
    invoke-static {v0}, Lcom/pinguo/camera360/cloud/login/PersonalInformation;->access$8(Lcom/pinguo/camera360/cloud/login/PersonalInformation;)V

    return-void
.end method