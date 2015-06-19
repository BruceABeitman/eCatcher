.class public final Lcom/instagram/common/e/b/c;
.super Ljava/lang/Object;
.source "CacheRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/instagram/common/e/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/instagram/common/e/b/k;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/instagram/common/e/b/c;->c:Z

    iput-boolean v0, p0, Lcom/instagram/common/e/b/c;->d:Z

    iput-boolean v0, p0, Lcom/instagram/common/e/b/c;->e:Z

    iput-object p1, p0, Lcom/instagram/common/e/b/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instagram/common/e/b/c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/e/b/c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/e/b/c;->d:Z

    return-object p0
.end method

.method public final a(Z)Lcom/instagram/common/e/b/c;
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/common/e/b/c;->c:Z

    return-object p0
.end method

.method public final b(Z)Lcom/instagram/common/e/b/c;
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/common/e/b/c;->e:Z

    return-object p0
.end method

.method public final b()V
    .registers 2

    invoke-static {}, Lcom/instagram/common/e/b/h;->a()Lcom/instagram/common/e/b/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/common/e/b/h;->a(Lcom/instagram/common/e/b/c;)V

    return-void
.end method

.method final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method final d()Lcom/instagram/common/e/b/k;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/b/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/e/b/k;

    return-object v0
.end method

.method final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/common/e/b/c;->c:Z

    return v0
.end method

.method final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/common/e/b/c;->d:Z

    return v0
.end method

.method final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/common/e/b/c;->e:Z

    return v0
.end method
