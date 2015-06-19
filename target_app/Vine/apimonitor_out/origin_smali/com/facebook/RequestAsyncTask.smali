.class public Lcom/facebook/RequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "RequestAsyncTask.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/Response;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static executeOnExecutorMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private exception:Ljava/lang/Exception;

.field private final requests:Lcom/facebook/RequestBatch;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-class v5, Lcom/facebook/RequestAsyncTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/facebook/RequestAsyncTask;->TAG:Ljava/lang/String;

    const-class v5, Landroid/os/AsyncTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v2, :cond_3a

    aget-object v3, v0, v1

    const-string v5, "executeOnExecutor"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3b

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-class v6, Ljava/util/concurrent/Executor;

    if-ne v5, v6, :cond_3b

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3b

    sput-object v3, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    :cond_3a
    return-void

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public constructor <init>(Lcom/facebook/RequestBatch;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    iput-object p1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p2}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/net/HttpURLConnection;[Lcom/facebook/Request;)V
    .registers 4

    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p2}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/RequestBatch;

    invoke-direct {v1, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/Request;)V
    .registers 4

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/RequestBatch;

    invoke-direct {v1, p1}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v1}, Lcom/facebook/RequestBatch;->executeAndWait()Ljava/util/List;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-static {v1, v2}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    goto :goto_a

    :catch_14
    move-exception v0

    iput-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    const/4 v1, 0x0

    goto :goto_a
.end method

.method executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    sget-object v0, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_18} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_18} :catch_19

    :goto_18
    return-object p0

    :catch_19
    move-exception v0

    :cond_1a
    :goto_1a
    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_18

    :catch_20
    move-exception v0

    goto :goto_1a
.end method

.method protected final getException()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method protected final getRequests()Lcom/facebook/RequestBatch;
    .registers 2

    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/facebook/RequestAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "onPostExecute: exception encountered during request: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{RequestAsyncTask:  connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
