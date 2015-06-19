.class public final Lcom/facebook/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/net/URI;

.field private c:Lcom/facebook/internal/r;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/facebook/internal/q;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/internal/q;->a(Lcom/facebook/internal/q;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/p;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/internal/q;->b(Lcom/facebook/internal/q;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/p;->b:Ljava/net/URI;

    invoke-static {p1}, Lcom/facebook/internal/q;->c(Lcom/facebook/internal/q;)Lcom/facebook/internal/r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/p;->c:Lcom/facebook/internal/r;

    invoke-static {p1}, Lcom/facebook/internal/q;->d(Lcom/facebook/internal/q;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/internal/p;->d:Z

    invoke-static {p1}, Lcom/facebook/internal/q;->e(Lcom/facebook/internal/q;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_26
    iput-object v0, p0, Lcom/facebook/internal/p;->e:Ljava/lang/Object;

    return-void

    :cond_29
    invoke-static {p1}, Lcom/facebook/internal/q;->e(Lcom/facebook/internal/q;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_26
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/q;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/internal/p;-><init>(Lcom/facebook/internal/q;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/p;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ljava/net/URI;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/p;->b:Ljava/net/URI;

    return-object v0
.end method

.method public final c()Lcom/facebook/internal/r;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/p;->c:Lcom/facebook/internal/r;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/internal/p;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/p;->e:Ljava/lang/Object;

    return-object v0
.end method
