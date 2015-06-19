.class public final Lcom/ford/syncV4/proxy/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/Vector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/ford/syncV4/proxy/rpc/bp;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;->a:Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;

    new-instance v2, Lcom/ford/syncV4/proxy/rpc/bp;

    invoke-direct {v2}, Lcom/ford/syncV4/proxy/rpc/bp;-><init>()V

    invoke-virtual {v2, v1}, Lcom/ford/syncV4/proxy/rpc/bp;->a(Lcom/ford/syncV4/proxy/rpc/enums/SpeechCapabilities;)V

    invoke-virtual {v2, p0}, Lcom/ford/syncV4/proxy/rpc/bp;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method
