.class public final Lcom/instagram/i/e/a;
.super Ljava/lang/Object;
.source "NewsfeedYouStore.java"


# static fields
.field private static final a:Lcom/instagram/i/e/a;


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/instagram/feed/f/a;

.field private d:Lcom/instagram/common/a/a/m;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/i/e/a;

    invoke-direct {v0}, Lcom/instagram/i/e/a;-><init>()V

    sput-object v0, Lcom/instagram/i/e/a;->a:Lcom/instagram/i/e/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/i/e/a;->b:Ljava/util/HashSet;

    new-instance v0, Lcom/instagram/common/a/a/q;

    invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V

    iput-object v0, p0, Lcom/instagram/i/e/a;->d:Lcom/instagram/common/a/a/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/i/e/a;->l:Ljava/lang/Long;

    invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/i/e/b;

    invoke-direct {v1, p0}, Lcom/instagram/i/e/b;-><init>(Lcom/instagram/i/e/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/i/e/a;Lcom/instagram/feed/f/a;)Lcom/instagram/feed/f/a;
    .registers 2

    iput-object p1, p0, Lcom/instagram/i/e/a;->c:Lcom/instagram/feed/f/a;

    return-object p1
.end method

.method public static a()Lcom/instagram/i/e/a;
    .registers 1

    sget-object v0, Lcom/instagram/i/e/a;->a:Lcom/instagram/i/e/a;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/i/e/a;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/instagram/i/e/a;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/i/e/a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/instagram/i/e/a;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/i/e/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/i/e/a;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/i/e/a;)Lcom/instagram/feed/f/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/i/e/a;->c:Lcom/instagram/feed/f/a;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/i/e/a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/instagram/i/e/a;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/i/e/a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/instagram/i/e/a;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/i/e/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/i/e/a;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/instagram/i/e/a;)Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/instagram/i/e/a;->l:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/i/e/a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/instagram/i/e/a;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic m()V
    .registers 0

    invoke-static {}, Lcom/instagram/i/e/a;->o()V

    return-void
.end method

.method private n()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/i/e/a;->e()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/i/e/a;->d:Lcom/instagram/common/a/a/m;

    new-instance v1, Lcom/instagram/i/b/a/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/instagram/i/b/a/b;-><init>(Lcom/instagram/feed/f/a;)V

    new-instance v2, Lcom/instagram/i/e/c;

    invoke-direct {v2, p0}, Lcom/instagram/i/e/c;-><init>(Lcom/instagram/i/e/a;)V

    invoke-virtual {v1, v2}, Lcom/instagram/i/b/a/b;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V

    :cond_24
    return-void
.end method

.method private static o()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/i/e/a;->k:Z

    return-void
.end method

.method public final b()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/i/e/a;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/i/e/a;->i:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/i/e/a;->l:Ljava/lang/Long;

    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/i/e/a;->i:Z

    return-void
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/i/e/a;->c:Lcom/instagram/feed/f/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/i/e/a;->j:Z

    return v0
.end method

.method public final f()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/e/a;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/i/e/a;->k:Z

    return v0
.end method

.method public final h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/e/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/e/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/e/a;->g:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/i/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/i/e/a;->h:Ljava/util/List;

    return-object v0
.end method

.method public final l()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/i/e/a;->e:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/instagram/i/e/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_9
    iget-object v0, p0, Lcom/instagram/i/e/a;->f:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/i/e/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_12
    iget-object v0, p0, Lcom/instagram/i/e/a;->g:Ljava/util/List;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/instagram/i/e/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1b
    iget-object v0, p0, Lcom/instagram/i/e/a;->h:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/i/e/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/i/e/a;->c:Lcom/instagram/feed/f/a;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method
