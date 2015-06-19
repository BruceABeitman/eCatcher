.class public Lcom/tencent/weibo/sdk/android/network/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"
.field private static instance:Lcom/tencent/weibo/sdk/android/network/HttpService;
.field private final TAG_RUNNING:I
.field private final TAG_WAITTING:I
.field private mRunningReqList:Ljava/util/List;
.field private mThreadNum:I
.field private mWaitReqList:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/tencent/weibo/sdk/android/network/HttpService;->instance:Lcom/tencent/weibo/sdk/android/network/HttpService;
return-void
.end method
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->TAG_RUNNING:I
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->TAG_WAITTING:I
iput-object v1, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mWaitReqList:Ljava/util/List;
iput-object v1, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
const/4 v0, 0x4
iput v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mThreadNum:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mWaitReqList:Ljava/util/List;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
return-void
.end method
.method public static getInstance()Lcom/tencent/weibo/sdk/android/network/HttpService;
.registers 1
sget-object v0, Lcom/tencent/weibo/sdk/android/network/HttpService;->instance:Lcom/tencent/weibo/sdk/android/network/HttpService;
if-nez v0, :cond_b
new-instance v0, Lcom/tencent/weibo/sdk/android/network/HttpService;
invoke-direct {v0}, Lcom/tencent/weibo/sdk/android/network/HttpService;-><init>()V
sput-object v0, Lcom/tencent/weibo/sdk/android/network/HttpService;->instance:Lcom/tencent/weibo/sdk/android/network/HttpService;
:cond_b
sget-object v0, Lcom/tencent/weibo/sdk/android/network/HttpService;->instance:Lcom/tencent/weibo/sdk/android/network/HttpService;
return-object v0
.end method
.method public SetAsynchronousTaskNum(I)V
.registers 2
return-void
.end method
.method public addImmediateReq(Lcom/tencent/weibo/sdk/android/network/HttpReq;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->setServiceTag(I)V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Void;
invoke-virtual {p1, v0}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method public addNormalReq(Lcom/tencent/weibo/sdk/android/network/HttpReq;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v1, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mThreadNum:I
if-ge v0, v1, :cond_1a
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->setServiceTag(I)V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-array v0, v2, [Ljava/lang/Void;
invoke-virtual {p1, v0}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:goto_19
return-void
:cond_1a
invoke-virtual {p1, v2}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->setServiceTag(I)V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mWaitReqList:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_19
.end method
.method public cancelAllReq()V
.registers 4
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_12
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mWaitReqList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->clear()V
return-void
:cond_12
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/tencent/weibo/sdk/android/network/HttpReq;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->cancel(Z)Z
goto :goto_6
.end method
.method public cancelReq(Lcom/tencent/weibo/sdk/android/network/HttpReq;)V
.registers 6
const/4 v3, 0x1
invoke-virtual {p1}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->getServiceTag()I
move-result v2
if-ne v2, v3, :cond_25
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_d
:cond_d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_14
:cond_13
return-void
:cond_14
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/tencent/weibo/sdk/android/network/HttpReq;
if-ne v1, p1, :cond_d
invoke-virtual {p1, v3}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->cancel(Z)Z
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_d
:cond_25
invoke-virtual {p1}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->getServiceTag()I
move-result v2
if-nez v2, :cond_13
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mWaitReqList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_31
:cond_31
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_13
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
if-ne p1, v2, :cond_31
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mWaitReqList:Ljava/util/List;
invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_31
.end method
.method public onReqFinish(Lcom/tencent/weibo/sdk/android/network/HttpReq;)V
.registers 7
const/4 v2, 0x0
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_7
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_3e
:goto_d
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mWaitReqList:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_3d
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
iget v4, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mThreadNum:I
if-ge v3, v4, :cond_3d
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mWaitReqList:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/tencent/weibo/sdk/android/network/HttpReq;
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
const/4 v3, 0x1
invoke-virtual {v1, v3}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->setServiceTag(I)V
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/network/HttpService;->mRunningReqList:Ljava/util/List;
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Void;
invoke-virtual {v1, v3}, Lcom/tencent/weibo/sdk/android/network/HttpReq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_3d
return-void
:cond_3e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/tencent/weibo/sdk/android/network/HttpReq;
if-ne p1, v1, :cond_7
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
const/4 v2, 0x1
goto :goto_d
.end method