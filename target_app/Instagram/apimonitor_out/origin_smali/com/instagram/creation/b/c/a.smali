.class public final Lcom/instagram/creation/b/c/a;
.super Ljava/lang/Object;
.source "PendingMediaManager.java"


# static fields
.field private static final a:Lcom/instagram/creation/b/d/a;

.field private static b:Lcom/instagram/creation/b/d/c;

.field private static c:Z

.field private static d:Lcom/instagram/creation/b/c/a;


# instance fields
.field private final e:Lcom/instagram/common/u/b/a;

.field private final f:Ljava/lang/Object;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/instagram/common/u/c/d;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Lcom/instagram/creation/video/j/b;

.field private volatile m:Landroid/os/PowerManager$WakeLock;

.field private n:Lcom/instagram/creation/b/c/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/b/c/a;->a:Lcom/instagram/creation/b/d/a;

    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/creation/b/c/a;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/instagram/common/u/b/a;->a()Lcom/instagram/common/u/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->e:Lcom/instagram/common/u/b/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-static {}, Lcom/instagram/common/u/c/e;->a()Lcom/instagram/common/u/c/e;

    move-result-object v0

    const-string v1, "PendingMedia"

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->c()Lcom/instagram/common/u/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->h:Lcom/instagram/common/u/c/d;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->i:Ljava/util/List;

    new-instance v0, Lcom/instagram/creation/b/c/d;

    invoke-direct {v0, p1}, Lcom/instagram/creation/b/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/instagram/creation/b/c/a;
    .registers 3

    const-class v1, Lcom/instagram/creation/b/c/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/creation/b/c/a;->d:Lcom/instagram/creation/b/c/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/instagram/creation/b/c/a;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/creation/b/c/a;->d:Lcom/instagram/creation/b/c/a;

    :cond_e
    sget-object v0, Lcom/instagram/creation/b/c/a;->d:Lcom/instagram/creation/b/c/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->h(Lcom/instagram/creation/b/a/b;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/instagram/creation/b/c/c;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/instagram/creation/b/c/c;->a(Lcom/instagram/creation/b/c/c;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->g(Z)V

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->h:Lcom/instagram/common/u/c/d;

    invoke-virtual {v0, p1}, Lcom/instagram/common/u/c/d;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/instagram/feed/d/l;Lcom/instagram/creation/b/a/b;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/feed/d/l;->a(Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/instagram/creation/b/a/b;->g(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->N()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/instagram/creation/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/feed/d/l;->f(Ljava/lang/String;)V

    :cond_33
    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->q()V

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/user/c/h;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    :goto_52
    invoke-static {}, Lcom/instagram/creation/b/c/a;->h()V

    :goto_55
    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->x()Z

    move-result v0

    if-nez v0, :cond_62

    invoke-static {}, Lcom/instagram/creation/photo/b/g;->d()V

    :cond_62
    return-void

    :cond_63
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->D()V

    goto :goto_52

    :cond_67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/instagram/user/userservice/b/f;->b(J)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    const-class v2, Lcom/instagram/user/userservice/UserService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_55
.end method

.method private static a(Ljava/lang/String;Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "PendingMediaManager.BROADCAST_INTENT_CHECKPOINT_REQUIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "checkpointUrl"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "shouldShowWebviewCancelButton"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public static a()Z
    .registers 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/instagram/creation/b/c/a;->c:Z

    if-eqz v1, :cond_8

    sput-boolean v0, Lcom/instagram/creation/b/c/a;->c:Z

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static b(Lcom/instagram/creation/b/a/b;)V
    .registers 3

    sget-object v0, Lcom/instagram/creation/b/c/a;->a:Lcom/instagram/creation/b/d/a;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->b()V

    sget-object v0, Lcom/instagram/creation/b/c/a;->a:Lcom/instagram/creation/b/d/a;

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;Lcom/instagram/creation/b/a/b;)V

    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    return-void
.end method

.method static synthetic d()Lcom/instagram/creation/b/d/c;
    .registers 1

    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    return-object v0
.end method

.method private e()Landroid/os/PowerManager$WakeLock;
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->m:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "PendingMediaManager.WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/b/c/a;->m:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->m:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_1d
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->m:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private f()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->e()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->e()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()V
    .registers 3

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->e()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->e()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static h()V
    .registers 1

    const-string v0, "PendingMediaManager.BROADCAST_INTENT_NEW_MEDIA"

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private h(Lcom/instagram/creation/b/a/b;)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/b/c/a;->j:Z

    iput-boolean v0, p0, Lcom/instagram/creation/b/c/a;->k:Z

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->e:Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v0

    sget-object v3, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v3}, Lcom/instagram/creation/b/d/c;->c()V

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->i(Lcom/instagram/creation/b/a/b;)V

    iget-boolean v3, p0, Lcom/instagram/creation/b/c/a;->j:Z

    if-eqz v3, :cond_1e

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->i(Lcom/instagram/creation/b/a/b;)V

    :cond_1e
    sget-object v3, Lcom/instagram/creation/b/c/a;->a:Lcom/instagram/creation/b/d/a;

    invoke-virtual {v3}, Lcom/instagram/creation/b/d/a;->f()V

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/creation/b/c/a;->e:Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/b/a/d;Lcom/instagram/creation/b/a/d;J)V

    return-void
.end method

.method private i(Lcom/instagram/creation/b/a/b;)V
    .registers 4

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_c

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->j(Lcom/instagram/creation/b/a/b;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_b

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->k(Lcom/instagram/creation/b/a/b;)V

    goto :goto_b
.end method

.method private j(Lcom/instagram/creation/b/a/b;)V
    .registers 6

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_2f

    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v1, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :try_start_1a
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_photo"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->q(Lcom/instagram/creation/b/a/b;)V

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_photo"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2f} :catch_55

    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_54

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_54

    :try_start_3f
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "configure_media"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->r(Lcom/instagram/creation/b/a/b;)V

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "configure_media"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_54} :catch_76

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Photo upload failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed upload"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :catch_76
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed on configure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed configure"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_54
.end method

.method private k(Lcom/instagram/creation/b/a/b;)V
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v2, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    if-ne v0, v2, :cond_4f

    sget-object v0, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;

    sget-object v2, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v3, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->C()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/i;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/i;->a()Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gtz v0, :cond_4f

    :cond_46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V

    sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    :cond_4f
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v2, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    if-ne v0, v2, :cond_70

    sget-object v0, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    sget-object v2, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;

    sget-object v3, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v4, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    :try_start_6d
    invoke-static {p1}, Lcom/instagram/creation/b/c/a;->l(Lcom/instagram/creation/b/a/b;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_ba

    :cond_70
    :goto_70
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v2, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    if-ne v0, v2, :cond_11c

    sget-object v0, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;

    sget-object v2, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v3, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    :try_start_8c
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1dd

    :cond_a1
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->m(Lcom/instagram/creation/b/a/b;)Z

    move-result v0

    :goto_a5
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_cd

    if-eqz v0, :cond_ca

    const-string v0, "Video canceled"

    :goto_af
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    invoke-virtual {v1, p1, v0}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    const-string v1, "PendingMediaManager"

    invoke-static {v1, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_b9} :catch_1a8

    :cond_b9
    :goto_b9
    return-void

    :catch_ba
    move-exception v0

    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    const-string v3, "Video Upload URL request failed"

    invoke-virtual {v2, p1, v3}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    const-string v2, "PendingMediaManager"

    const-string v3, "Media failed new media request"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_70

    :cond_ca
    :try_start_ca
    const-string v0, "Could not render video"

    goto :goto_af

    :cond_cd
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/instagram/creation/video/l/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f6

    const-string v0, "video/x-matroska"

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ed

    const-string v0, "video/mp4"

    :cond_ed
    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/creation/base/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f6
    new-instance v0, Lcom/instagram/creation/b/c/e;

    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/b/c/e;-><init>(Lcom/instagram/common/a/b/a;Lcom/instagram/creation/b/c/d;)V

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v1

    const-string v2, "upload_video"

    invoke-virtual {v1, v2}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/c/e;->a(Lcom/instagram/creation/b/a/b;)I

    move-result v0

    sget v1, Lcom/instagram/creation/b/c/h;->b:I

    if-ne v0, v1, :cond_194

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/b/c/a;->j:Z

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    const-string v1, "All video upload URLs expired"

    invoke-virtual {v0, p1, v1}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_11c} :catch_1a8

    :cond_11c
    :goto_11c
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->e:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_14b

    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    sget-object v1, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    :try_start_136
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_cover_photo"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->q(Lcom/instagram/creation/b/a/b;)V

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_cover_photo"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_14b} :catch_1bb

    :cond_14b
    :goto_14b
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_b9

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-ne v0, v1, :cond_b9

    :try_start_15b
    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "configure_media"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->r(Lcom/instagram/creation/b/a/b;)V

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "configure_media"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_170} :catch_172

    goto/16 :goto_b9

    :catch_172
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed on configure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed configure"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b9

    :cond_194
    :try_start_194
    sget v1, Lcom/instagram/creation/b/c/h;->a:I

    if-ne v0, v1, :cond_11c

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "upload_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_1a6} :catch_1a8

    goto/16 :goto_11c

    :catch_1a8
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed video render/upload"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11c

    :catch_1bb
    move-exception v0

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cover photo upload failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    const-string v1, "PendingMediaManager"

    const-string v2, "Media failed cover photo upload"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14b

    :cond_1dd
    move v0, v1

    goto/16 :goto_a5
.end method

.method private static l(Lcom/instagram/creation/b/a/b;)V
    .registers 5

    new-instance v0, Lcom/instagram/creation/b/c/a/c;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/c/a/c;-><init>(Lcom/instagram/creation/b/a/b;)V

    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4b

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/b/c/b/a;

    invoke-static {}, Lcom/instagram/service/b/a;->a()Lcom/instagram/service/b/a;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2, v0, v3}, Lcom/instagram/service/b/a;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {v1, v0}, Lcom/instagram/creation/b/c/b/a;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;)V

    invoke-virtual {v1}, Lcom/instagram/creation/b/c/b/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/util/List;)V

    sget-object v0, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p0, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V

    :cond_4b
    return-void
