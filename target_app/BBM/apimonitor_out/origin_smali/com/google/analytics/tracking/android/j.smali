.class final Lcom/google/analytics/tracking/android/j;
.super Ljava/lang/Object;
.source "ClientIdDefaultProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/n;


# static fields
.field private static a:Lcom/google/analytics/tracking/android/j;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Z

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/j;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/j;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/j;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/j;->c:Landroid/content/Context;

    new-instance v0, Lcom/google/analytics/tracking/android/k;

    const-string v1, "client_id_fetcher"

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/k;-><init>(Lcom/google/analytics/tracking/android/j;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a()Lcom/google/analytics/tracking/android/j;
    .registers 2

    sget-object v1, Lcom/google/analytics/tracking/android/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/analytics/tracking/android/j;->a:Lcom/google/analytics/tracking/android/j;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/j;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/j;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/j;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/analytics/tracking/android/j;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v1, Lcom/google/analytics/tracking/android/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/analytics/tracking/android/j;->a:Lcom/google/analytics/tracking/android/j;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/analytics/tracking/android/j;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/j;->a:Lcom/google/analytics/tracking/android/j;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/j;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/j;->e:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Storing clientId."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/j;->c:Landroid/content/Context;

    const-string v2, "gaClientId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_19} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_22

    const/4 v0, 0x1

    :goto_1a
    return v0

    :catch_1b
    move-exception v1

    const-string v1, "Error creating clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V

    goto :goto_1a

    :catch_22
    move-exception v1

    const-string v1, "Error writing to clientId file."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private c()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/j;->e:Z

    if-nez v0, :cond_1a

    iget-object v1, p0, Lcom/google/analytics/tracking/android/j;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/j;->e:Z

    if-nez v0, :cond_19

    const-string v0, "Waiting for clientId to load"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_36

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/analytics/tracking/android/j;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_36
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_22

    :goto_15
    :try_start_15
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/j;->e:Z

    if-eqz v0, :cond_10

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_36

    :cond_1a
    const-string v0, "Loaded clientId"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/j;->d:Ljava/lang/String;

    return-object v0

    :catch_22
    move-exception v0

    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while waiting for clientId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_36

    goto :goto_15

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "&cid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/analytics/tracking/android/j;->c()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method final b()Ljava/lang/String;
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/j;->c:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const/16 v1, 0x80

    new-array v3, v1, [B

    const/4 v1, 0x0

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_40

    const-string v1, "clientId file seems corrupted, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/j;->c:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_29} :catch_52
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_29} :catch_5f

    :goto_29
    if-nez v0, :cond_3f

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v0, "0"

    :cond_3f
    return-object v0

    :cond_40
    if-gtz v4, :cond_54

    :try_start_42
    const-string v1, "clientId file seems empty, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/j;->c:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_29

    :catch_52
    move-exception v1

    goto :goto_29

    :cond_54
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_5a} :catch_52
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_5a} :catch_5f

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5d} :catch_70
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_6d

    move-object v0, v1

    goto :goto_29

    :catch_5f
    move-exception v1

    :goto_60
    const-string v1, "Error reading clientId file, deleting it."

    invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/analytics/tracking/android/j;->c:Landroid/content/Context;

    const-string v2, "gaClientId"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_29

    :catch_6d
    move-exception v0

    move-object v0, v1

    goto :goto_60

    :catch_70
    move-exception v0

    move-object v0, v1

    goto :goto_29
.end method
