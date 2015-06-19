.class public Lcom/instagram/service/a/a;
.super Ljava/lang/Object;
.source "AuthHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final d:Lcom/instagram/service/a/a;


# instance fields
.field private b:Lcom/instagram/user/c/a;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/service/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/service/a/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/instagram/service/a/a;

    invoke-direct {v0}, Lcom/instagram/service/a/a;-><init>()V

    sput-object v0, Lcom/instagram/service/a/a;->d:Lcom/instagram/service/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/instagram/service/a/a;->c:J

    return-void
.end method

.method public static a()Lcom/instagram/service/a/a;
    .registers 1

    sget-object v0, Lcom/instagram/service/a/a;->d:Lcom/instagram/service/a/a;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "AuthHelper.BROADCAST_USER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "userid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "loggedin"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public static d()Z
    .registers 1

    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/a/b;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/instagram/user/c/a;
    .registers 3

    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    if-nez v0, :cond_20

    :try_start_4
    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/a/b;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-static {v0}, Lcom/instagram/user/b/b;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/service/a/a;->a(Ljava/lang/String;Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_23

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    goto :goto_f

    :catch_23
    move-exception v0

    goto :goto_20
.end method

.method public final b(Lcom/instagram/user/c/a;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/user/b/b;->a(Lcom/instagram/user/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/k/a/b;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to write current user"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public final c(Lcom/instagram/user/c/a;)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/service/a/a;->c:J

    const-wide/32 v4, 0x2255100

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/instagram/service/a/a;->b(Lcom/instagram/user/c/a;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/service/a/a;->c:J

    :cond_17
    return-void
.end method

.method public final d(Lcom/instagram/user/c/a;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/instagram/service/a/a;->b(Lcom/instagram/user/c/a;)V

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/service/a/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final e()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/service/a/a;->a(Ljava/lang/String;Z)V

    :cond_f
    iput-object v2, p0, Lcom/instagram/service/a/a;->b:Lcom/instagram/user/c/a;

    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/k/a/b;->b(Ljava/lang/String;)V

    return-void
.end method
