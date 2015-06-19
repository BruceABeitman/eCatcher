.class public Lcom/blackberry/ids/WebActivity$PingAsync;
.super Landroid/os/AsyncTask;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/blackberry/ids/WebActivity;


# direct methods
.method protected constructor <init>(Lcom/blackberry/ids/WebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->c:Lcom/blackberry/ids/WebActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v1, 0x1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->a:Ljava/lang/String;

    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->c:Lcom/blackberry/ids/WebActivity;

    iput-boolean v1, v0, Lcom/blackberry/ids/WebActivity;->d:Z

    iget-object v0, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->c:Lcom/blackberry/ids/WebActivity;

    iget-object v0, v0, Lcom/blackberry/ids/WebActivity;->f:Lcom/blackberry/ids/RequestId;

    invoke-static {v0}, Lcom/blackberry/ids/IDS;->doPing(Lcom/blackberry/ids/RequestId;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 7

    const v4, 0xc35c

    const/4 v3, 0x0

    const/4 v2, 0x1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->c:Lcom/blackberry/ids/WebActivity;

    iput-boolean v3, v0, Lcom/blackberry/ids/WebActivity;->d:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->c:Lcom/blackberry/ids/WebActivity;

    iget-object v1, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/blackberry/ids/WebActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    const-string v0, "pingServer failed with result %d"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->c:Lcom/blackberry/ids/WebActivity;

    const-string v1, "No Connection"

    invoke-virtual {v0, v4, v1, v2}, Lcom/blackberry/ids/WebActivity;->a(ILjava/lang/String;Z)V

    goto :goto_1a

    :cond_33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1a

    const-string v0, "pingServer failed with result %d"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/blackberry/ids/WebActivity$PingAsync;->c:Lcom/blackberry/ids/WebActivity;

    const-string v1, "CA trust cannot be established"

    invoke-virtual {v0, v4, v1, v2}, Lcom/blackberry/ids/WebActivity;->a(ILjava/lang/String;Z)V

    goto :goto_1a
.end method
