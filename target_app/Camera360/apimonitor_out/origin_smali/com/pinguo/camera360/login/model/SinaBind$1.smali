.class Lcom/pinguo/camera360/login/model/SinaBind$1;
.super Ljava/lang/Object;
.source "SinaBind.java"

# interfaces
.implements Lcom/pinguo/camera360/login/model/SinaSso$SsoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/model/SinaBind;->get(Lcom/pinguo/lib/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/model/SinaBind;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/model/SinaBind;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/model/SinaBind$1;->this$0:Lcom/pinguo/camera360/login/model/SinaBind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ssoFail()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/model/SinaBind$1;->this$0:Lcom/pinguo/camera360/login/model/SinaBind;

    const-string/jumbo v1, "sina"

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/SinaBind;->startWebViewBind(Ljava/lang/String;)V

    return-void
.end method
