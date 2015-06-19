.class Lcom/blackberry/ids/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/LoginActivity;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/LoginActivity$4;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    const-string v0, "Running do_referesh_token as worker from Login Activity"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    :try_start_8
    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$4;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v0, v0, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    invoke-static {v0}, Lcom/blackberry/ids/IDS;->a(Lcom/blackberry/ids/RequestId;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_2f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_17

    const-string v0, "Exit do_referesh_token as worker from Login Activity"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_16
    return-void

    :catch_17
    move-exception v0

    :try_start_18
    const-string v1, "Uncaught Throwable from IDS.do_refresh_token request_id=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/blackberry/ids/LoginActivity$4;->a:Lcom/blackberry/ids/LoginActivity;

    iget-object v4, v4, Lcom/blackberry/ids/LoginActivity;->f:Lcom/blackberry/ids/RequestId;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_2f

    const-string v0, "Exit do_referesh_token as worker from Login Activity"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_16

    :catchall_2f
    move-exception v0

    const-string v1, "Exit do_referesh_token as worker from Login Activity"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v0
.end method
