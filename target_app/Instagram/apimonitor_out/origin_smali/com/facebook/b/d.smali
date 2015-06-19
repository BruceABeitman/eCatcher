.class final Lcom/facebook/b/d;
.super Landroid/os/AsyncTask;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/b/b;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/facebook/b/b;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/b/d;->a:Lcom/facebook/b/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/facebook/b/d;->b:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/d;->c:Landroid/content/Context;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/b/d;->a:Lcom/facebook/b/b;

    iget-object v1, p0, Lcom/facebook/b/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/b/d;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    :goto_9
    const/4 v0, 0x0

    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    goto :goto_9
.end method

.method private b()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/b/d;->a:Lcom/facebook/b/b;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/b/d;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->c(Lcom/facebook/b/b;)Lcom/facebook/b/d;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/facebook/b/d;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/b/d;->b()V

    return-void
.end method
