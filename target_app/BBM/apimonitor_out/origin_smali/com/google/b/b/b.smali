.class public final Lcom/google/b/b/b;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lcom/google/b/b/c;


# instance fields
.field private final a:Lcom/google/b/b/bm;

.field private final b:Lcom/google/b/b/bm;

.field private final c:Lcom/google/b/b/bm;

.field private final d:Lcom/google/b/b/bm;

.field private final e:Lcom/google/b/b/bm;

.field private final f:Lcom/google/b/b/bm;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/b/b/bn;->a()Lcom/google/b/b/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/b;->a:Lcom/google/b/b/bm;

    invoke-static {}, Lcom/google/b/b/bn;->a()Lcom/google/b/b/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/b;->b:Lcom/google/b/b/bm;

    invoke-static {}, Lcom/google/b/b/bn;->a()Lcom/google/b/b/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/b;->c:Lcom/google/b/b/bm;

    invoke-static {}, Lcom/google/b/b/bn;->a()Lcom/google/b/b/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/b;->d:Lcom/google/b/b/bm;

    invoke-static {}, Lcom/google/b/b/bn;->a()Lcom/google/b/b/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/b;->e:Lcom/google/b/b/bm;

    invoke-static {}, Lcom/google/b/b/bn;->a()Lcom/google/b/b/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/b;->f:Lcom/google/b/b/bm;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/google/b/b/b;->a:Lcom/google/b/b/bm;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/b/b/bm;->a(J)V

    return-void
.end method

.method public final a(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/b/b/b;->c:Lcom/google/b/b/bm;

    invoke-interface {v0}, Lcom/google/b/b/bm;->a()V

    iget-object v0, p0, Lcom/google/b/b/b;->e:Lcom/google/b/b/bm;

    invoke-interface {v0, p1, p2}, Lcom/google/b/b/bm;->a(J)V

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/google/b/b/b;->b:Lcom/google/b/b/bm;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/b/b/bm;->a(J)V

    return-void
.end method

.method public final b(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/b/b/b;->d:Lcom/google/b/b/bm;

    invoke-interface {v0}, Lcom/google/b/b/bm;->a()V

    iget-object v0, p0, Lcom/google/b/b/b;->e:Lcom/google/b/b/bm;

    invoke-interface {v0, p1, p2}, Lcom/google/b/b/bm;->a(J)V

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/google/b/b/b;->f:Lcom/google/b/b/bm;

    invoke-interface {v0}, Lcom/google/b/b/bm;->a()V

    return-void
.end method
