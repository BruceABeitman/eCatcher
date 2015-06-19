.class public Lcom/twidroid/service/BackgroundService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field static final g:Ljava/lang/String; = "UberSocialBackgroundService"

.field private static final q:I = 0x1

.field private static final r:I = 0x2

.field private static final s:I = 0x3


# instance fields
.field a:Landroid/app/NotificationManager;

.field public b:Lcom/twidroid/d/v;

.field c:Z

.field d:Ljava/util/List;

.field e:Ljava/util/List;

.field f:Ljava/util/List;

.field h:Landroid/os/Handler;

.field protected i:Z

.field protected j:Z

.field k:Landroid/net/wifi/WifiManager$WifiLock;

.field l:Landroid/net/wifi/WifiManager;

.field m:Landroid/os/PowerManager$WakeLock;

.field n:Z

.field protected o:Lcom/twidroid/b/a/b;

.field p:Ljava/lang/Runnable;

.field private t:Landroid/database/sqlite/SQLiteDatabase;

.field private final u:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/service/BackgroundService;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    iput-boolean v1, p0, Lcom/twidroid/service/BackgroundService;->i:Z

    iput-boolean v1, p0, Lcom/twidroid/service/BackgroundService;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    iput-boolean v1, p0, Lcom/twidroid/service/BackgroundService;->n:Z

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->t:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    new-instance v0, Lcom/twidroid/service/BackgroundService$1;

    invoke-direct {v0, p0}, Lcom/twidroid/service/BackgroundService$1;-><init>(Lcom/twidroid/service/BackgroundService;)V

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/twidroid/service/BackgroundService$3;

    invoke-direct {v0, p0}, Lcom/twidroid/service/BackgroundService$3;-><init>(Lcom/twidroid/service/BackgroundService;)V

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->u:Landroid/os/IBinder;

    return-void
.end method

.method private a(Lcom/twidroid/b/a/b;)I
    .registers 7

    const/4 v4, 0x1

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->r()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/twidroid/fragments/c/a;

    new-instance v3, Lcom/twidroid/fragments/c/b;

    invoke-direct {v3, v0, v1}, Lcom/twidroid/fragments/c/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/twidroid/fragments/c/a;-><init>(Lcom/twidroid/fragments/c/b;)V

    new-instance v1, Lcom/ubermedia/a/g;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    :goto_33
    invoke-direct {v1, v0}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v4}, Lcom/twidroid/fragments/c/a;->a(Lcom/ubermedia/a/g;Z)V

    new-instance v1, Lcom/ubermedia/a/g;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    :goto_41
    invoke-direct {v1, v0}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v4}, Lcom/twidroid/fragments/c/a;->c(Lcom/ubermedia/a/g;Z)V

    new-instance v1, Lcom/ubermedia/a/g;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    :goto_4f
    invoke-direct {v1, v0}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v4}, Lcom/twidroid/fragments/c/a;->b(Lcom/ubermedia/a/g;Z)V

    invoke-virtual {v2}, Lcom/twidroid/fragments/c/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_5e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_33

    :cond_64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_41

    :cond_6a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4f
.end method

