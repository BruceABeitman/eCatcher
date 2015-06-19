.class public final Lcom/ford/syncV4/proxy/rpc/j;
.super Lcom/ford/syncV4/proxy/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "DeleteCommand"

    invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Integer;)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/j;->b:Ljava/util/Hashtable;

    const-string v1, "cmdID"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method
