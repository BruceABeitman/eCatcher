.class final Lcom/flurry/android/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J

.field private m:J

.field private n:Lcom/flurry/android/s;

.field private o:Ljava/util/List;

.field private p:Ljava/util/Map;

.field private q:Landroid/os/Handler;

.field private r:Z

.field private transient s:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "market://"

    sput-object v0, Lcom/flurry/android/n;->c:Ljava/lang/String;

    const-string v0, "market://details?id="

    sput-object v0, Lcom/flurry/android/n;->d:Ljava/lang/String;

    const-string v0, "market://search?q=pname:"

    sput-object v0, Lcom/flurry/android/n;->e:Ljava/lang/String;

    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    const-string v0, ""

    sput-object v0, Lcom/flurry/android/n;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/n;->o:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/n;->s:Ljava/util/Map;

    iput-object p1, p0, Lcom/flurry/android/n;->f:Landroid/content/Context;

    iget-object v0, p2, Lcom/flurry/android/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/n;->g:Ljava/lang/String;

    iget-object v0, p2, Lcom/flurry/android/a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/n;->h:Ljava/lang/String;

    iget-object v0, p2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/n;->i:Ljava/lang/String;

    iget-object v0, p2, Lcom/flurry/android/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/n;->j:Ljava/lang/String;

    iget-wide v0, p2, Lcom/flurry/android/a;->c:J

    iput-wide v0, p0, Lcom/flurry/android/n;->k:J

    iget-wide v0, p2, Lcom/flurry/android/a;->d:J

    iput-wide v0, p0, Lcom/flurry/android/n;->l:J

    iget-wide v0, p2, Lcom/flurry/android/a;->e:J

    iput-wide v0, p0, Lcom/flurry/android/n;->m:J

    iget-object v0, p2, Lcom/flurry/android/a;->h:Landroid/os/Handler;

    iput-object v0, p0, Lcom/flurry/android/n;->q:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/flurry/android/s;

    iget-object v1, p0, Lcom/flurry/android/n;->f:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/flurry/android/s;-><init>(Landroid/content/Context;Lcom/flurry/android/a;)V

    iput-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    return-void
.end method

