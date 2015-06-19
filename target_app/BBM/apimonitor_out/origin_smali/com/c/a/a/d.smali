.class final Lcom/c/a/a/d;
.super Landroid/os/Handler;
.source "AnalyticsMessages.java"


# instance fields
.field final synthetic a:Lcom/c/a/a/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Lcom/c/a/a/g;


# direct methods
.method public constructor <init>(Lcom/c/a/a/b;)V
    .registers 8

    const-wide/32 v4, 0xa4cb800

    iput-object p1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "https://api.mixpanel.com"

    iput-object v0, p0, Lcom/c/a/a/d;->b:Ljava/lang/String;

    const-string v0, "http://api.mixpanel.com"

    iput-object v0, p0, Lcom/c/a/a/d;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    iget-object v0, p1, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    invoke-static {v0}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/a/a;->b(Landroid/content/Context;)Lcom/c/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/d;->d:Lcom/c/a/a/g;

    iget-object v0, p0, Lcom/c/a/a/d;->d:Lcom/c/a/a/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    sget-object v3, Lcom/c/a/a/i;->a:Lcom/c/a/a/i;

    invoke-virtual {v0, v1, v2, v3}, Lcom/c/a/a/g;->a(JLcom/c/a/a/i;)V

    iget-object v0, p0, Lcom/c/a/a/d;->d:Lcom/c/a/a/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    sget-object v3, Lcom/c/a/a/i;->b:Lcom/c/a/a/i;

    invoke-virtual {v0, v1, v2, v3}, Lcom/c/a/a/g;->a(JLcom/c/a/a/i;)V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v0, v0, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    const-string v1, "Sending records to Mixpanel"

    invoke-static {v0, v1}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    sget-object v0, Lcom/c/a/a/i;->a:Lcom/c/a/a/i;

    const-string v1, "/track?ip=1"

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/i;Ljava/lang/String;)V

    sget-object v0, Lcom/c/a/a/i;->b:Lcom/c/a/a/i;

    const-string v1, "/engage"

    invoke-direct {p0, v0, v1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/i;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/c/a/a/i;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/c/a/a/d;->d:Lcom/c/a/a/g;

    invoke-virtual {v0, p1}, Lcom/c/a/a/g;->a(Lcom/c/a/a/i;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b5

    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v2, v0, v5

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v0, v0, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    iget-object v0, p0, Lcom/c/a/a/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/c/a/a/d;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/a/e;

    move-result-object v3

    invoke-static {v2}, Lcom/c/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "data"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/c/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Lcom/c/a/a/f;

    move-result-object v0

    sget-object v5, Lcom/c/a/a/f;->b:Lcom/c/a/a/f;

    if-ne v0, v5, :cond_63

    iget-object v5, v3, Lcom/c/a/a/e;->b:Ljava/lang/String;

    if-eqz v5, :cond_63

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/c/a/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/util/List;)Lcom/c/a/a/f;

    move-result-object v0

    :cond_63
    sget-object v3, Lcom/c/a/a/f;->a:Lcom/c/a/a/f;

    if-ne v0, v3, :cond_b6

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v0, v0, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Posted to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v0, v0, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sent Message\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    :cond_93
    iget-object v2, p0, Lcom/c/a/a/d;->d:Lcom/c/a/a/g;

    iget-object v3, p1, Lcom/c/a/a/i;->c:Ljava/lang/String;

    :try_start_97
    iget-object v0, v2, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id <= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_97 .. :try_end_b0} :catchall_f6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_97 .. :try_end_b0} :catch_d0

    iget-object v0, v2, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->close()V

    :cond_b5
    :goto_b5
    return-void

    :cond_b6
    sget-object v2, Lcom/c/a/a/f;->b:Lcom/c/a/a/f;

    if-ne v0, v2, :cond_93

    invoke-static {}, Lcom/c/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/d;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_b5

    invoke-static {}, Lcom/c/a/a/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-wide v1, v1, Lcom/c/a/a/b;->c:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/c/a/a/d;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b5

    :catch_d0
    move-exception v0

    :try_start_d1
    const-string v1, "MixpanelAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cleanupEvents "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by id FAILED. Deleting DB."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v2, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->a()V
    :try_end_f0
    .catchall {:try_start_d1 .. :try_end_f0} :catchall_f6

    iget-object v0, v2, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->close()V

    goto :goto_b5

    :catchall_f6
    move-exception v0

    iget-object v1, v2, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v1}, Lcom/c/a/a/h;->close()V

    throw v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_2
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/c/a/a/a;->a()I

    move-result v3

    if-ne v2, v3, :cond_4a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v2, v2, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Changing flush interval to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/c/a/a/b;->c:J

    invoke-static {}, Lcom/c/a/a/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/c/a/a/d;->removeMessages(I)V

    move v0, v1

    :goto_34
    const/16 v1, 0x28

    if-lt v0, v1, :cond_1ab

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v0, v0, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    const-string v1, "Flushing queue due to bulk upload limit"

    invoke-static {v0, v1}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    invoke-static {v0}, Lcom/c/a/a/b;->a(Lcom/c/a/a/b;)V

    invoke-direct {p0}, Lcom/c/a/a/d;->a()V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/c/a/a/a;->c()I

    move-result v3

    if-ne v2, v3, :cond_79

    iget-object v2, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v2, v2, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting endpoint API host to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/c/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_72

    :goto_6e
    iput-object v0, p0, Lcom/c/a/a/d;->b:Ljava/lang/String;

    move v0, v1

    goto :goto_34

    :cond_72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :cond_79
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/c/a/a/a;->d()I

    move-result v3

    if-ne v2, v3, :cond_a8

    iget-object v2, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v2, v2, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting fallback API host to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/c/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_a1

    :goto_9d
    iput-object v0, p0, Lcom/c/a/a/d;->c:Ljava/lang/String;

    move v0, v1

    goto :goto_34

    :cond_a1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    :cond_a8
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/c/a/a/a;->e()I

    move-result v2

    if-ne v0, v2, :cond_e1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v1, v1, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    const-string v2, "Queuing people record for sending later"

    invoke-static {v1, v2}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v1, v1, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/a/a/d;->d:Lcom/c/a/a/g;

    sget-object v2, Lcom/c/a/a/i;->b:Lcom/c/a/a/i;

    invoke-virtual {v1, v0, v2}, Lcom/c/a/a/g;->a(Lorg/json/JSONObject;Lcom/c/a/a/i;)I

    move-result v0

    goto/16 :goto_34

    :cond_e1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/c/a/a/a;->f()I

    move-result v2

    if-ne v0, v2, :cond_11a

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v1, v1, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    const-string v2, "Queuing event for sending later"

    invoke-static {v1, v2}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v1, v1, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/a/a/d;->d:Lcom/c/a/a/g;

    sget-object v2, Lcom/c/a/a/i;->a:Lcom/c/a/a/i;

    invoke-virtual {v1, v0, v2}, Lcom/c/a/a/g;->a(Lorg/json/JSONObject;Lcom/c/a/a/i;)I

    move-result v0

    goto/16 :goto_34

    :cond_11a
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/c/a/a/a;->b()I

    move-result v2

    if-ne v0, v2, :cond_136

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v0, v0, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    const-string v2, "Flushing queue due to scheduled or forced flush"

    invoke-static {v0, v2}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    invoke-static {v0}, Lcom/c/a/a/b;->a(Lcom/c/a/a/b;)V

    invoke-direct {p0}, Lcom/c/a/a/d;->a()V

    move v0, v1

    goto/16 :goto_34

    :cond_136
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/c/a/a/a;->g()I

    move-result v2

    if-ne v0, v2, :cond_194

    const-string v0, "MixpanelAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Worker recieved a hard kill. Dumping all events and force-killing. Thread id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v2, v0, Lcom/c/a/a/b;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_15f} :catch_179

    :try_start_15f
    iget-object v0, p0, Lcom/c/a/a/d;->d:Lcom/c/a/a/g;

    iget-object v0, v0, Lcom/c/a/a/g;->a:Lcom/c/a/a/h;

    invoke-virtual {v0}, Lcom/c/a/a/h;->a()V

    iget-object v0, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/c/a/a/b;->b:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    monitor-exit v2
    :try_end_173
    .catchall {:try_start_15f .. :try_end_173} :catchall_176

    move v0, v1

    goto/16 :goto_34

    :catchall_176
    move-exception v0

    :try_start_177
    monitor-exit v2

    throw v0
    :try_end_179
    .catch Ljava/lang/RuntimeException; {:try_start_177 .. :try_end_179} :catch_179

    :catch_179
    move-exception v0

    const-string v1, "MixpanelAPI"

    const-string v2, "Worker threw an unhandled exception- will not send any more mixpanel messages"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v2, v1, Lcom/c/a/a/b;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_186
    iget-object v1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/c/a/a/b;->b:Landroid/os/Handler;
    :try_end_18b
    .catchall {:try_start_186 .. :try_end_18b} :catchall_1f1

    :try_start_18b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_192
    .catchall {:try_start_18b .. :try_end_192} :catchall_1f1
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_192} :catch_1e8

    :goto_192
    :try_start_192
    monitor-exit v2
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_1f1

    throw v0

    :cond_194
    :try_start_194
    const-string v0, "MixpanelAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected message recieved by Mixpanel worker: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_34

    :cond_1ab
    if-lez v0, :cond_49

    invoke-static {}, Lcom/c/a/a/a;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/c/a/a/d;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-object v1, v1, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Queue depth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - Adding flush in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-wide v2, v2, Lcom/c/a/a/b;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/c/a/a/a;->a(Lcom/c/a/a/a;Ljava/lang/String;)V

    invoke-static {}, Lcom/c/a/a/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/a/d;->a:Lcom/c/a/a/b;

    iget-wide v1, v1, Lcom/c/a/a/b;->c:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/c/a/a/d;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1e6
    .catch Ljava/lang/RuntimeException; {:try_start_194 .. :try_end_1e6} :catch_179

    goto/16 :goto_49

    :catch_1e8
    move-exception v1

    :try_start_1e9
    const-string v3, "MixpanelAPI"

    const-string v4, "Could not halt looper"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f0
    .catchall {:try_start_1e9 .. :try_end_1f0} :catchall_1f1

    goto :goto_192

    :catchall_1f1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
