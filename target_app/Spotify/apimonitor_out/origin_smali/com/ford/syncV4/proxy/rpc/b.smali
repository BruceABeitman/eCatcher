.class public final Lcom/ford/syncV4/proxy/rpc/b;
.super Lcom/ford/syncV4/proxy/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "AddCommand"

    invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/f;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method