.method private a(Lcom/flurry/android/y;Ljava/lang/Long;)Ljava/lang/String;
    .registers 9

    iget-object v0, p1, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;

    invoke-virtual {p1}, Lcom/flurry/android/y;->a()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?apik="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/n;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/o;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&adid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/o;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/n;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&iid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/n;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/n;->l:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&its="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&hid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/y;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/android/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/android/o;->g:[B

    invoke-static {v0}, Lcom/flurry/android/n;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/flurry/android/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :cond_da
    const-string v0, "&ats="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_e4

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 5

    const/16 v3, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_38

    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    if-ge v2, v3, :cond_28

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_19
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    if-ge v2, v3, :cond_30

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    add-int/lit8 v2, v2, 0x41

    sub-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_30
    add-int/lit8 v2, v2, 0x41

    sub-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->b()Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/flurry/android/s;->a(Ljava/lang/String;)[Lcom/flurry/android/o;

    move-result-object v0

    if-eqz v0, :cond_63

    array-length v1, v0

    if-lez v1, :cond_63

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_4f

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/o;

    iget-wide v2, p0, Lcom/flurry/android/o;->a:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_4f
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, v6, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :cond_63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_15
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 9

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/n;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/flurry/android/n;->m:J

    sub-long/2addr v1, v3

    new-instance v3, Lcom/flurry/android/y;

    const/4 v4, 0x2

    invoke-direct {v3, p2, v4, v1, v2}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;BJ)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/o;

    iput-object v0, v3, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;

    invoke-direct {p0, v3}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/android/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/flurry/android/n;->b(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_2 .. :try_end_53} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_53} :catch_55

    :cond_53
    :goto_53
    monitor-exit p0

    return-void

    :catch_55
    move-exception v0

    :try_start_56
    sget-object v1, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch promotional canvas for hook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_6f

    goto :goto_53

    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/android/n;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/flurry/android/n;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    :try_start_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    sget-object v1, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch Marketplace url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :cond_35
    sget-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected android market url scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private a(Lcom/flurry/android/y;)V
    .registers 5

    iget-object v0, p0, Lcom/flurry/android/n;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_1c

    iget-object v0, p0, Lcom/flurry/android/n;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/flurry/android/n;->s:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/android/y;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/flurry/android/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.flurry.android.ACTION_CATALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "u"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1c

    const-string v1, "o"

    invoke-virtual {p1}, Lcom/flurry/android/y;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/flurry/android/n;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2b

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    sget-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process with responseCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_45

    :cond_43
    move-object v0, p0

    goto :goto_2a

    :catch_45
    move-exception v0

    sget-object v1, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed on url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_2a
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .registers 10

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/n;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/r;

    invoke-virtual {v0, p0}, Lcom/flurry/android/r;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_3e

    :goto_24
    monitor-exit p0

    return-object v0

    :cond_26
    :try_start_26
    sget-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    const-string v1, "No ads from server"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/flurry/android/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_3e

    goto :goto_24

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(J)Lcom/flurry/android/AdImage;
    .registers 4

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/s;->a(J)Lcom/flurry/android/AdImage;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized a(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .registers 7

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/n;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_5b

    move-result v1

    if-eqz v1, :cond_1c

    :cond_19
    move-object v0, v2

    :goto_1a
    monitor-exit p0

    return-object v0

    :cond_1c
    const/4 v1, 0x0

    :try_start_1d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/o;

    new-instance v1, Lcom/flurry/android/y;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v3

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;BJ)V

    iput-object v0, v1, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/android/y;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/Offer;

    iget-object v3, v0, Lcom/flurry/android/o;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;

    invoke-direct {v2, v3, v1, v0}, Lcom/flurry/android/Offer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/AdImage;)V
    :try_end_59
    .catchall {:try_start_1d .. :try_end_59} :catchall_5b

    move-object v0, v2

    goto :goto_1a

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;
    .registers 17

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->b()Z

    move-result v0

    if-eqz v0, :cond_9f

    if-eqz p2, :cond_9f

    invoke-direct {p0, p2, p3}, Lcom/flurry/android/n;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v10, v0

    :goto_22
    if-ge v10, v8, :cond_9c

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0, p3}, Lcom/flurry/android/s;->b(Ljava/lang/String;)Lcom/flurry/android/e;

    move-result-object v4

    if-eqz v4, :cond_80

    new-instance v3, Lcom/flurry/android/y;

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v1

    invoke-direct {v3, p3, v0, v1, v2}, Lcom/flurry/android/y;-><init>(Ljava/lang/String;BJ)V

    invoke-direct {p0, v3}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;)V

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/flurry/android/o;

    iput-object p3, v3, Lcom/flurry/android/y;->b:Lcom/flurry/android/o;

    new-instance v0, Lcom/flurry/android/i;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v5

    invoke-direct {v0, v1, v5, v6}, Lcom/flurry/android/i;-><init>(BJ)V

    invoke-virtual {v3, v0}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V

    new-instance v0, Lcom/flurry/android/r;

    move-object v1, p1

    move-object v2, p0

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/r;-><init>(Landroid/content/Context;Lcom/flurry/android/n;Lcom/flurry/android/y;Lcom/flurry/android/e;IZ)V

    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/flurry/android/n;->a(Lcom/flurry/android/y;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/r;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/android/i;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/flurry/android/i;-><init>(BJ)V

    invoke-virtual {v3, v1}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7c
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_22

    :cond_80
    sget-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find hook: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_1 .. :try_end_98} :catchall_99

    goto :goto_7c

    :catchall_99
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9c
    move-object v0, v9

    :goto_9d
    monitor-exit p0

    return-object v0

    :cond_9f
    :try_start_9f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_99

    move-result-object v0

    goto :goto_9d
.end method

.method final a()V
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->b()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->d()V

    :cond_d
    return-void
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/n;->q:Landroid/os/Handler;

    new-instance v1, Lcom/flurry/android/ab;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/flurry/android/ab;-><init>(Lcom/flurry/android/n;Ljava/lang/String;Landroid/content/Context;Lcom/flurry/android/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/android/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/util/Map;)V
    .registers 3

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0, p1}, Lcom/flurry/android/s;->a(Ljava/util/Map;)V

    return-void
.end method

.method final a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/android/s;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/flurry/android/n;->r:Z

    return-void
.end method

.method final b(J)Lcom/flurry/android/y;
    .registers 5

    iget-object v0, p0, Lcom/flurry/android/n;->s:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/y;

    return-object p0
.end method

.method final b()V
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->e()V

    return-void
.end method

.method final c()J
    .registers 3

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method final d()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Lcom/flurry/android/s;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/n;->o:Ljava/util/List;

    return-object v0
.end method

.method final f()V
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/n;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/flurry/android/n;->r:Z

    return v0
.end method

.method final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method final i()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/n;->m:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final declared-synchronized j()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/n;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final k()Lcom/flurry/android/AdImage;
    .registers 3

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/android/s;->a(S)Lcom/flurry/android/AdImage;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/flurry/android/r;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/flurry/android/r;->a()Lcom/flurry/android/y;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/i;

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/flurry/android/n;->i()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/flurry/android/i;-><init>(BJ)V

    invoke-virtual {v2, v3}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V

    iget-boolean v3, p0, Lcom/flurry/android/n;->r:Z

    if-eqz v3, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/n;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/flurry/android/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/flurry/android/n;->b(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_37

    :goto_27
    monitor-exit p0

    return-void

    :cond_29
    :try_start_29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/n;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/flurry/android/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Lcom/flurry/android/n;->a(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_37

    goto :goto_27

    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/flurry/android/n;->n:Lcom/flurry/android/s;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
