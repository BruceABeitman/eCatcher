.class final Lcom/squareup/picasso/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/squareup/picasso/l;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/concurrent/ExecutorService;

.field final d:Lcom/squareup/picasso/Downloader;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/d;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field final g:Landroid/os/Handler;

.field final h:Landroid/os/Handler;

.field final i:Lcom/squareup/picasso/e;

.field final j:Lcom/squareup/picasso/af;

.field final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/d;",
            ">;"
        }
    .end annotation
.end field

.field final l:Lcom/squareup/picasso/m;

.field final m:Z

.field n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/squareup/picasso/l;

    invoke-direct {v0}, Lcom/squareup/picasso/l;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/j;->a:Lcom/squareup/picasso/l;

    iget-object v0, p0, Lcom/squareup/picasso/j;->a:Lcom/squareup/picasso/l;

    invoke-virtual {v0}, Lcom/squareup/picasso/l;->start()V

    iput-object p1, p0, Lcom/squareup/picasso/j;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/squareup/picasso/j;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/j;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/picasso/j;->f:Ljava/util/Map;

    new-instance v0, Lcom/squareup/picasso/k;

    iget-object v1, p0, Lcom/squareup/picasso/j;->a:Lcom/squareup/picasso/l;

    invoke-virtual {v1}, Lcom/squareup/picasso/l;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/picasso/k;-><init>(Landroid/os/Looper;Lcom/squareup/picasso/j;)V

    iput-object v0, p0, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;

    iput-object p4, p0, Lcom/squareup/picasso/j;->d:Lcom/squareup/picasso/Downloader;

    iput-object p3, p0, Lcom/squareup/picasso/j;->h:Landroid/os/Handler;

    iput-object p5, p0, Lcom/squareup/picasso/j;->i:Lcom/squareup/picasso/e;

    iput-object p6, p0, Lcom/squareup/picasso/j;->j:Lcom/squareup/picasso/af;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/j;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/squareup/picasso/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/am;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/j;->n:Z

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/squareup/picasso/am;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/picasso/j;->m:Z

    new-instance v0, Lcom/squareup/picasso/m;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/m;-><init>(Lcom/squareup/picasso/j;)V

    iput-object v0, p0, Lcom/squareup/picasso/j;->l:Lcom/squareup/picasso/m;

    iget-object v0, p0, Lcom/squareup/picasso/j;->l:Lcom/squareup/picasso/m;

    invoke-virtual {v0}, Lcom/squareup/picasso/m;->a()V

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/d;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/d;

    iget-object v0, v0, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/d;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_34

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-static {v0}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_3c
    const-string v0, "Dispatcher"

    const-string v2, "delivered"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private b(Lcom/squareup/picasso/a;)V
    .registers 4

    iget-object v0, p1, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/squareup/picasso/a;->i:Z

    iget-object v1, p0, Lcom/squareup/picasso/j;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method private d(Lcom/squareup/picasso/d;)V
    .registers 6

    iget-object v0, p1, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/a;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/squareup/picasso/j;->b(Lcom/squareup/picasso/a;)V

    :cond_7
    iget-object v2, p1, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    if-eqz v2, :cond_20

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_20

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a;

    invoke-direct {p0, v0}, Lcom/squareup/picasso/j;->b(Lcom/squareup/picasso/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_20
    return-void
.end method

.method private e(Lcom/squareup/picasso/d;)V
    .registers 6

    const/4 v3, 0x7

    invoke-virtual {p1}, Lcom/squareup/picasso/d;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/squareup/picasso/j;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7
.end method


# virtual methods
.method final a()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/picasso/j;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/squareup/picasso/j;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/squareup/picasso/j;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/squareup/picasso/j;->h:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v0}, Lcom/squareup/picasso/j;->a(Ljava/util/List;)V

    return-void
.end method

