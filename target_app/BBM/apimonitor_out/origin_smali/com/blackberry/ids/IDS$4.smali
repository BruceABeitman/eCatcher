.class final Lcom/blackberry/ids/IDS$4;
.super Ljava/lang/Object;
.source "IDS.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/RequestId;

.field final synthetic b:I

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/blackberry/ids/IGetPropertiesCallback;

.field final synthetic f:Lcom/blackberry/ids/IFailureCallback;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/RequestId;I[Ljava/lang/String;Ljava/lang/Object;Lcom/blackberry/ids/IGetPropertiesCallback;Lcom/blackberry/ids/IFailureCallback;)V
    .registers 7

    iput-object p1, p0, Lcom/blackberry/ids/IDS$4;->a:Lcom/blackberry/ids/RequestId;

    iput p2, p0, Lcom/blackberry/ids/IDS$4;->b:I

    iput-object p3, p0, Lcom/blackberry/ids/IDS$4;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/blackberry/ids/IDS$4;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/blackberry/ids/IDS$4;->e:Lcom/blackberry/ids/IGetPropertiesCallback;

    iput-object p6, p0, Lcom/blackberry/ids/IDS$4;->f:Lcom/blackberry/ids/IFailureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "enter IDS.do_get_properties request_id=%s type=%s properties=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$4;->a:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v5

    iget v2, p0, Lcom/blackberry/ids/IDS$4;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/blackberry/ids/IDS$4;->c:[Ljava/lang/String;

    const-string v4, ", "

    invoke-static {v3, v4}, Lcom/blackberry/ids/StringUtils;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    :try_start_21
    iget-object v0, p0, Lcom/blackberry/ids/IDS$4;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/blackberry/ids/IDS$4;->b:I

    iget-object v0, p0, Lcom/blackberry/ids/IDS$4;->c:[Ljava/lang/String;

    iget-object v1, p0, Lcom/blackberry/ids/IDS$4;->e:Lcom/blackberry/ids/IGetPropertiesCallback;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$4;->f:Lcom/blackberry/ids/IFailureCallback;

    iget-object v3, p0, Lcom/blackberry/ids/IDS$4;->a:Lcom/blackberry/ids/RequestId;

    invoke-static {v0, v1, v2, v3}, Lcom/blackberry/ids/IDS;->a([Ljava/lang/String;Lcom/blackberry/ids/IGetPropertiesCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)V
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_68
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_30} :catch_3c

    const-string v0, "exit IDS.do_get_properties request_id=%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$4;->a:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    :try_start_3d
    const-string v1, "Uncaught Throwable in IDS.do_get_properties request_id=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/blackberry/ids/IDS$4;->a:Lcom/blackberry/ids/RequestId;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/blackberry/ids/IDS$4;->f:Lcom/blackberry/ids/IFailureCallback;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$4;->a:Lcom/blackberry/ids/RequestId;

    invoke-virtual {v2}, Lcom/blackberry/ids/RequestId;->getRequestId()I

    move-result v2

    const v3, 0xc34f

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/blackberry/ids/IFailureCallback;->call(IILjava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_3d .. :try_end_5c} :catchall_68

    const-string v0, "exit IDS.do_get_properties request_id=%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$4;->a:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3b

    :catchall_68
    move-exception v0

    const-string v1, "exit IDS.do_get_properties request_id=%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/blackberry/ids/IDS$4;->a:Lcom/blackberry/ids/RequestId;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v0
.end method
