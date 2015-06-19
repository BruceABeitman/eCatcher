.class public Lcom/igexin/push/core/bean/PushTaskBean;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:[B

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/util/Map;

.field private p:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->l:Z

    iput-boolean v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->m:Z

    iput-boolean v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->n:Z

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getActionChains()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->f:Ljava/util/List;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseAction(Ljava/lang/String;)Lcom/igexin/push/core/bean/BaseAction;
    .registers 5

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/PushTaskBean;->getActionChains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/BaseAction;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/BaseAction;->getActionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getConditionMap()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->o:Ljava/util/Map;

    return-object v0
.end method

.method public getCurrentActionid()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->j:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgExtra()[B
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->g:[B

    return-object v0
.end method

.method public getPerActionid()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->k:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->p:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isCDNType()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->n:Z

    return v0
.end method

.method public isHttpImg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->l:Z

    return v0
.end method

.method public isStop()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/push/core/bean/PushTaskBean;->m:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->a:Ljava/lang/String;

    return-void
.end method

.method public setActionChains(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->f:Ljava/util/List;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->i:Ljava/lang/String;

    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->b:Ljava/lang/String;

    return-void
.end method

.method public setCDNType(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->n:Z

    return-void
.end method

.method public setConditionMap(Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->o:Ljava/util/Map;

    return-void
.end method

.method public setCurrentActionid(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->j:I

    return-void
.end method

.method public setHttpImg(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->l:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->c:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->d:Ljava/lang/String;

    return-void
.end method

.method public setMsgAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->h:Ljava/lang/String;

    return-void
.end method

.method public setMsgExtra([B)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->g:[B

    return-void
.end method

.method public setPerActionid(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->k:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->p:I

    return-void
.end method

.method public setStop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->m:Z

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/PushTaskBean;->e:Ljava/lang/String;

    return-void
.end method
