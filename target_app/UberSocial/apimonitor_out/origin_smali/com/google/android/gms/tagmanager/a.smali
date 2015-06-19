.class public Lcom/google/android/gms/tagmanager/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/tagmanager/h;

.field private d:Lcom/google/android/gms/tagmanager/db;

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;

.field private volatile g:J

.field private volatile h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Ljava/lang/String;JLcom/google/android/gms/internal/cp;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/a;->c:Lcom/google/android/gms/tagmanager/h;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/a;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/a;->g:J

    iget-object v0, p6, Lcom/google/android/gms/internal/cp;->b:Lcom/google/android/gms/internal/cl;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/internal/cl;)V

    iget-object v0, p6, Lcom/google/android/gms/internal/cp;->a:[Lcom/google/android/gms/internal/co;

    if-eqz v0, :cond_2b

    iget-object v0, p6, Lcom/google/android/gms/internal/cp;->a:[Lcom/google/android/gms/internal/co;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/a;->a([Lcom/google/android/gms/internal/co;)V

    :cond_2b
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cv;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/a;->c:Lcom/google/android/gms/tagmanager/h;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/a;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/a;->g:J

    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/tagmanager/cv;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/cl;)V
    .registers 5

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/cs;->a(Lcom/google/android/gms/internal/cl;)Lcom/google/android/gms/tagmanager/cv;
    :try_end_b
    .catch Lcom/google/android/gms/tagmanager/cz; {:try_start_8 .. :try_end_b} :catch_10

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/tagmanager/cv;)V

    :goto_f
    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not loading resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cz;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private a(Lcom/google/android/gms/tagmanager/cv;)V
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cv;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/a;->j(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/w;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/tagmanager/db;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/a;->c:Lcom/google/android/gms/tagmanager/h;

    new-instance v4, Lcom/google/android/gms/tagmanager/d;

    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/tagmanager/d;-><init>(Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/a$1;)V

    new-instance v5, Lcom/google/android/gms/tagmanager/e;

    invoke-direct {v5, p0, v2}, Lcom/google/android/gms/tagmanager/e;-><init>(Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/tagmanager/a$1;)V

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/db;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/cv;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/ez;Lcom/google/android/gms/tagmanager/ez;Lcom/google/android/gms/tagmanager/w;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/a;->a(Lcom/google/android/gms/tagmanager/db;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/gms/tagmanager/db;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/a;->d:Lcom/google/android/gms/tagmanager/db;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a([Lcom/google/android/gms/internal/co;)V
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->f()Lcom/google/android/gms/tagmanager/db;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized f()Lcom/google/android/gms/tagmanager/db;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->d:Lcom/google/android/gms/tagmanager/db;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/b;)V
    .registers 5

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Macro handler must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/c;)V
    .registers 5

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag callback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->f()Lcom/google/android/gms/tagmanager/db;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "getBoolean called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_13
    return v0

    :cond_14
    :try_start_14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/db;->b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->e(Lcom/google/android/gms/internal/dz;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27

    move-result v0

    goto :goto_13

    :catch_27
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getBoolean() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_13
.end method

.method public b(Ljava/lang/String;)D
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->f()Lcom/google/android/gms/tagmanager/db;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "getDouble called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->c()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_13
    return-wide v0

    :cond_14
    :try_start_14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/db;->b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->d(Lcom/google/android/gms/internal/dz;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27

    move-result-wide v0

    goto :goto_13

    :catch_27
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getDouble() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->c()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_13
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/a;->g:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)J
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->f()Lcom/google/android/gms/tagmanager/db;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "getLong called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_13
    return-wide v0

    :cond_14
    :try_start_14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/db;->b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->c(Lcom/google/android/gms/internal/dz;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27

    move-result-wide v0

    goto :goto_13

    :catch_27
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getLong() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_13
.end method

.method public c()Z
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->f()Lcom/google/android/gms/tagmanager/db;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "getString called for closed container."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->f()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    :try_start_10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/db;->b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_f

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling getString() threw an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Returning default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method e()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->d:Lcom/google/android/gms/tagmanager/db;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method f(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/b;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/b;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method h(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/c;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/c;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method i(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->f()Lcom/google/android/gms/tagmanager/db;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/lang/String;)V

    return-void
.end method

.method j(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/w;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/tagmanager/cc;->a()Lcom/google/android/gms/tagmanager/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cc;->b()Lcom/google/android/gms/tagmanager/cd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/cd;->c:Lcom/google/android/gms/tagmanager/cd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_10
    new-instance v0, Lcom/google/android/gms/tagmanager/bj;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bj;-><init>()V

    return-object v0
.end method
