.class public Lcom/facebook/u;
.super Landroid/os/AsyncTask;
.source "SourceFile"


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
        "Lcom/facebook/aa;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/reflect/Method;


# instance fields
.field private final c:Ljava/net/HttpURLConnection;

.field private final d:Lcom/facebook/v;

.field private e:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v1, 0x0

    const-class v0, Lcom/facebook/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/u;->a:Ljava/lang/String;

    const-class v0, Landroid/os/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_11
    if-ge v0, v3, :cond_3a

    aget-object v4, v2, v0

    const-string v5, "executeOnExecutor"

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3b

    aget-object v6, v5, v1

    const-class v7, Ljava/util/concurrent/Executor;

    if-ne v6, v7, :cond_3b

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3b

    sput-object v4, Lcom/facebook/u;->b:Ljava/lang/reflect/Method;

    :cond_3a
    return-void

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public constructor <init>(Lcom/facebook/v;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/u;-><init>(Lcom/facebook/v;B)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/v;B)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/facebook/u;->d:Lcom/facebook/v;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/u;->c:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private varargs b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/aa;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/facebook/u;->c:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/facebook/u;->d:Lcom/facebook/v;

    invoke-static {v0}, Lcom/facebook/Request;->a(Lcom/facebook/v;)Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/facebook/u;->c:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/facebook/u;->d:Lcom/facebook/v;

    invoke-static {v0, v1}, Lcom/facebook/Request;->a(Ljava/net/HttpURLConnection;Lcom/facebook/v;)Ljava/util/List;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_a

    :catch_14
    move-exception v0

    iput-object v0, p0, Lcom/facebook/u;->e:Ljava/lang/Exception;

    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method final a()Lcom/facebook/u;
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    sget-object v0, Lcom/facebook/u;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/facebook/u;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/ah;->b()Ljava/util/concurrent/Executor;

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

    invoke-virtual {p0, v0}, Lcom/facebook/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_18

    :catch_20
    move-exception v0

    goto :goto_1a
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/facebook/u;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Ljava/util/List;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/u;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/facebook/u;->a:Ljava/lang/String;

    const-string v1, "onPostExecute: exception encountered during request: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/u;->e:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/facebook/u;->d:Lcom/facebook/v;

    invoke-virtual {v0}, Lcom/facebook/v;->c()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/facebook/u;->d:Lcom/facebook/v;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/v;->a(Landroid/os/Handler;)V

    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{RequestAsyncTask:  connection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/u;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/u;->d:Lcom/facebook/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