.end method

.method private m(Lcom/instagram/creation/b/a/b;)Z
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->f()V

    invoke-static {}, Lcom/instagram/creation/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->n(Lcom/instagram/creation/b/a/b;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_30

    :cond_d
    :goto_d
    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->g()V

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/j/b;->b()Z

    move-result v0

    iput-object v2, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    sget-object v1, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v1}, Lcom/instagram/creation/b/d/c;->c()V

    return v0

    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/instagram/creation/c/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->p(Lcom/instagram/creation/b/a/b;)I

    move-result v0

    sget v1, Lcom/instagram/creation/video/g/e/b;->d:I

    if-ne v0, v1, :cond_d

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->o(Lcom/instagram/creation/b/a/b;)V
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_30

    goto :goto_d

    :catchall_30
    move-exception v0

    invoke-direct {p0}, Lcom/instagram/creation/b/c/a;->g()V

    iget-object v1, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v1}, Lcom/instagram/creation/video/j/b;->b()Z

    iput-object v2, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    throw v0

    :cond_3c
    :try_start_3c
    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->o(Lcom/instagram/creation/b/a/b;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_30

    goto :goto_d
.end method

.method private n(Lcom/instagram/creation/b/a/b;)V
    .registers 5

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/j/e;

    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/instagram/creation/video/j/e;-><init>(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {v1}, Lcom/instagram/creation/video/j/e;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object v1, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-virtual {v1}, Lcom/instagram/creation/video/j/e;->j()V

    invoke-virtual {v1}, Lcom/instagram/creation/video/j/e;->B_()V

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private o(Lcom/instagram/creation/b/a/b;)V
    .registers 5

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/j/d;

    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/instagram/creation/video/j/d;-><init>(Landroid/content/Context;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V

    iput-object v1, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/j/b;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->run()V

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private p(Lcom/instagram/creation/b/a/b;)I
    .registers 5

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v0

    const-string v1, "render_video"

    invoke-virtual {v0, v1}, Lcom/instagram/b/d/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;

    move-result-object v0

    new-instance v1, Lcom/instagram/creation/video/g/e/a;

    invoke-direct {v1, p1}, Lcom/instagram/creation/video/g/e/a;-><init>(Lcom/instagram/creation/b/a/b;)V

    iput-object v1, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    iget-object v2, p0, Lcom/instagram/creation/b/c/a;->g:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/instagram/creation/video/g/e/a;->a(Landroid/content/Context;Lcom/instagram/creation/video/e/c;)I

    move-result v0

    invoke-static {}, Lcom/instagram/b/d/c;->a()Lcom/instagram/b/d/c;

    move-result-object v1

    const-string v2, "render_video"

    invoke-virtual {v1, v2}, Lcom/instagram/b/d/c;->b(Ljava/lang/String;)V

    return v0
.end method

.method private q(Lcom/instagram/creation/b/a/b;)V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/instagram/creation/b/c/a/e;

    invoke-direct {v0, p1}, Lcom/instagram/creation/b/c/a/e;-><init>(Lcom/instagram/creation/b/a/b;)V

    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v2

    new-instance v3, Lcom/instagram/creation/b/c/b;

    invoke-direct {v3, p0, p1}, Lcom/instagram/creation/b/c/b;-><init>(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;)V

    invoke-virtual {v2, v0, v3}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;Lcom/instagram/common/a/f/j;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_90

    :cond_27
    const-string v0, "PendingMediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad response from server "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v2, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v2, :cond_66

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Photo upload failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    :cond_57
    :goto_57
    if-eqz v1, :cond_8e

    const/4 v0, 0x1

    :goto_5a
    iput-boolean v0, p0, Lcom/instagram/creation/b/c/a;->k:Z
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_83

    :goto_5c
    if-eqz v1, :cond_65

    :try_start_5e
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_65} :catch_9d

    :cond_65
    :goto_65
    return-void

    :cond_66
    :try_start_66
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v2, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v0, v2, :cond_57

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cover photo upload failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_66 .. :try_end_82} :catchall_83

    goto :goto_57

    :catchall_83
    move-exception v0

    if-eqz v1, :cond_8d

    :try_start_86
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8d} :catch_9b

    :cond_8d
    :goto_8d
    throw v0

    :cond_8e
    const/4 v0, 0x0

    goto :goto_5a

    :cond_90
    :try_start_90
    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_83

    goto :goto_5c

    :catch_9b
    move-exception v1

    goto :goto_8d

    :catch_9d
    move-exception v0

    goto :goto_65
