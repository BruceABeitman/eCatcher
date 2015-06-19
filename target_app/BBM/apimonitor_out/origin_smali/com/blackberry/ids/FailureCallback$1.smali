.class Lcom/blackberry/ids/FailureCallback$1;
.super Ljava/lang/Object;
.source "FailureCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/blackberry/ids/FailureCallback;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/FailureCallback;IILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/blackberry/ids/FailureCallback$1;->d:Lcom/blackberry/ids/FailureCallback;

    iput p2, p0, Lcom/blackberry/ids/FailureCallback$1;->a:I

    iput p3, p0, Lcom/blackberry/ids/FailureCallback$1;->b:I

    iput-object p4, p0, Lcom/blackberry/ids/FailureCallback$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "enter FailureCallback request_id=%d result=%d info=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/blackberry/ids/FailureCallback$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/blackberry/ids/FailureCallback$1;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/blackberry/ids/FailureCallback$1;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    :try_start_1f
    iget-object v0, p0, Lcom/blackberry/ids/FailureCallback$1;->d:Lcom/blackberry/ids/FailureCallback;

    iget-object v1, p0, Lcom/blackberry/ids/FailureCallback$1;->d:Lcom/blackberry/ids/FailureCallback;

    iget-wide v1, v1, Lcom/blackberry/ids/FailureCallback;->a:J

    iget-object v3, p0, Lcom/blackberry/ids/FailureCallback$1;->d:Lcom/blackberry/ids/FailureCallback;

    iget-wide v3, v3, Lcom/blackberry/ids/FailureCallback;->b:J

    iget v5, p0, Lcom/blackberry/ids/FailureCallback$1;->a:I

    iget v6, p0, Lcom/blackberry/ids/FailureCallback$1;->b:I

    iget-object v7, p0, Lcom/blackberry/ids/FailureCallback$1;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/blackberry/ids/FailureCallback;->a(Lcom/blackberry/ids/FailureCallback;JJIILjava/lang/String;)V

    iget v0, p0, Lcom/blackberry/ids/FailureCallback$1;->b:I

    const v1, 0xc3ea

    if-eq v0, v1, :cond_40

    iget v0, p0, Lcom/blackberry/ids/FailureCallback$1;->b:I

    const v1, 0xc354

    if-ne v0, v1, :cond_45

    :cond_40
    sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NOT_AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->b(Lcom/blackberry/ids/UserAuthState$AuthState;)V

    :cond_45
    iget v0, p0, Lcom/blackberry/ids/FailureCallback$1;->b:I

    const v1, 0xc3ec

    if-ne v0, v1, :cond_51

    sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_LONGER_VALID:Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-static {v0}, Lcom/blackberry/ids/UserAuthState;->b(Lcom/blackberry/ids/UserAuthState$AuthState;)V
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_61

    :cond_51
    const-string v0, "exit FailureCallback request_id=%d"

    new-array v1, v9, [Ljava/lang/Object;

    iget v2, p0, Lcom/blackberry/ids/FailureCallback$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :catchall_61
    move-exception v0

    const-string v1, "exit FailureCallback request_id=%d"

    new-array v2, v9, [Ljava/lang/Object;

    iget v3, p0, Lcom/blackberry/ids/FailureCallback$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v0
.end method
