.class Lcom/glympse/android/rpc/ab;
.super Ljava/lang/Object;
.source "MethodGetUserSnapshot.java"

# interfaces
.implements Lcom/glympse/android/rpc/ImageLoader$GLoadListener;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private mM:Lcom/glympse/android/api/GUser;

.field private vj:Lcom/glympse/android/rpc/GMessageGateway;

.field private vk:Lcom/glympse/android/rpc/GConnection;


# direct methods
.method public constructor <init>(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GUser;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/rpc/ab;->vk:Lcom/glympse/android/rpc/GConnection;

    iput-object p1, p0, Lcom/glympse/android/rpc/ab;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    iput-object p3, p0, Lcom/glympse/android/rpc/ab;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p4, p0, Lcom/glympse/android/rpc/ab;->mM:Lcom/glympse/android/api/GUser;

    return-void
.end method

.method private a(Lcom/glympse/android/api/GImage;)V
    .registers 7

    new-instance v0, Lcom/glympse/android/rpc/ax;

    invoke-direct {v0}, Lcom/glympse/android/rpc/ax;-><init>()V

    iget-object v1, p0, Lcom/glympse/android/rpc/ab;->vj:Lcom/glympse/android/rpc/GMessageGateway;

    iget-object v2, p0, Lcom/glympse/android/rpc/ab;->vk:Lcom/glympse/android/rpc/GConnection;

    iget-object v3, p0, Lcom/glympse/android/rpc/ab;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v4, p0, Lcom/glympse/android/rpc/ab;->mM:Lcom/glympse/android/api/GUser;

    invoke-static {v3, v4, p1}, Lcom/glympse/android/rpc/RpcMessages;->packParameters(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/glympse/android/core/GArray;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/glympse/android/rpc/ax;->call(Lcom/glympse/android/rpc/GMessageGateway;Lcom/glympse/android/rpc/GConnection;Lcom/glympse/android/core/GArray;)V

    return-void
.end method


# virtual methods
.method public imageLoaded(Lcom/glympse/android/api/GImage;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/glympse/android/rpc/ab;->a(Lcom/glympse/android/api/GImage;)V

    return-void
.end method
