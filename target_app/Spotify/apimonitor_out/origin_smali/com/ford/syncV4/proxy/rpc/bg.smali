.class public final Lcom/ford/syncV4/proxy/rpc/bg;
.super Lcom/ford/syncV4/proxy/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Speak"

    invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/ford/syncV4/proxy/rpc/bp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/bg;->b:Ljava/util/Hashtable;

    const-string v1, "ttsChunks"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method
