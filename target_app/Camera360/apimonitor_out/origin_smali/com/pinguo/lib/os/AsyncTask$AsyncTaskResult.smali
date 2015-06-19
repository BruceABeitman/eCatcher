.class Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/lib/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
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
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/pinguo/lib/os/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/pinguo/lib/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;->mTask:Lcom/pinguo/lib/os/AsyncTask;

    iput-object p2, p0, Lcom/pinguo/lib/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
