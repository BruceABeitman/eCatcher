.class Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;
.super Ljava/lang/Object;
.source "AsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/Camera360Lib/async/AsyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncRequestResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final data:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final request:Lcom/pinguo/Camera360Lib/async/AsyncRequest;


# direct methods
.method varargs constructor <init>(Lcom/pinguo/Camera360Lib/async/AsyncRequest;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/Camera360Lib/async/AsyncRequest;",
            "[TData;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;->request:Lcom/pinguo/Camera360Lib/async/AsyncRequest;

    iput-object p2, p0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$AsyncRequestResult;->data:[Ljava/lang/Object;

    return-void
.end method
