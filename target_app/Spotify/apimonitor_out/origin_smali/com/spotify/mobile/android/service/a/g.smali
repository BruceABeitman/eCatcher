.class final Lcom/spotify/mobile/android/service/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Lcom/spotify/mobile/android/service/a/h;

.field private final j:Lcom/google/android/gms/a/a;

.field private final k:Lcom/spotify/mobile/android/util/cx;

.field private final l:Lcom/spotify/mobile/android/util/cl;

.field private m:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Z

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/spotify/mobile/android/service/a/g;->a:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/spotify/mobile/android/service/a/g;->b:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/spotify/mobile/android/service/a/g;->c:J

    const-string v0, "gcm_reg_id"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/a/g;->d:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "gcm_app_version"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/a/g;->e:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "gcm_valid_until"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/a/g;->f:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "gcm_user"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/a/g;->g:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/a/h;Lcom/google/android/gms/a/a;Ljava/lang/String;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/service/a/g;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/a/g;->i:Lcom/spotify/mobile/android/service/a/h;

    iput-object p3, p0, Lcom/spotify/mobile/android/service/a/g;->j:Lcom/google/android/gms/a/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/a/g;->n:Z

    iput-object p4, p0, Lcom/spotify/mobile/android/service/a/g;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->k:Lcom/spotify/mobile/android/util/cx;

    new-instance v0, Lcom/spotify/mobile/android/util/cm;

    const-string v1, "gcm-registration"

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cm;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/spotify/mobile/android/util/cq;

    sget-wide v2, Lcom/spotify/mobile/android/service/a/g;->a:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v6

    new-instance v0, Lcom/spotify/mobile/android/util/cr;

    sget-wide v1, Lcom/spotify/mobile/android/service/a/g;->b:J

    sget-wide v3, Lcom/spotify/mobile/android/service/a/g;->c:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/cr;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/util/cm;->b(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/util/cq;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->c(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(I)Lcom/spotify/mobile/android/util/cm;

    move-result-object v6

    new-instance v0, Lcom/spotify/mobile/android/util/cr;

    sget-wide v1, Lcom/spotify/mobile/android/service/a/g;->b:J

    sget-wide v3, Lcom/spotify/mobile/android/service/a/g;->c:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/cr;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/util/cm;->d(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cm;->a()Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->l:Lcom/spotify/mobile/android/util/cl;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/a/g;Landroid/util/Pair;)V
    .registers 7

    const v4, 0x2809bb

    const-string v0, "Saving registration, id \'%s\', app version: %d, user: \'%s\', valid until: %d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/spotify/mobile/android/service/a/g;->o:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->k:Lcom/spotify/mobile/android/util/cx;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/service/a/g;->d:Lcom/spotify/mobile/android/util/cz;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/a/g;->e:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/a/g;->g:Lcom/spotify/mobile/android/util/cz;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/a/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/service/a/g;->f:Lcom/spotify/mobile/android/util/cz;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;J)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/a/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/a/g;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/a/g;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/a/g;->n:Z

    return v0
.end method

.method static synthetic c()J
    .registers 2

    sget-wide v0, Lcom/spotify/mobile/android/service/a/g;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/service/a/g;)Landroid/util/Pair;
    .registers 10

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/a/g;->k:Lcom/spotify/mobile/android/util/cx;

    sget-object v2, Lcom/spotify/mobile/android/service/a/g;->d:Lcom/spotify/mobile/android/util/cz;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1b

    const-string v1, "Registration not found."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v2, p0, Lcom/spotify/mobile/android/service/a/g;->k:Lcom/spotify/mobile/android/util/cx;

    sget-object v3, Lcom/spotify/mobile/android/service/a/g;->e:Lcom/spotify/mobile/android/util/cz;

    const/high16 v4, -0x8000

    invoke-virtual {v2, v3, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;I)I

    move-result v2

    const v3, 0x2809bb

    if-eq v2, v3, :cond_32

    const-string v1, "Need to reregister, app version changed."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_32
    iget-object v2, p0, Lcom/spotify/mobile/android/service/a/g;->k:Lcom/spotify/mobile/android/util/cx;

    sget-object v3, Lcom/spotify/mobile/android/service/a/g;->f:Lcom/spotify/mobile/android/util/cz;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_4c

    const-string v1, "Need to reregister, previous registration has expired"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_4c
    iget-object v4, p0, Lcom/spotify/mobile/android/service/a/g;->k:Lcom/spotify/mobile/android/util/cx;

    sget-object v5, Lcom/spotify/mobile/android/service/a/g;->g:Lcom/spotify/mobile/android/util/cz;

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/spotify/mobile/android/service/a/g;->o:Ljava/lang/String;

    if-eqz v5, :cond_62

    iget-object v5, p0, Lcom/spotify/mobile/android/service/a/g;->o:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    :cond_62
    const-string v1, "Need to reregister, user has changed (\'%s\'->\'%s\')"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v7

    iget-object v3, p0, Lcom/spotify/mobile/android/service/a/g;->o:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_71
    const-string v0, "Stored registration id is valid: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1a
.end method

.method static synthetic d()J
    .registers 2

    sget-wide v0, Lcom/spotify/mobile/android/service/a/g;->a:J

    return-wide v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/service/a/g;)Lcom/google/android/gms/a/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->j:Lcom/google/android/gms/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/service/a/g;)Lcom/spotify/mobile/android/util/cl;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->l:Lcom/spotify/mobile/android/util/cl;

    return-object v0
.end method

.method static synthetic e()Lcom/spotify/mobile/android/util/cz;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/service/a/g;->f:Lcom/spotify/mobile/android/util/cz;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/service/a/g;)Lcom/spotify/mobile/android/service/a/h;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->i:Lcom/spotify/mobile/android/service/a/h;

    return-object v0
.end method

.method static synthetic f()Lcom/spotify/mobile/android/util/cz;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/service/a/g;->g:Lcom/spotify/mobile/android/util/cz;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/service/a/g;)Landroid/os/AsyncTask;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->m:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic g()Lcom/spotify/mobile/android/util/cz;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/service/a/g;->e:Lcom/spotify/mobile/android/util/cz;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/service/a/g;)Lcom/spotify/mobile/android/util/cx;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->k:Lcom/spotify/mobile/android/util/cx;

    return-object v0
.end method

.method static synthetic h()Lcom/spotify/mobile/android/util/cz;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/service/a/g;->d:Lcom/spotify/mobile/android/util/cz;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->l:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->a()V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->l:Lcom/spotify/mobile/android/util/cl;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->m:Landroid/os/AsyncTask;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->m:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->m:Landroid/os/AsyncTask;

    :cond_12
    return-void
.end method

.method public final run()V
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/service/a/g$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/a/g$1;-><init>(Lcom/spotify/mobile/android/service/a/g;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->m:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g;->m:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
