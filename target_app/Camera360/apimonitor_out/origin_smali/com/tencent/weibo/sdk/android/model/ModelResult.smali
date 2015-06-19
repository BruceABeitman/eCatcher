.class public Lcom/tencent/weibo/sdk/android/model/ModelResult;
.super Ljava/lang/Object;
.source "ModelResult.java"


# instance fields
.field private error_message:Ljava/lang/String;

.field private isExpires:Z

.field private isLastPage:Z

.field private lat:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/BaseVO;",
            ">;"
        }
    .end annotation
.end field

.field private lon:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private p:I

.field private ps:I

.field private success:Z

.field private total:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->success:Z

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->error_message:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isExpires:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/tencent/weibo/sdk/android/model/BaseVO;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get()Lcom/tencent/weibo/sdk/android/model/BaseVO;
    .registers 3

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/weibo/sdk/android/model/BaseVO;

    return-object v0
.end method

.method public getError_message()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->error_message:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/BaseVO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->list:Ljava/util/List;

    return-object v0
.end method

.method public getLon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->lon:Ljava/lang/String;

    return-object v0
.end method

.method public getObj()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getP()I
    .registers 2

    iget v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->p:I

    return v0
.end method

.method public getPs()I
    .registers 2

    iget v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->ps:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    iget v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->total:I

    return v0
.end method

.method public isExpires()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isExpires:Z

    return v0
.end method

.method public isLastPage()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isLastPage:Z

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->success:Z

    return v0
.end method

.method public setError_message(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->error_message:Ljava/lang/String;

    return-void
.end method

.method public setExpires(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isExpires:Z

    return-void
.end method

.method public setLastPage(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isLastPage:Z

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->lat:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/BaseVO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->list:Ljava/util/List;

    return-void
.end method

.method public setLon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->lon:Ljava/lang/String;

    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->obj:Ljava/lang/Object;

    return-void
.end method

.method public setP(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->p:I

    return-void
.end method

.method public setPs(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->ps:I

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->success:Z

    return-void
.end method

.method public setTotal(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/weibo/sdk/android/model/ModelResult;->total:I

    return-void
.end method