.end method

.method private r(Lcom/instagram/creation/b/a/b;)V
    .registers 5

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/h/a/a;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->s(Lcom/instagram/creation/b/a/b;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v1

    sget-object v2, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-ne v1, v2, :cond_16

    invoke-direct {p0, v0, p1}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/feed/d/l;Lcom/instagram/creation/b/a/b;)V

    :cond_16
    return-void
.end method

.method private s(Lcom/instagram/creation/b/a/b;)Lcom/instagram/feed/d/l;
    .registers 16

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/instagram/creation/b/c/a;->t(Lcom/instagram/creation/b/a/b;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    :try_start_7
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v8

    if-eqz v8, :cond_141

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_141

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_13d

    move-result-object v1

    :try_start_1b
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v0, v9}, Lcom/fasterxml/jackson/a/e;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/a/l;

    move-result-object v10

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v6, v2

    move-object v7, v2

    :cond_36
    :goto_36
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v12

    sget-object v13, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v12, v13, :cond_b1

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "media"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-static {v10}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;

    move-result-object v2

    goto :goto_36

    :cond_52
    const-string v13, "message"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_62

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v7

    goto :goto_36

    :cond_62
    const-string v13, "checkpoint_url"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_72

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_36

    :cond_72
    const-string v13, "lock"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8b

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v0

    if-nez v0, :cond_89

    move v0, v3

    :goto_84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_36

    :cond_89
    move v0, v4

    goto :goto_84

    :cond_8b
    const-string v13, "feedback_required"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9f

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_36

    :cond_9f
    if-eqz v12, :cond_36

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_1b .. :try_end_ab} :catchall_ac

    goto :goto_36

    :catchall_ac
    move-exception v0

    :goto_ad
    :try_start_ad
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_13a

    :goto_b0
    throw v0

    :cond_b1
    :try_start_b1
    invoke-virtual {v10}, Lcom/fasterxml/jackson/a/l;->close()V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_c9

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_11d

    :cond_c9
    const-string v3, "PendingMediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Failure response on configure: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "checkpoint_required"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_108

    iget-object v3, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    const-string v4, "Failed on configure: checkpoint required"

    invoke-virtual {v3, p1, v4}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v6, v0}, Lcom/instagram/creation/b/c/a;->a(Ljava/lang/String;Z)V

    :goto_f3
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_101

    const-string v0, "feedback_required"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    :cond_101
    invoke-static {v11}, Lcom/instagram/g/c;->a(Landroid/os/Bundle;)V
    :try_end_104
    .catchall {:try_start_b1 .. :try_end_104} :catchall_ac

    :cond_104
    :goto_104
    :try_start_104
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_138

    :goto_107
    return-object v2

    :cond_108
    :try_start_108
    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed on configure: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    goto :goto_f3

    :cond_11d
    if-eqz v7, :cond_132

    const-string v0, "media_needs_reupload"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->n:Lcom/instagram/creation/b/c/d;

    const-string v3, "Failed on configure: Media needs reupload"

    invoke-virtual {v0, p1, v3}, Lcom/instagram/creation/b/c/d;->a(Lcom/instagram/creation/b/a/b;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/instagram/creation/b/c/a;->u(Lcom/instagram/creation/b/a/b;)V

    goto :goto_f3

    :cond_132
    sget-object v0, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V
    :try_end_137
    .catchall {:try_start_108 .. :try_end_137} :catchall_ac

    goto :goto_f3

    :catch_138
    move-exception v0

    goto :goto_107

    :catch_13a
    move-exception v1

    goto/16 :goto_b0

    :catchall_13d
    move-exception v0

    move-object v1, v2

    goto/16 :goto_ad

    :cond_141
    move-object v1, v2

    goto :goto_104
.end method

.method private static t(Lcom/instagram/creation/b/a/b;)Lcom/instagram/common/a/a/a;
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/instagram/f/a/a/g;

    invoke-direct {v0, p0}, Lcom/instagram/f/a/a/g;-><init>(Lcom/instagram/creation/b/a/b;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/instagram/creation/b/c/a/b;

    invoke-direct {v0, p0}, Lcom/instagram/creation/b/c/a/b;-><init>(Lcom/instagram/creation/b/a/b;)V

    goto :goto_b
.end method

.method private u(Lcom/instagram/creation/b/a/b;)V
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/creation/b/a/b;)V
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/j/b;->c()V

    :cond_9
    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/instagram/creation/b/c/a;->l:Lcom/instagram/creation/video/j/b;

    invoke-interface {v0}, Lcom/instagram/creation/video/j/b;->B_()V

    :cond_9
    return-void
.end method

.method public final c(Lcom/instagram/creation/b/a/b;)V
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    return-void
.end method

.method public final d(Lcom/instagram/creation/b/a/b;)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/instagram/creation/b/a/d;->b:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    if-eq v0, v1, :cond_17

    sget-object v0, Lcom/instagram/creation/b/a/d;->d:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    :cond_17
    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v2, p1, v2}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    return-void
.end method

.method public final e(Lcom/instagram/creation/b/a/b;)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/creation/b/c/a;->c:Z

    :cond_a
    sget-object v0, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->b(Lcom/instagram/creation/b/a/d;)V

    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    sget-object v0, Lcom/instagram/creation/b/c/a;->b:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->b()V

    return-void
.end method

.method public final f(Lcom/instagram/creation/b/a/b;)V
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Lcom/instagram/creation/b/c/c;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    return-void
.end method

.method public final g(Lcom/instagram/creation/b/a/b;)V
    .registers 5

    new-instance v0, Lcom/instagram/creation/b/c/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V

    invoke-direct {p0, v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/c;)V

    return-void
.end method
