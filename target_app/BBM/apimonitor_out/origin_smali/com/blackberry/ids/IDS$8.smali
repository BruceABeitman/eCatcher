.class final Lcom/blackberry/ids/IDS$8;
.super Ljava/lang/Object;
.source "IDS.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/RequestId;

.field final synthetic b:Lcom/blackberry/ids/IManageIdentityCallback;

.field final synthetic c:Lcom/blackberry/ids/IFailureCallback;

.field final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/RequestId;Lcom/blackberry/ids/IManageIdentityCallback;Lcom/blackberry/ids/IFailureCallback;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Lcom/blackberry/ids/IDS$8;->a:Lcom/blackberry/ids/RequestId;

    iput-object p2, p0, Lcom/blackberry/ids/IDS$8;->b:Lcom/blackberry/ids/IManageIdentityCallback;

    iput-object p3, p0, Lcom/blackberry/ids/IDS$8;->c:Lcom/blackberry/ids/IFailureCallback;

    iput-object p4, p0, Lcom/blackberry/ids/IDS$8;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v0, "enter uiThread.do_manage_identity request_id=%s"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$8;->a:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    :try_start_d
    invoke-static {}, Lcom/blackberry/ids/IDS;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/blackberry/ids/IDS$8;->b:Lcom/blackberry/ids/IManageIdentityCallback;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$8;->c:Lcom/blackberry/ids/IFailureCallback;

    iget-object v3, p0, Lcom/blackberry/ids/IDS$8;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/blackberry/ids/ManageIdentityListener;->start(Landroid/content/Context;Lcom/blackberry/ids/IManageIdentityCallback;Lcom/blackberry/ids/IFailureCallback;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blackberry/ids/IDS;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/blackberry/ids/IDS$8;->a:Lcom/blackberry/ids/RequestId;

    invoke-static {}, Lcom/blackberry/ids/IDS;->j()Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v3

    iget-object v3, v3, Lcom/blackberry/ids/BBIDStorage;->b:Ljava/lang/String;

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/blackberry/ids/BBIDStorage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/blackberry/ids/IDS;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/blackberry/ids/BBIDStorage;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/blackberry/ids/BBIDStorage;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blackberry/ids/BBIDStorage;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/blackberry/ids/IDS;->l()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/blackberry/ids/EditActivity;->startEditView(Landroid/content/Context;Lcom/blackberry/ids/RequestId;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_61

    const-string v0, "exit uiThread.do_manage_identity request_id=%s"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/blackberry/ids/IDS$8;->a:Lcom/blackberry/ids/RequestId;

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :catchall_61
    move-exception v0

    const-string v1, "exit uiThread.do_manage_identity request_id=%s"

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/blackberry/ids/IDS$8;->a:Lcom/blackberry/ids/RequestId;

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v0
.end method
