.class public final Lcom/instagram/android/feed/e/a;
.super Ljava/lang/Object;
.source "DelayedMediaPlacer.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/creation/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instagram/android/feed/e/e;

.field private c:I

.field private d:Lcom/instagram/android/feed/e/d;

.field private e:Lcom/instagram/common/c/h;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/instagram/android/feed/e/e;Lcom/instagram/android/feed/e/d;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/android/feed/e/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/e/b;-><init>(Lcom/instagram/android/feed/e/a;)V

    iput-object v0, p0, Lcom/instagram/android/feed/e/a;->f:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    iput p2, p0, Lcom/instagram/android/feed/e/a;->c:I

    iput-object p3, p0, Lcom/instagram/android/feed/e/a;->b:Lcom/instagram/android/feed/e/e;

    iput-object p4, p0, Lcom/instagram/android/feed/e/a;->d:Lcom/instagram/android/feed/e/d;

    new-instance v0, Lcom/instagram/common/c/j;

    invoke-direct {v0, p1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;

    move-result-object v0

    const-string v1, "PendingMediaStore.INTENT_ACTION_PENDING_MEDIA_CHANGED"

    new-instance v2, Lcom/instagram/android/feed/e/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/android/feed/e/c;-><init>(Lcom/instagram/android/feed/e/a;B)V

    invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/e/a;->e:Lcom/instagram/common/c/h;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/e/a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/feed/e/a;Lcom/instagram/creation/b/a/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/e/a;->b(Lcom/instagram/creation/b/a/b;)V

    return-void
.end method

.method private a(Lcom/instagram/creation/b/a/b;)V
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pending_media_key"

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/android/feed/e/a;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {p1}, Lcom/instagram/creation/video/l/j;->a(Lcom/instagram/creation/b/a/b;)V

    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/feed/e/a;)Lcom/instagram/android/feed/e/d;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->d:Lcom/instagram/android/feed/e/d;

    return-object v0
.end method

.method private b(Lcom/instagram/creation/b/a/b;)V
    .registers 5

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/e/a;->b:Lcom/instagram/android/feed/e/e;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/instagram/android/feed/e/e;->a(Lcom/instagram/feed/d/l;Z)V

    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    invoke-direct {p0}, Lcom/instagram/android/feed/e/a;->d()V

    iget v0, p0, Lcom/instagram/android/feed/e/a;->c:I

    sget v1, Lcom/instagram/creation/b/d/b;->b:I

    if-ne v0, v1, :cond_33

    invoke-static {}, Lcom/instagram/creation/b/c/a;->a()Z

    :cond_33
    return-void
.end method

.method private d()V
    .registers 6

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/feed/e/a;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/d/a;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v3

    sget-object v4, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-ne v3, v4, :cond_e

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/e/a;->a(Lcom/instagram/creation/b/a/b;)V

    goto :goto_e

    :cond_26
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    if-eqz v0, :cond_30

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_48
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->b:Lcom/instagram/android/feed/e/e;

    invoke-interface {v0, v1}, Lcom/instagram/android/feed/e/e;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->e:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V

    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_37

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/instagram/android/feed/e/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/e/a;->b(Lcom/instagram/creation/b/a/b;)V

    goto :goto_21

    :cond_37
    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/e/a;->e:Lcom/instagram/common/c/h;

    invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V

    invoke-direct {p0}, Lcom/instagram/android/feed/e/a;->d()V

    return-void
.end method

.method public final c()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/feed/e/a;->d()V

    return-void
.end method
