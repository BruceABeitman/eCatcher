.class public Lcom/instagram/common/a/b/a;
.super Ljava/lang/Object;
.source "ApiHttpClient.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/instagram/common/a/b/a;

.field private static c:Lcom/instagram/common/a/b/c;


# instance fields
.field private final d:Lch/boye/httpclientandroidlib/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/common/a/b/a;

    sput-object v0, Lcom/instagram/common/a/b/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/instagram/common/a/b/a;->c:Lcom/instagram/common/a/b/c;

    invoke-interface {v0}, Lcom/instagram/common/a/b/c;->a()Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/a/b/a;->d:Lch/boye/httpclientandroidlib/client/HttpClient;

    return-void
.end method

.method private a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/instagram/common/a/b/a;->d:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_19

    const-string v1, "network_request"

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->abort()V

    sget-object v1, Lcom/instagram/common/a/b/a;->a:Ljava/lang/Class;

    const-string v2, "Send request failed"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a()Lcom/instagram/common/a/b/a;
    .registers 1

    sget-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/instagram/common/a/b/a;->c()V

    :cond_7
    sget-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;

    return-object v0
.end method

.method private static a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static a(Lcom/instagram/common/a/b/c;)V
    .registers 1

    sput-object p0, Lcom/instagram/common/a/b/a;->c:Lcom/instagram/common/a/b/c;

    return-void
.end method

.method private static b(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .registers 5

    new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpPost;

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->c_()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/instagram/common/a/c/b;->d()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    instance-of v0, v1, Lcom/instagram/common/a/f/e;

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_2a

    move-object v0, v1

    check-cast v0, Lcom/instagram/common/a/f/e;

    invoke-interface {v0, p1}, Lcom/instagram/common/a/f/e;->a(Lcom/instagram/common/a/f/j;)V

    :cond_1f
    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpPost;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    :cond_22
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->m()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V

    return-object v2

    :cond_2a
    if-eqz p1, :cond_1f

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can only listen to multi-part uploads"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lcom/instagram/common/a/d/a;)Ljava/lang/String;
    .registers 4

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->c_()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/instagram/common/a/c/b;->a()I

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lcom/instagram/common/a/c/b;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2b
    return-object v0
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;

    return-void
.end method

.method private static c(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .registers 4

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->m()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-static {p0}, Lcom/instagram/common/a/b/a;->b(Lcom/instagram/common/a/d/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V

    return-object v1
.end method

.method private static declared-synchronized c()V
    .registers 2

    const-class v1, Lcom/instagram/common/a/b/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    sget-object v0, Lcom/instagram/common/a/b/a;->a:Ljava/lang/Class;

    new-instance v0, Lcom/instagram/common/a/b/a;

    invoke-direct {v0}, Lcom/instagram/common/a/b/a;-><init>()V

    sput-object v0, Lcom/instagram/common/a/b/a;->b:Lcom/instagram/common/a/b/a;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_13

    goto :goto_7

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .registers 4

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->m()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lch/boye/httpclientandroidlib/client/methods/HttpDelete;

    invoke-static {p0}, Lcom/instagram/common/a/b/a;->b(Lcom/instagram/common/a/d/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V

    return-object v1
.end method

.method private static e(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .registers 3

    new-instance v0, Lcom/instagram/common/a/b/d;

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->c_()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/a/b/d;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->a()Lcom/instagram/common/a/c/b;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/instagram/common/a/c/b;->d()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/b/d;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    :cond_16
    invoke-interface {p0}, Lcom/instagram/common/a/d/a;->m()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 5

    sget-object v0, Lcom/instagram/common/a/b/b;->a:[I

    invoke-interface {p1}, Lcom/instagram/common/a/d/a;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_13
    invoke-static {p1}, Lcom/instagram/common/a/b/a;->c(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    :goto_1b
    return-object v0

    :pswitch_1c
    invoke-static {p1, p2}, Lcom/instagram/common/a/b/a;->b(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_1b

    :pswitch_25
    invoke-static {p1}, Lcom/instagram/common/a/b/a;->d(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_1b

    :pswitch_2e
    invoke-static {p1}, Lcom/instagram/common/a/b/a;->e(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/common/a/b/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_1b

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1c
        :pswitch_25
        :pswitch_2e
    .end packed-switch
.end method
