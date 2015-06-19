.class public abstract Lcom/instagram/api/j/b;
.super Lcom/instagram/api/j/c;
.source "AbstractIgLoaderRequest.java"

# interfaces
.implements Lcom/instagram/api/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/j/c",
        "<TT;>;",
        "Lcom/instagram/api/c/a;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/common/a/c/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "I",
            "Lcom/instagram/api/j/a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/j/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    if-nez v0, :cond_28

    new-instance v0, Lcom/instagram/common/a/c/b;

    invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    invoke-static {v0, p0}, Lcom/instagram/api/i/a;->a(Lcom/instagram/common/a/c/d;Lcom/instagram/api/c/a;)V

    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    invoke-virtual {p0, v0}, Lcom/instagram/api/j/b;->a(Lcom/instagram/common/a/c/b;)V

    invoke-virtual {p0}, Lcom/instagram/api/j/b;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    invoke-static {v0}, Lcom/instagram/api/i/b;->b(Lcom/instagram/common/a/c/b;)Lcom/instagram/common/a/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    invoke-virtual {p0, v0}, Lcom/instagram/api/j/b;->b(Lcom/instagram/common/a/c/b;)V

    :cond_28
    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    return-object v0
.end method

.method protected a(Lcom/instagram/common/a/c/b;)V
    .registers 2

    return-void
.end method

.method protected b(Lcom/instagram/common/a/c/b;)V
    .registers 2

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b_()Ljava/lang/String;
.end method

.method public final c_()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/api/j/b;->b_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/j/b;->e_()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/api/h/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e_()Z
    .registers 2

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->J()Z

    move-result v0

    return v0
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    invoke-super {p0}, Lcom/instagram/api/j/c;->h()V

    return-void
.end method
