.class Lcom/umeng/analytics/b;
.super Lcom/umeng/analytics/d;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private final n:I

.field private final o:I

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:J

.field private final t:I

.field private final u:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/umeng/analytics/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/b;->n:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/b;->o:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/umeng/analytics/b;->b:Ljava/lang/String;

    const-string/jumbo v0, "start_millis"

    iput-object v0, p0, Lcom/umeng/analytics/b;->p:Ljava/lang/String;

    const-string/jumbo v0, "end_millis"

    iput-object v0, p0, Lcom/umeng/analytics/b;->q:Ljava/lang/String;

    const-string/jumbo v0, "last_fetch_location_time"

    iput-object v0, p0, Lcom/umeng/analytics/b;->r:Ljava/lang/String;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/umeng/analytics/b;->s:J

    const/16 v0, 0x80

    iput v0, p0, Lcom/umeng/analytics/b;->t:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/umeng/analytics/b;->u:I

    return-void
.end method

.method private a(Landroid/content/Context;J)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Ljava/lang/String;

    if-nez v0, :cond_29

    invoke-static {p1}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/common/util/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Ljava/lang/String;

    goto :goto_8
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/umeng/analytics/f;->i:Z

    if-eqz v2, :cond_19

    const-string/jumbo v2, "last_fetch_location_time"

    const-wide/16 v3, 0x0

    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-static {p1, p2}, Lcom/umeng/analytics/a/o;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string/jumbo v3, "last_fetch_location_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_19
.end method

.method static synthetic a(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Z
    .registers 6

    const-string/jumbo v0, "end_millis"

    const-wide/16 v1, -0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-wide v2, Lcom/umeng/analytics/f;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/analytics/a/h;

    invoke-direct {v3, p1, v2}, Lcom/umeng/analytics/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/analytics/a/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/m;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v5, v3}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/h;)V

    iget-object v3, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v3, v4}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/m;)V

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "session_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "start_millis"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "end_millis"

    const-wide/16 v4, -0x1

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    return-object v2
.end method

.method static synthetic b(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "start_millis"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "end_millis"

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    sget-boolean v0, Lcom/umeng/analytics/f;->m:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p1, p2}, Lcom/umeng/analytics/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/j;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/j;->a(Ljava/lang/Long;)V

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/j;->a(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_9

    :catch_1d
    move-exception v0

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "exception in save event begin info"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    :try_start_1
    sget-boolean v1, Lcom/umeng/analytics/f;->m:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v1, p2}, Lcom/umeng/analytics/c;->b(Ljava/lang/String;)J

    move-result-wide v1

    :goto_b
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    long-to-int v0, v0

    :cond_18
    :goto_18
    return v0

    :cond_19
    invoke-static {p1, p2}, Lcom/umeng/analytics/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/j;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_26

    move-result-wide v1

    goto :goto_b

    :catch_26
    move-exception v1

    const-string/jumbo v2, "MobclickAgent"

    const-string/jumbo v3, "exception in get event duration"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18
.end method

.method private h(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_c

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Ljava/lang/String;

    goto :goto_b
.end method

.method private declared-synchronized i(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2e

    move-result-object v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    const-string/jumbo v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start new session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2e

    goto :goto_7

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_31
    :try_start_31
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    const-string/jumbo v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Extend current session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_2e

    goto :goto_7
.end method

.method private declared-synchronized j(Landroid/content/Context;)V
    .registers 10

    const-wide/16 v4, -0x1

    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_29

    move-result-object v0

    if-nez v0, :cond_b

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    const-string/jumbo v1, "start_millis"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2c

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "onEndSession called before onStartSession"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_29

    goto :goto_9

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2c
    :try_start_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/umeng/analytics/b;->l:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/umeng/analytics/a/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;JJ)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "start_millis"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "end_millis"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_29

    goto :goto_21
.end method


# virtual methods
.method a()V
    .registers 1

    return-void
.end method

.method a(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_c

    :try_start_2
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "onPause() called without context from corresponding onResume()"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    goto :goto_b

    :catch_26
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_b

    :cond_31
    :try_start_31
    new-instance v0, Lcom/umeng/analytics/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/umeng/analytics/b$a;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/umeng/analytics/b$a;->start()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_26

    goto :goto_b
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    if-nez p1, :cond_13

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "unexpected null context in reportError"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    new-instance v1, Lcom/umeng/analytics/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/d;)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V

    goto :goto_6
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_12

    const/16 v0, 0x80

    invoke-virtual {p0, p2, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x100

    invoke-virtual {p0, p3, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_12
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "invalid params in onEventBegin"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_tl"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 14

    if-eqz p1, :cond_c

    const/16 v0, 0x80

    :try_start_4
    invoke-virtual {p0, p2, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    if-gtz p6, :cond_16

    :cond_c
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "invalid params in onEvent"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    if-nez v0, :cond_2f

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "can\'t call onEvent before session is initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_24

    goto :goto_15

    :catch_24
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15

    :cond_2f
    if-eqz p3, :cond_43

    const/16 v0, 0x100

    :try_start_33
    invoke-virtual {p0, p3, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_43

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "invalid label in onEvent"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_43
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_51} :catch_24

    goto :goto_15
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_8
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "invalid params in onKVEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0, p3}, Lcom/umeng/analytics/b;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    if-nez v0, :cond_31

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "can\'t call onEvent before session is initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_26

    goto :goto_11

    :catch_26
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_26

    goto :goto_11
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_e
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "invalid params in onKVEventBegin"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0, p3}, Lcom/umeng/analytics/b;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_17

    :try_start_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v1, v0, p3}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_39} :catch_3a

    goto :goto_17

    :catch_3a
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "exception in save k-v event begin inof"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_17
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    new-instance v1, Lcom/umeng/analytics/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/a/d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/d;)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V

    goto :goto_4
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/a/f;

    iput-object p1, v0, Lcom/umeng/analytics/a/f;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/a/f;

    iput-object p2, v0, Lcom/umeng/analytics/a/f;->z:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_3

    if-gt v1, p2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method a(Ljava/util/Map;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_a
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "map is null or empty in onEvent"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_14
    return v0

    :cond_15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v3

    goto :goto_14

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {p0, v1, v5}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x100

    invoke-virtual {p0, v1, v5}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_47
    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v4, "invalid key-<%s> or value-<%s> "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_14
.end method

.method b()V
    .registers 1

    return-void
.end method

.method b(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)V

    new-instance v0, Lcom/umeng/analytics/b$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/umeng/analytics/b$a;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/umeng/analytics/b$a;->start()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_a

    const/16 v0, 0x80

    invoke-virtual {p0, p2, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_a
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "invalid params in onEventBegin"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-eqz p1, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_8
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "invalid params in onEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_tl"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_36

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "event duration less than 0 in onEvnetEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_36
    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_11
.end method

.method public b(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    new-instance v1, Lcom/umeng/analytics/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/a/d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/d;)V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method c(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in Mobclick.flush(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_8
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "input Context is null or event_id is empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_32

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "event duration less than 0 in onEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_32
    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_11
.end method

.method c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    if-eqz p1, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_e
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "invalid params in onKVEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_39

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "event duration less than 0 in onEvnetEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_39
    iget-object v2, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/c;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    int-to-long v4, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_17
.end method

.method d(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
