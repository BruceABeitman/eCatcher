.class public final Lcom/lenovo/lps/reaper/sdk/message/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lenovo/lps/reaper/sdk/message/e;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private d:Landroid/content/Context;

.field private e:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

.field private f:J

.field private g:I

.field private h:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/e;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/message/e;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/message/e;->a:Lcom/lenovo/lps/reaper/sdk/message/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->g:I

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/message/e;
    .registers 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/message/e;->a:Lcom/lenovo/lps/reaper/sdk/message/e;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 8

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->f:J

    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->g:I

    const-string/jumbo v0, "Msg"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->h:Landroid/content/SharedPreferences;

    :try_start_12
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "\u0001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    if-eqz v3, :cond_25

    if-eqz v0, :cond_25

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v5, Lcom/lenovo/lps/reaper/sdk/message/a;

    invoke-direct {v5, v1, v3, v0}, Lcom/lenovo/lps/reaper/sdk/message/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_62} :catch_63

    goto :goto_25

    :catch_63
    move-exception v0

    const-string/jumbo v1, "MsgManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->d:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->e:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_b

    :cond_8
    :goto_8
    if-nez v0, :cond_1f

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string/jumbo v2, "PushGlobalMessage"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string/jumbo v2, "PushAppMessage"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1d
    move v0, v1

    goto :goto_8

    :cond_1f
    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->g:I

    :try_start_21
    const-string/jumbo v0, "\u0001"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "PushGlobalMessage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string/jumbo v0, "\u0001"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    array-length v1, v0

    if-le v1, v5, :cond_99

    const/4 v1, 0x3

    aget-object v5, v0, v1

    :goto_67
    array-length v1, v0

    if-le v1, v6, :cond_9d

    const/4 v1, 0x4

    aget-object v6, v0, v1

    :goto_6d
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/c;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->d:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/lps/reaper/sdk/message/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/c;->a()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_77} :catch_78

    goto :goto_a

    :catch_78
    move-exception v0

    const-string/jumbo v1, "MsgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message parse error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_99
    :try_start_99
    const-string/jumbo v5, ""

    goto :goto_67

    :cond_9d
    const-string/jumbo v6, ""

    goto :goto_6d

    :cond_a1
    const-string/jumbo v0, "\u0001"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    const/4 v1, 0x3

    aget-object v5, v0, v1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/b;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->e:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/lps/reaper/sdk/message/b;-><init>(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/b;->a()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_c2} :catch_78

    goto/16 :goto_a
.end method

.method public final a(Ljava/util/List;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/message/a;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_30

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_30
    move-exception v0

    const-string/jumbo v1, "MsgManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public final b()V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/s;->a()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->e:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    if-nez v0, :cond_5b

    move v0, v1

    :goto_18
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/message/e;->e()Z

    move-result v3

    if-nez v3, :cond_49

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/lps/reaper/sdk/a/a;->h()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5d

    move v3, v2

    :goto_2f
    if-eqz v3, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->f:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    sget-object v5, Lcom/lenovo/lps/reaper/sdk/b/k;->a:[J

    iget v6, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->g:I

    aget-wide v5, v5, v6

    cmp-long v3, v3, v5

    if-lez v3, :cond_5f

    :goto_45
    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    :cond_49
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c/n;->a()Lcom/lenovo/lps/reaper/sdk/c/n;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Lcom/lenovo/lps/reaper/sdk/c/d;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/lenovo/lps/reaper/sdk/c/d;-><init>(Lcom/lenovo/lps/reaper/sdk/g/b;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/c/n;->a(ILjava/lang/Runnable;)V

    goto :goto_8

    :cond_5b
    move v0, v2

    goto :goto_18

    :cond_5d
    move v3, v1

    goto :goto_2f

    :cond_5f
    move v2, v1

    goto :goto_45
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/a;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/message/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :try_start_a
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->h:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u0001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3f} :catch_43

    :goto_3f
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->g:I

    return-void

    :catch_43
    move-exception v0

    const-string/jumbo v1, "MsgManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method public final c()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public final d()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->f:J

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->g:I

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->g:I

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/b/k;->a:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1a

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/k;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->g:I

    :cond_1a
    return-void
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/e;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
