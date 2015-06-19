.class public final Lcom/instagram/common/u/c/e;
.super Ljava/lang/Object;
.source "SerialExecutor.java"


# instance fields
.field private final a:Lcom/instagram/common/u/b/a;

.field private final b:Lcom/facebook/d/b/c;

.field private final c:Ljava/util/concurrent/Executor;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method private constructor <init>(Lcom/instagram/common/u/b/a;Lcom/facebook/d/b/c;Ljava/util/concurrent/Executor;)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/common/u/c/e;->a:Lcom/instagram/common/u/b/a;

    iput-object p2, p0, Lcom/instagram/common/u/c/e;->b:Lcom/facebook/d/b/c;

    iput-object p3, p0, Lcom/instagram/common/u/c/e;->c:Ljava/util/concurrent/Executor;

    iput v0, p0, Lcom/instagram/common/u/c/e;->e:I

    iput v0, p0, Lcom/instagram/common/u/c/e;->f:I

    iput v0, p0, Lcom/instagram/common/u/c/e;->g:I

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/u/c/e;)Lcom/instagram/common/u/b/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/u/c/e;->a:Lcom/instagram/common/u/b/a;

    return-object v0
.end method

.method public static a()Lcom/instagram/common/u/c/e;
    .registers 4

    new-instance v0, Lcom/instagram/common/u/c/e;

    invoke-static {}, Lcom/instagram/common/u/b/a;->a()Lcom/instagram/common/u/b/a;

    move-result-object v1

    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v2

    invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/common/u/c/e;-><init>(Lcom/instagram/common/u/b/a;Lcom/facebook/d/b/c;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/common/u/c/e;)Lcom/facebook/d/b/c;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/u/c/e;->b:Lcom/facebook/d/b/c;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/common/u/c/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/u/c/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/common/u/c/e;)Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/u/c/e;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/common/u/c/e;)I
    .registers 2

    iget v0, p0, Lcom/instagram/common/u/c/e;->e:I

    return v0
.end method

.method static synthetic f(Lcom/instagram/common/u/c/e;)I
    .registers 2

    iget v0, p0, Lcom/instagram/common/u/c/e;->f:I

    return v0
.end method

.method static synthetic g(Lcom/instagram/common/u/c/e;)I
    .registers 2

    iget v0, p0, Lcom/instagram/common/u/c/e;->g:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/u/c/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/instagram/common/u/c/e;
    .registers 2

    const/16 v0, 0x2710

    iput v0, p0, Lcom/instagram/common/u/c/e;->g:I

    return-object p0
.end method

.method public final c()Lcom/instagram/common/u/c/d;
    .registers 3

    new-instance v0, Lcom/instagram/common/u/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/common/u/c/d;-><init>(Lcom/instagram/common/u/c/e;B)V

    return-object v0
.end method
