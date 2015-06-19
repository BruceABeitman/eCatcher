.class public final Lcom/facebook/bb;
.super Lcom/facebook/ax;
.source "SourceFile"


# static fields
.field private static final a:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ax;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p2}, Lcom/facebook/bb;->a(Ljava/util/List;)Lcom/facebook/ax;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ax;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, p2}, Lcom/facebook/bb;->a(Ljava/util/List;)Lcom/facebook/ax;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lcom/facebook/ax;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/bb;->b(I)Lcom/facebook/bb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/facebook/bf;)Lcom/facebook/ax;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/bb;->b(Lcom/facebook/bf;)Lcom/facebook/bb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/facebook/bi;)Lcom/facebook/ax;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/bb;->b(Lcom/facebook/bi;)Lcom/facebook/bb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/facebook/bj;)Lcom/facebook/ax;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/bb;->b(Lcom/facebook/bj;)Lcom/facebook/bb;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/facebook/bb;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ax;->a(I)Lcom/facebook/ax;

    return-object p0
.end method

.method public final b(Lcom/facebook/bf;)Lcom/facebook/bb;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ax;->a(Lcom/facebook/bf;)Lcom/facebook/ax;

    return-object p0
.end method

.method public final b(Lcom/facebook/bi;)Lcom/facebook/bb;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ax;->a(Lcom/facebook/bi;)Lcom/facebook/ax;

    return-object p0
.end method

.method public final b(Lcom/facebook/bj;)Lcom/facebook/bb;
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ax;->a(Lcom/facebook/bj;)Lcom/facebook/ax;

    return-object p0
.end method
