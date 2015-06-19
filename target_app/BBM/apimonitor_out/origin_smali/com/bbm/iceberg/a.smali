.class public final Lcom/bbm/iceberg/a;
.super Ljava/lang/Object;
.source "IcebergFetcher.java"


# instance fields
.field a:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Lcom/bbm/util/cr",
            "<",
            "Lcom/bbm/iceberg/i;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Lcom/blackberry/a/c;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/content/Context;

.field final f:Lcom/bbm/d;

.field g:Ljava/lang/String;

.field final h:Lcom/bbm/util/dc;

.field i:Z

.field j:I

.field k:I

.field private final l:Ljava/util/concurrent/Executor;

.field private m:Z

.field private n:I

.field private final o:Ljava/lang/String;

.field private final p:Lcom/bbm/j/k;

.field private final q:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Lcom/bbm/iceberg/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d;Ljava/util/concurrent/Executor;Lcom/bbm/util/dc;)V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v2

    iput-object v2, p0, Lcom/bbm/iceberg/a;->a:Lcom/google/b/a/l;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bbm/iceberg/a;->b:Ljava/util/List;

    iput-boolean v1, p0, Lcom/bbm/iceberg/a;->m:Z

    const/16 v2, 0x19

    iput v2, p0, Lcom/bbm/iceberg/a;->n:I

    const-string v2, ""

    iput-object v2, p0, Lcom/bbm/iceberg/a;->o:Ljava/lang/String;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v2

    iput-object v2, p0, Lcom/bbm/iceberg/a;->d:Lcom/google/b/a/l;

    new-instance v2, Lcom/bbm/iceberg/b;

    invoke-direct {v2, p0}, Lcom/bbm/iceberg/b;-><init>(Lcom/bbm/iceberg/a;)V

    iput-object v2, p0, Lcom/bbm/iceberg/a;->p:Lcom/bbm/j/k;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bbm/iceberg/a;->g:Ljava/lang/String;

    iput v0, p0, Lcom/bbm/iceberg/a;->j:I

    iput v1, p0, Lcom/bbm/iceberg/a;->k:I

    new-instance v2, Lcom/bbm/util/cr;

    new-instance v3, Lcom/bbm/iceberg/s;

    invoke-direct {v3, v1, v1}, Lcom/bbm/iceberg/s;-><init>(II)V

    invoke-direct {v2, v3}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bbm/iceberg/a;->q:Lcom/bbm/util/cr;

    iput-object p3, p0, Lcom/bbm/iceberg/a;->l:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/bbm/iceberg/a;->f:Lcom/bbm/d;

    iput-object p4, p0, Lcom/bbm/iceberg/a;->h:Lcom/bbm/util/dc;

    iget-object v2, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_iceberg_upload"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xe

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_71

    :goto_6b
    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/bbm/iceberg/a;->b()V

    :cond_70
    return-void

    :cond_71
    move v0, v1

    goto :goto_6b
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v4, v3

    move v1, v3

    :goto_11
    if-ge v4, v7, :cond_82

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7e

    const-string v2, "attributes"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    move v2, v3

    :goto_24
    if-ge v2, v9, :cond_7e

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_a7

    const-string v0, "kind"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "instant_messaging"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "subkind"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "bbm_pin"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "sources"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v11, "value"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_68

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    const-string v11, "value"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    :goto_79
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_24

    :cond_7e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_11

    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LCE: Processed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " enhancements and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v5

    :cond_a7
    move v0, v1

    goto :goto_79
.end method


