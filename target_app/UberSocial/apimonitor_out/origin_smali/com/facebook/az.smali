.class Lcom/facebook/az;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/aw;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/aw;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/az;->a:Lcom/facebook/aw;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/facebook/az;->b:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/az;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/az;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/az;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/bm;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    :goto_7
    const/4 v0, 0x0

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "Facebook-publish"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/b/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/az;->a:Lcom/facebook/aw;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/az;->a:Lcom/facebook/aw;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/aw;->a(Lcom/facebook/aw;Lcom/facebook/az;)Lcom/facebook/az;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/az;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/az;->a(Ljava/lang/Void;)V

    return-void
.end method
