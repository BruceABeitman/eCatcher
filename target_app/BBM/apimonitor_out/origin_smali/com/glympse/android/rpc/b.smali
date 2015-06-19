.class Lcom/glympse/android/rpc/b;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/glympse/android/rpc/GConnection;


# instance fields
.field private hm:Ljava/lang/String;

.field private kQ:Ljava/lang/String;

.field private vm:J

.field private vn:Lcom/glympse/android/rpc/GRpcProtocol;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glympse/android/rpc/b;->vm:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/rpc/b;->hm:Ljava/lang/String;

    iput-wide p2, p0, Lcom/glympse/android/rpc/b;->vm:J

    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/rpc/b;->kQ:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/rpc/b;->vm:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/rpc/b;->hm:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Lcom/glympse/android/rpc/GRpcProtocol;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/rpc/b;->vn:Lcom/glympse/android/rpc/GRpcProtocol;

    return-object v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/rpc/b;->kQ:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/glympse/android/rpc/b;->vm:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/rpc/b;->hm:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Lcom/glympse/android/rpc/GRpcProtocol;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/rpc/b;->vn:Lcom/glympse/android/rpc/GRpcProtocol;

    return-void
.end method