.method final a(Lcom/squareup/picasso/a;)V
    .registers 9

    iget-object v0, p0, Lcom/squareup/picasso/j;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/squareup/picasso/a;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/d;

    if-eqz v0, :cond_6b

    iget-object v1, v0, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->k:Z

    iget-object v2, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;

    iget-object v3, v0, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/a;

    if-nez v3, :cond_46

    iput-object p1, v0, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/a;

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_26
    const-string v0, "Hunter"

    const-string v1, "joined"

    invoke-virtual {v2}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "to empty hunter"

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    const-string v1, "Hunter"

    const-string v3, "joined"

    invoke-virtual {v2}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "to "

    invoke-static {v0, v4}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v2, v0}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_46
    iget-object v3, v0, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    if-nez v3, :cond_52

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    :cond_52
    iget-object v3, v0, Lcom/squareup/picasso/d;->i:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_33

    const-string v1, "Hunter"

    const-string v3, "joined"

    invoke-virtual {v2}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "to "

    invoke-static {v0, v4}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v2, v0}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_6b
    iget-object v0, p0, Lcom/squareup/picasso/j;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v0, :cond_33

    const-string v0, "Dispatcher"

    const-string v1, "ignored"

    iget-object v2, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;

    invoke-virtual {v2}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "because shut down"

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_89
    iget-object v0, p0, Lcom/squareup/picasso/j;->b:Landroid/content/Context;

    iget-object v1, p1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    iget-object v3, p0, Lcom/squareup/picasso/j;->i:Lcom/squareup/picasso/e;

    iget-object v4, p0, Lcom/squareup/picasso/j;->j:Lcom/squareup/picasso/af;

    iget-object v6, p0, Lcom/squareup/picasso/j;->d:Lcom/squareup/picasso/Downloader;

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/squareup/picasso/d;->a(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/d;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/picasso/j;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/picasso/d;->k:Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/squareup/picasso/j;->e:Ljava/util/Map;

    iget-object v2, p1, Lcom/squareup/picasso/a;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/squareup/picasso/j;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v0, :cond_33

    const-string v0, "Dispatcher"

    const-string v1, "enqueued"

    iget-object v2, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;

    invoke-virtual {v2}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method final a(Lcom/squareup/picasso/d;)V
    .registers 5

    iget-object v0, p0, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final a(Lcom/squareup/picasso/d;Z)V
    .registers 8

    iget-object v0, p1, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v0, :cond_24

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {p1}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/d;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "for error"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2f

    const-string v0, " (will replay)"

    :goto_19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/squareup/picasso/j;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/squareup/picasso/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/squareup/picasso/j;->e(Lcom/squareup/picasso/d;)V

    return-void

    :cond_2f
    const-string v0, ""

    goto :goto_19
.end method

.method final b(Lcom/squareup/picasso/d;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/squareup/picasso/d;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/squareup/picasso/j;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1, v2}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/d;Z)V

    goto :goto_8

    :cond_15
    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/squareup/picasso/j;->m:Z

    if-eqz v3, :cond_7a

    iget-object v0, p0, Lcom/squareup/picasso/j;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-static {v0, v3}, Lcom/squareup/picasso/am;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v3, v0

    :goto_29
    if-eqz v3, :cond_4d

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v1

    :goto_32
    iget-boolean v4, p0, Lcom/squareup/picasso/j;->n:Z

    invoke-virtual {p1, v3}, Lcom/squareup/picasso/d;->a(Landroid/net/NetworkInfo;)Z

    move-result v3

    invoke-virtual {p1}, Lcom/squareup/picasso/d;->c()Z

    move-result v4

    if-nez v3, :cond_51

    iget-boolean v0, p0, Lcom/squareup/picasso/j;->m:Z

    if-eqz v0, :cond_4f

    if-eqz v4, :cond_4f

    :goto_44
    invoke-virtual {p0, p1, v1}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/d;Z)V

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/squareup/picasso/j;->d(Lcom/squareup/picasso/d;)V

    goto :goto_8

    :cond_4d
    move v0, v2

    goto :goto_32

    :cond_4f
    move v1, v2

    goto :goto_44

    :cond_51
    iget-boolean v1, p0, Lcom/squareup/picasso/j;->m:Z

    if-eqz v1, :cond_57

    if-eqz v0, :cond_71

    :cond_57
    iget-object v0, p1, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v0, :cond_68

    const-string v0, "Dispatcher"

    const-string v1, "retrying"

    invoke-static {p1}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    iget-object v0, p0, Lcom/squareup/picasso/j;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/squareup/picasso/d;->k:Ljava/util/concurrent/Future;

    goto :goto_8

    :cond_71
    invoke-virtual {p0, p1, v4}, Lcom/squareup/picasso/j;->a(Lcom/squareup/picasso/d;Z)V

    if-eqz v4, :cond_8

    invoke-direct {p0, p1}, Lcom/squareup/picasso/j;->d(Lcom/squareup/picasso/d;)V

    goto :goto_8

    :cond_7a
    move-object v3, v0

    goto :goto_29
.end method

.method final c(Lcom/squareup/picasso/d;)V
    .registers 6

    iget-boolean v0, p1, Lcom/squareup/picasso/d;->g:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/squareup/picasso/j;->i:Lcom/squareup/picasso/e;

    iget-object v1, p1, Lcom/squareup/picasso/d;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/squareup/picasso/d;->j:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/squareup/picasso/e;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_d
    iget-object v0, p0, Lcom/squareup/picasso/j;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/squareup/picasso/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/squareup/picasso/j;->e(Lcom/squareup/picasso/d;)V

    iget-object v0, p1, Lcom/squareup/picasso/d;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->k:Z

    if-eqz v0, :cond_2a

    const-string v0, "Dispatcher"

    const-string v1, "batched"

    invoke-static {p1}, Lcom/squareup/picasso/am;->a(Lcom/squareup/picasso/d;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "for completion"

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method
