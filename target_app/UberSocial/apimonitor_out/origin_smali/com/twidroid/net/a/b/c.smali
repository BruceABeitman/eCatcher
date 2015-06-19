.class public abstract Lcom/twidroid/net/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:Landroid/content/Context;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/net/a/b/c;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/net/a/b/c;->c:Z

    iput-object p1, p0, Lcom/twidroid/net/a/b/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "PhotoProvider"

    const-string v1, "Upload Cancelled"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/net/a/b/c;->c:Z

    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/a/b/c;->b:Landroid/content/Context;

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/net/a/b/c;->c:Z

    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/a/b/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/twidroid/net/a/b/c;->c:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/twidroid/net/a/b/c;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/net/a/b/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
