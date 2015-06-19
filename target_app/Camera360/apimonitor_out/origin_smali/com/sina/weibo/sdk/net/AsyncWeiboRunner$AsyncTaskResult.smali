.class Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private error:Lcom/sina/weibo/sdk/exception/WeiboException;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->error:Lcom/sina/weibo/sdk/exception/WeiboException;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getError()Lcom/sina/weibo/sdk/exception/WeiboException;
    .registers 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->error:Lcom/sina/weibo/sdk/exception/WeiboException;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->result:Ljava/lang/Object;

    return-object v0
.end method