.method static synthetic a(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/service/BackgroundService;->a(Lcom/twidroid/b/a/b;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twidroid/service/BackgroundService;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->t:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private a(Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V
    .registers 9

    const/4 v0, 0x5

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :try_start_3
    iget-object v1, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v2, p0, Lcom/twidroid/service/BackgroundService;->t:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, p2}, Lcom/twidroid/b/a/b;->a(JLcom/twidroid/service/f;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v1

    const-string v2, "UberSocialBackgroundService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry::checkForNewMessages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/twidroid/net/a/c/c;->h:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_4e

    const/4 v0, 0x0

    const-string v2, "UberSocialBackgroundService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rate limit!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/twidroid/net/a/c/c;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_51
    invoke-direct {p0}, Lcom/twidroid/service/BackgroundService;->d()V

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_5c

    :goto_59
    if-gtz v0, :cond_1

    goto :goto_11

    :catch_5c
    move-exception v1

    const-string v1, "UberSocialBackgroundService"

    const-string v2, "::run sleep interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method static synthetic a(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/twidroid/service/BackgroundService;->b(Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V

    return-void
.end method

.method private b(Lcom/twidroid/b/a/b;)V
    .registers 8

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {p1}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/twidroid/d/v;->e(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_4d

    const-string v0, "UberSocialBackgroundService"

    const-string v2, "cleanup start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_22
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/twidroid/d/a/a;->a(Ljava/io/File;J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_4e

    :goto_32
    :try_start_32
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/twidroid/b/a/b;->d(I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3b} :catch_53

    :goto_3b
    :try_start_3b
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-object v2, p0, Lcom/twidroid/service/BackgroundService;->t:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/twidroid/d/v;->b(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_46} :catch_8f

    :goto_46
    :try_start_46
    const-string v0, "UberSocialBackgroundService"

    const-string v1, " DB Cleanup finished"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_71

    :cond_4d
    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    :catch_53
    move-exception v0

    :try_start_54
    const-string v2, "UberSocialBackgroundService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::run cleanupdb failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_70} :catch_71

    goto :goto_3b

    :catch_71
    move-exception v0

    const-string v1, "UberSocialBackgroundService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " DB Cleanup failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :catch_8f
    move-exception v0

    :try_start_90
    const-string v1, "UberSocialBackgroundService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::run saving prefs failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_ac} :catch_71

    goto :goto_46
.end method

.method private b(Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V
    .registers 12

    const/4 v7, 0x0

    const/4 v0, 0x5

    :cond_2
    add-int/lit8 v8, v0, -0x1

    :try_start_4
    const-string v0, "UberSocialBackgroundService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::run update mentions started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-boolean v3, p0, Lcom/twidroid/service/BackgroundService;->j:Z

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    const-string v4, "mentions.timestamp"

    invoke-virtual {v0, v4}, Lcom/twidroid/d/v;->k(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJLcom/twidroid/service/f;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    const-string v0, "UberSocialBackgroundService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::run update mentions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_55} :catch_56

    :goto_55
    return-void

    :catch_56
    move-exception v0

    move-object v1, v0

    const-string v0, "UberSocialBackgroundService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry::checkForNewMentions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/twidroid/net/a/c/c;->h:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_aa

    const-string v0, "UberSocialBackgroundService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rate limit!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/twidroid/net/a/c/c;->j:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_93
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_96
    invoke-direct {p0}, Lcom/twidroid/service/BackgroundService;->d()V

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9e} :catch_a1

    :goto_9e
    if-gtz v0, :cond_2

    goto :goto_55

    :catch_a1
    move-exception v1

    const-string v1, "UberSocialBackgroundService"

    const-string v2, "::run sleep interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :cond_aa
    move v0, v8

    goto :goto_93
.end method

.method static synthetic b(Lcom/twidroid/service/BackgroundService;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/service/BackgroundService;->e()V

    return-void
.end method

.method static synthetic b(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/service/BackgroundService;->b(Lcom/twidroid/b/a/b;)V

    return-void
.end method

.method static synthetic b(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/twidroid/service/BackgroundService;->c(Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V

    return-void
.end method

.method private c(Lcom/twidroid/b/a/b;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twidroid/b/a/b;->b(Landroid/content/Context;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method private c(Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V
    .registers 12

    const/4 v0, 0x5

    :cond_1
    add-int/lit8 v8, v0, -0x1

    :try_start_3
    const-string v0, "UberSocialBackgroundService"

    const-string v1, "::run update Tweet started"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    const-string v1, "timeline.timestamp"

    invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->k(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_1a

    const-wide/16 v4, -0x1

    :cond_1a
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    iget-boolean v3, p0, Lcom/twidroid/service/BackgroundService;->i:Z

    const/4 v6, 0x0

    move-object v0, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJLjava/lang/String;Lcom/twidroid/service/f;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    const-string v0, "UberSocialBackgroundService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::run update Tweets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_47

    :goto_46
    return-void

    :catch_47
    move-exception v0

    move-object v1, v0

    const-string v0, "UberSocialBackgroundService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry::checkForNewTweets "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v2, Lcom/twidroid/net/a/c/c;->h:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_9e

    const/4 v0, 0x0

    const-string v2, "UberSocialBackgroundService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rate limit!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/twidroid/net/a/c/c;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_84
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, p1}, Lcom/twidroid/service/BackgroundService;->d(Lcom/twidroid/b/a/b;)V

    invoke-direct {p0}, Lcom/twidroid/service/BackgroundService;->d()V

    const-wide/16 v1, 0x2710

    :try_start_8f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_95

    :goto_92
    if-gtz v0, :cond_1

    goto :goto_46

    :catch_95
    move-exception v1

    const-string v1, "UberSocialBackgroundService"

    const-string v2, "::run sleep interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    :cond_9e
    move v0, v8

    goto :goto_84
.end method

.method static synthetic c(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/service/BackgroundService;->e(Lcom/twidroid/b/a/b;)V

    return-void
.end method

.method static synthetic c(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/twidroid/service/BackgroundService;->a(Lcom/twidroid/b/a/b;Lcom/twidroid/service/f;)V

    return-void
.end method

.method private d()V
    .registers 5

    iget-boolean v0, p0, Lcom/twidroid/service/BackgroundService;->n:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    :try_start_5
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/twidroid/service/BackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DoNotGoToSleep"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->m:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/service/BackgroundService;->n:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_6c

    :goto_1e
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/twidroid/service/BackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->l:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->l:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "UberSocialBackgroundService"

    const-string v1, "No 3G/EDGE Connection - Trying to get WIFI lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->l:Landroid/net/wifi/WifiManager;

    const-string v1, "UberSocialBackgroundService"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    :try_start_41
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/service/BackgroundService;->n:Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4d} :catch_4e

    goto :goto_4

    :catch_4e
    move-exception v0

    const-string v1, "UberSocialBackgroundService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake Lock exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method private d(Lcom/twidroid/b/a/b;)V
    .registers 7

    new-instance v0, Lcom/twidroid/net/a/d;

    invoke-virtual {p1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v2}, Lcom/twidroid/d/v;->s()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Lcom/twidroid/net/oauth/a;

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/net/a/d;-><init>(Lcom/twidroid/model/twitter/c;Landroid/content/SharedPreferences;Lcom/ubermedia/net/b/c;)V

    invoke-virtual {v0}, Lcom/twidroid/net/a/d;->a()Z

    return-void
.end method

.method static synthetic d(Lcom/twidroid/service/BackgroundService;Lcom/twidroid/b/a/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/service/BackgroundService;->c(Lcom/twidroid/b/a/b;)V

    return-void
.end method

.method private e()V
    .registers 5

    iget-boolean v0, p0, Lcom/twidroid/service/BackgroundService;->n:Z

    if-eqz v0, :cond_22

    :try_start_4
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_23

    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_28

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :catch_28
    move-exception v0

    const-string v1, "UberSocialBackgroundService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake Lock exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private e(Lcom/twidroid/b/a/b;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bC()Z

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_8
    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    new-instance v2, Lcom/twidroid/service/BackgroundService$2;

    invoke-direct {v2, p0}, Lcom/twidroid/service/BackgroundService$2;-><init>(Lcom/twidroid/service/BackgroundService;)V

    invoke-static {v0, p1, v1, v2}, Lcom/twidroid/net/c/w;->a(Landroid/content/Context;Lcom/twidroid/b/a/b;Lcom/twidroid/d/v;Lcom/twidroid/v;)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bD()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/VerifyError; {:try_start_8 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_1b

    :catch_1e
    move-exception v0

    goto :goto_1b
.end method


# virtual methods
.method a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;
    .registers 13

    const/high16 v8, 0x2400

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_164

    check-cast p2, Lcom/twidroid/model/twitter/Tweet;

    iget v0, p2, Lcom/twidroid/model/twitter/Tweet;->aB:I

    if-eqz p3, :cond_11b

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/SingleTweetActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_TWEET"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "twidroid.timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "twidroid.account_user_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tweet_id"

    iget-wide v2, p2, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foobar://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_54
    return-object v0

    :pswitch_55
    check-cast p2, Lcom/twidroid/model/twitter/Tweet;

    iget v0, p2, Lcom/twidroid/model/twitter/Tweet;->aB:I

    if-eqz p3, :cond_6d

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/SingleTweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_TWEET"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_54

    :cond_6d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TabName"

    const-string v2, "TAB_MENTIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foobar://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_54

    :pswitch_a4
    check-cast p2, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/twidroid/model/twitter/DirectMessage;->D:J

    if-eqz p3, :cond_c7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/SingleDirectMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "notification_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_54

    :cond_c7
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/twidroid/TwidroidClient;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "TabName"

    const-string v6, "TAB_DIRECT_MESSAGES"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "twidroid.message_id"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "twidroid.account_user_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "twidroid.sender_id"

    iget-wide v2, p2, Lcom/twidroid/model/twitter/DirectMessage;->C:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "twidroid.sender_name"

    iget-object v2, p2, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foobar://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_54

    :cond_11b
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twidroid/TwidroidClient;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "TabName"

    const-string v3, "TAB_TIMELINE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "twidroid.timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "twidroid.account_user_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foobar://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto/16 :goto_54

    nop

    :pswitch_data_164
    .packed-switch 0x2
        :pswitch_55
        :pswitch_a4
    .end packed-switch
.end method

.method public a()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "twidroid.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/service/BackgroundService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/service/BackgroundService;->o:Lcom/twidroid/b/a/b;

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-static {v0, v1}, Lcom/twidroid/widget/WidgetUpdateBroadcastReceiver;->a(Landroid/content/Context;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V
    .registers 21

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const v7, 0x7f020137

    const v8, 0x7f02013b

    const v9, 0x7f02010c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/twidroid/model/twitter/Tweet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    packed-switch p3, :pswitch_data_440

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    :goto_49
    new-instance v10, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v10, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v11, 0x7f0c007a

    invoke-static {v6, v11}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    if-lez p4, :cond_3c0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v11, 0x7f0c020d

    invoke-static {v6, v11}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_99
    iget-object v6, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v6}, Lcom/twidroid/d/v;->ai()Z

    move-result v6

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v1, v6}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v6, 0x7f020140

    invoke-virtual {v10, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v10, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v6}, Lcom/twidroid/d/v;->at()Z

    move-result v6

    if-eqz v6, :cond_3e1

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->e()Ljava/lang/String;

    move-result-object v6

    :goto_cb
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ": "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v11, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v6}, Lcom/twidroid/d/v;->at()Z

    move-result v6

    if-eqz v6, :cond_3fa

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->e()Ljava/lang/String;

    move-result-object v6

    :goto_103
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ": "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_132

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_163

    :cond_132
    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0c01cd

    invoke-static {v2, v6}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_413

    move-object v2, v5

    :goto_140
    invoke-virtual {v10, v7, v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0c01cf

    invoke-static {v2, v6}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_41e

    :goto_150
    invoke-virtual {v10, v8, v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c01af

    invoke-static {v2, v4}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_429

    :goto_160
    invoke-virtual {v10, v9, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_163
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_178

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01cd

    invoke-static {v2, v3}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_434

    :goto_175
    invoke-virtual {v10, v7, v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_178
    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v3}, Lcom/twidroid/d/v;->aH()Z

    move-result v3

    if-eqz v3, :cond_19b

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->flags:I

    const v3, -0xff0001

    iput v3, v2, Landroid/app/Notification;->ledARGB:I

    const/16 v3, 0x32

    iput v3, v2, Landroid/app/Notification;->ledOnMS:I

    const/16 v3, 0xabe

    iput v3, v2, Landroid/app/Notification;->ledOffMS:I

    :cond_19b
    iget-object v3, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v3}, Lcom/twidroid/d/v;->K()Z

    move-result v3

    if-eqz v3, :cond_1a9

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    :cond_1a9
    iget-object v3, p0, Lcom/twidroid/service/BackgroundService;->a:Landroid/app/NotificationManager;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :pswitch_1b1
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_2ce

    const v2, 0x7f0c020e

    :goto_1b9
    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2d3

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v10, Lcom/twidroid/activity/AccountDialogActivity;

    invoke-direct {v5, v6, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "EXTRA_TWEET"

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/twidroid/b/a/b;->m(J)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "action_for_dialog"

    sget-object v10, Lcom/twidroid/activity/a;->a:Lcom/twidroid/activity/a;

    invoke-virtual {v10}, Lcom/twidroid/activity/a;->ordinal()I

    move-result v10

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "notification_id"

    move/from16 v0, p1

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const v6, 0x10008000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "foobar://"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x800

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_232
    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/twidroid/service/RetweetService;

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "tweet_id"

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v6

    const-string v10, "notification_id"

    move/from16 v0, p1

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    const-string v10, "TabName"

    const-string v11, "TAB_MENTIONS"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "foobar://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v10, 0x800

    invoke-static {v4, v5, v6, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/twidroid/service/FavoriteService;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "tweet_id"

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "notification_id"

    move/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "foobar://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x800

    invoke-static {v4, v6, v10, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object v14, v4

    move-object v4, v5

    move-object v5, v3

    move-object v3, v14

    goto/16 :goto_49

    :cond_2ce
    const v2, 0x7f0c020c

    goto/16 :goto_1b9

    :cond_2d3
    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/twidroid/activity/SendTweet;

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "EXTRA_REPLY_STATUS_ID"

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J

    move-result-wide v11

    invoke-virtual {v6, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v6

    const-string v10, "android.intent.extra.TEXT"

    if-eqz v3, :cond_35e

    :goto_2f1
    invoke-virtual {v6, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v6, "notification_id"

    move/from16 v0, p1

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v6, "TabName"

    const-string v10, "TAB_MENTIONS"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v6, "EXTRA_ORIGINAL_TEXT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const v6, 0x10008000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "foobar://"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v6, 0x800

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto/16 :goto_232

    :cond_35e
    const-string v3, ""

    goto :goto_2f1

    :pswitch_361
    const v2, 0x7f0c020b

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/twidroid/SingleDirectMessageActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "EXTRA_ACTION_SCREENNAME"

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "notification_id"

    move/from16 v0, p1

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "TabName"

    const-string v12, "TAB_DIRECT_MESSAGES"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const v11, 0x10008000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "foobar://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x800

    invoke-static {v3, v6, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v14, v4

    move-object v4, v5

    move-object v5, v3

    move-object v3, v14

    goto/16 :goto_49

    :cond_3c0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_99

    :cond_3e1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_cb

    :cond_3fa
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "@"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_103

    :cond_413
    const/4 v2, 0x1

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;

    move-result-object v2

    goto/16 :goto_140

    :cond_41e
    const/4 v4, 0x1

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v1, v4}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;

    move-result-object v4

    goto/16 :goto_150

    :cond_429
    const/4 v3, 0x1

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;

    move-result-object v3

    goto/16 :goto_160

    :cond_434
    const/4 v3, 0x1

    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;Z)Landroid/app/PendingIntent;

    move-result-object v5

    goto/16 :goto_175

    nop

    :pswitch_data_440
    .packed-switch 0x1
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_361
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-wide v3, v0, Lcom/twidroid/model/twitter/Tweet;->x:J

    aput-wide v3, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "twidroid.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ids"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twidroid/service/BackgroundService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "twidroid.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ids"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twidroid/service/BackgroundService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .registers 14

    const/4 v5, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    const v1, 0x7f0c0162

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/CommunicationEntity;

    const/4 v3, 0x3

    invoke-static {p0}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    move v0, v5

    :goto_1f
    iget-object v1, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3f

    const v7, 0x7f0c0163

    iget-object v1, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/twidroid/model/twitter/CommunicationEntity;

    const/4 v9, 0x2

    invoke-static {p0}, Lcom/twidroid/d/v;->p(Landroid/content/Context;)I

    move-result v10

    if-nez v0, :cond_5e

    move v11, v5

    :goto_3a
    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    move v0, v5

    :cond_3f
    iget-object v1, p0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5d

    const v3, 0x7f0c0164

    iget-object v1, p0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-static {p0}, Lcom/twidroid/d/v;->q(Landroid/content/Context;)I

    move-result v6

    if-nez v0, :cond_60

    move v7, v5

    :goto_59
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    :cond_5d
    return-void

    :cond_5e
    move v11, v12

    goto :goto_3a

    :cond_60
    move v7, v12

    goto :goto_59

    :cond_62
    move v0, v12

    goto :goto_1f
.end method

.method public c()V
    .registers 11

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/twidroid/service/BackgroundService;->c:Z

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ai()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->b()V

    iput-boolean v4, p0, Lcom/twidroid/service/BackgroundService;->c:Z

    :cond_12
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->O()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    :goto_2d
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_32
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-nez v0, :cond_b0

    const-string v0, "UberSocialBackgroundService"

    const-string v1, "Can play ringtone. Ringtone Manager returned NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3f} :catch_e9

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/d/p;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v6, v4

    move v1, v4

    :goto_4f
    if-ge v6, v8, :cond_65

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/Tweet;

    add-int/lit8 v7, v1, 0x1

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v7

    goto :goto_4f

    :cond_65
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v6, v4

    :goto_6c
    if-ge v6, v8, :cond_83

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/Tweet;

    add-int/lit8 v7, v1, 0x1

    move-object v0, p0

    move v3, v9

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v7

    goto :goto_6c

    :cond_83
    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v6, v4

    :goto_8a
    if-ge v6, v8, :cond_12

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/DirectMessage;

    add-int/lit8 v7, v1, 0x1

    const/4 v3, 0x3

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/BackgroundService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v7

    goto :goto_8a

    :cond_a1
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/media/RingtoneManager;->setType(I)V

    invoke-virtual {v0, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2d

    :cond_b0
    :try_start_b0
    invoke-virtual {p0}, Lcom/twidroid/service/BackgroundService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3f

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_3f

    :cond_c6
    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_d7} :catch_e9

    :cond_d7
    const-wide/16 v0, 0x7d0

    :try_start_d9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_dc
    .catch Ljava/lang/InterruptedException; {:try_start_d9 .. :try_end_dc} :catch_e4
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_e9

    :goto_dc
    :try_start_dc
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_d7

    goto/16 :goto_3f

    :catch_e4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e8} :catch_e9

    goto :goto_dc

    :catch_e9
    move-exception v0

    const-string v1, "UberSocialBackgroundService"

    const-string v2, "Unable to play ringtone"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/service/BackgroundService;->u:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    const-string v0, "UberSocialBackgroundService"

    const-string v1, "UberSocialBackground Service ::onCreate"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/twidroid/service/BackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->a:Landroid/app/NotificationManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/service/BackgroundService;->h:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twidroid/service/BackgroundService;->p:Ljava/lang/Runnable;

    const-string v3, "BackgroundService"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "UberSocialBackgroundService"

    const-string v1, "UberSocialBackground Service ::onDestroy"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
