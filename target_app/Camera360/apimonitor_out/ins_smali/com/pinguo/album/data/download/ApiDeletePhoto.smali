.class public Lcom/pinguo/album/data/download/ApiDeletePhoto;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiDeletePhoto.java"
.field private static final TAG:Ljava/lang/String;
.field private mIds:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/data/download/ApiDeletePhoto;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/data/download/ApiDeletePhoto;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto;->mIds:[Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/album/data/download/ApiDeletePhoto;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/data/download/ApiDeletePhoto;)[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/download/ApiDeletePhoto;->mIds:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/album/data/download/ApiDeletePhoto;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/album/data/download/ApiDeletePhoto;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/album/data/download/ApiDeletePhoto;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 6
const-string/jumbo v0, "http://cloud.camera360.com/mobile/picture/delete"
sget-object v1, Lcom/pinguo/album/data/download/ApiDeletePhoto;->TAG:Ljava/lang/String;
const-string/jumbo v2, "--------delete url-----http://cloud.camera360.com/mobile/picture/delete"
invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;
const/4 v2, 0x1
const-string/jumbo v3, "http://cloud.camera360.com/mobile/picture/delete"
invoke-direct {v1, p0, v2, v3, p1}, Lcom/pinguo/album/data/download/ApiDeletePhoto$1;-><init>(Lcom/pinguo/album/data/download/ApiDeletePhoto;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
invoke-virtual {p0, v1}, Lcom/pinguo/album/data/download/ApiDeletePhoto;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
return-void
.end method