# virtual methods
.method final a()Lcom/bbm/util/cr;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/util/cr",
            "<",
            "Lcom/bbm/iceberg/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/iceberg/a;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_4a

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iceberg.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/util/cr;

    new-instance v2, Lcom/bbm/iceberg/i;

    invoke-direct {v2}, Lcom/bbm/iceberg/i;-><init>()V

    invoke-direct {v1, v2}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/iceberg/a;->a:Lcom/google/b/a/l;

    iget-object v1, p0, Lcom/bbm/iceberg/a;->l:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/bbm/iceberg/c;

    invoke-direct {v2, p0, v0}, Lcom/bbm/iceberg/c;-><init>(Lcom/bbm/iceberg/a;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4a
    iget-object v0, p0, Lcom/bbm/iceberg/a;->a:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/cr;

    return-object v0
.end method

.method final a(II)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/iceberg/a;->q:Lcom/bbm/util/cr;

    new-instance v1, Lcom/bbm/iceberg/s;

    invoke-direct {v1, p1, p2}, Lcom/bbm/iceberg/s;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/bbm/iceberg/i;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "iceberg.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/iceberg/a;->l:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/bbm/iceberg/h;

    invoke-direct {v2, p0, v1, p1}, Lcom/bbm/iceberg/h;-><init>(Lcom/bbm/iceberg/a;Ljava/io/File;Lcom/bbm/iceberg/i;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bbm/iceberg/a;->c()Lcom/bbm/iceberg/i;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/iceberg/i;->a(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v4

    sget-object v5, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v4, v5, :cond_d

    iget-object v4, p0, Lcom/bbm/iceberg/a;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/bbm/iceberg/a;->j:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/bbm/iceberg/a;->j:I

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_31
    invoke-virtual {p0}, Lcom/bbm/iceberg/a;->d()V

    invoke-virtual {p0}, Lcom/bbm/iceberg/a;->a()Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/bbm/iceberg/i;->a(Ljava/util/Map;)Lcom/bbm/iceberg/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget v0, p0, Lcom/bbm/iceberg/a;->k:I

    iget v1, p0, Lcom/bbm/iceberg/a;->j:I

    invoke-virtual {p0, v0, v1}, Lcom/bbm/iceberg/a;->a(II)V

    return-void
.end method

.method public final b()V
    .registers 3

    new-instance v0, Lcom/bbm/iceberg/i;

    invoke-direct {v0}, Lcom/bbm/iceberg/i;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/iceberg/a;->a(Lcom/bbm/iceberg/i;)V

    invoke-virtual {p0}, Lcom/bbm/iceberg/a;->a()Lcom/bbm/util/cr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Lcom/bbm/iceberg/i;
    .registers 2

    invoke-virtual {p0}, Lcom/bbm/iceberg/a;->a()Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/iceberg/i;

    return-object v0
.end method

.method final d()V
    .registers 10

    const/high16 v4, 0x800

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/bbm/iceberg/a;->a()Lcom/bbm/util/cr;

    iget-boolean v0, p0, Lcom/bbm/iceberg/a;->i:Z

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/bbm/iceberg/a;->c()Lcom/bbm/iceberg/i;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/iceberg/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/af;->p()Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_iceberg_upload"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    const-class v3, Lcom/bbm/iceberg/ContactsManagerUpdates;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    invoke-static {v2, v7, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xe

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v7, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LCE: Scheduled next iceberg pull at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_75
    :goto_75
    iget-boolean v0, p0, Lcom/bbm/iceberg/a;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bbm/iceberg/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/bbm/iceberg/a;->m:Z

    if-nez v0, :cond_8c

    iput-boolean v8, p0, Lcom/bbm/iceberg/a;->m:Z

    iget-object v0, p0, Lcom/bbm/iceberg/a;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_8c
    iget-object v0, p0, Lcom/bbm/iceberg/a;->d:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/bbm/iceberg/a;->n:I

    if-ge v0, v2, :cond_e0

    iget-object v0, p0, Lcom/bbm/iceberg/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e0

    iget-object v0, p0, Lcom/bbm/iceberg/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    :cond_bc
    iget-object v0, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    const-class v3, Lcom/bbm/iceberg/ContactsManagerUpdates;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/bbm/iceberg/a;->e:Landroid/content/Context;

    invoke-static {v2, v7, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "LCE: Canceled scheduled iceberg pull"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_75

    :cond_e0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Iceberg results: About to do next batch of fetches. Queue size = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/iceberg/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", batch size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/iceberg/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12c

    const/16 v0, 0x19

    iput v0, p0, Lcom/bbm/iceberg/a;->n:I

    :goto_114
    iget-object v0, p0, Lcom/bbm/iceberg/a;->d:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blackberry/a/c;

    iget-object v2, p0, Lcom/bbm/iceberg/a;->h:Lcom/bbm/util/dc;

    iput-boolean v8, p0, Lcom/bbm/iceberg/a;->c:Z

    iget-object v3, p0, Lcom/bbm/iceberg/a;->l:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/bbm/iceberg/e;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/bbm/iceberg/e;-><init>(Lcom/bbm/iceberg/a;Ljava/util/List;Lcom/blackberry/a/c;Lcom/bbm/util/dc;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_12c
    iget v0, p0, Lcom/bbm/iceberg/a;->n:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bbm/iceberg/a;->n:I

    goto :goto_114
.end method
