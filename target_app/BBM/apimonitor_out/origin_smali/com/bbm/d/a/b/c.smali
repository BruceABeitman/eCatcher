.class public final Lcom/bbm/d/a/b/c;
.super Ljava/lang/Object;
.source "LiveMapItem.java"

# interfaces
.implements Lcom/bbm/j/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bbm/d/a/a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bbm/j/r",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/bbm/d/a/b/d;

.field private b:Lcom/bbm/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/bbm/j/i;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bbm/d/a/b/d;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/a/b/d;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/a;

    invoke-static {p1}, Lcom/bbm/d/a/b/c;->b(Lcom/bbm/d/a/b/d;)Lcom/bbm/util/bh;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/d/a/b/c;-><init>(Lcom/bbm/d/a/b/d;Ljava/lang/Class;Lcom/bbm/d/a/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/bbm/d/a/b/d;Ljava/lang/Class;Lcom/bbm/d/a/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/a/b/d;",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/j/i;

    invoke-direct {v0}, Lcom/bbm/j/i;-><init>()V

    iput-object v0, p0, Lcom/bbm/d/a/b/c;->c:Lcom/bbm/j/i;

    iput-object p1, p0, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    iput-object p3, p0, Lcom/bbm/d/a/b/c;->b:Lcom/bbm/d/a/a;

    iput-object p2, p0, Lcom/bbm/d/a/b/c;->d:Ljava/lang/Class;

    return-void
.end method

.method private static b(Lcom/bbm/d/a/b/d;)Lcom/bbm/util/bh;
    .registers 2

    sget-object v0, Lcom/bbm/d/a/b/d;->c:Lcom/bbm/d/a/b/d;

    if-ne p0, v0, :cond_7

    sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/bbm/d/a/b/d;->d:Lcom/bbm/d/a/b/d;

    if-ne p0, v0, :cond_e

    sget-object v0, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    goto :goto_6
.end method


# virtual methods
.method public final a()Lcom/bbm/d/a/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/d/a/b/c;->b:Lcom/bbm/d/a/a;

    return-object v0
.end method

.method public final a(Lcom/bbm/d/a/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/a/b/c;->b:Lcom/bbm/d/a/a;

    invoke-static {v0, p1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/bbm/d/a/b/c;->b:Lcom/bbm/d/a/a;

    iget-object v0, p0, Lcom/bbm/d/a/b/c;->c:Lcom/bbm/j/i;

    invoke-virtual {v0}, Lcom/bbm/j/i;->a()V

    :cond_f
    return-void
.end method

.method public final a(Lcom/bbm/d/a/b/d;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    if-eq p1, v0, :cond_1a

    iput-object p1, p0, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    sget-object v0, Lcom/bbm/d/a/b/d;->d:Lcom/bbm/d/a/b/d;

    if-ne p1, v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/d/a/b/c;->d:Ljava/lang/Class;

    invoke-static {v0}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/a/a;

    sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V

    invoke-virtual {p0, v0}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/a;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/bbm/d/a/b/c;->b:Lcom/bbm/d/a/a;

    invoke-interface {v0}, Lcom/bbm/d/a/a;->b()Lcom/bbm/d/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;

    invoke-static {v1}, Lcom/bbm/d/a/b/c;->b(Lcom/bbm/d/a/b/d;)Lcom/bbm/util/bh;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V

    invoke-virtual {p0, v0}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/a;)V

    goto :goto_1a
.end method

.method public final a(Lcom/bbm/j/h;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/a/b/c;->c:Lcom/bbm/j/i;

    invoke-virtual {v0, p1}, Lcom/bbm/j/i;->a(Lcom/bbm/j/h;)V

    return-void
.end method

.method public final b(Lcom/bbm/j/h;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/d/a/b/c;->c:Lcom/bbm/j/i;

    invoke-virtual {v0, p1}, Lcom/bbm/j/i;->b(Lcom/bbm/j/h;)V

    return-void
.end method

.method public final synthetic e()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bbm/d/a/b/c;->a()Lcom/bbm/d/a/a;

    move-result-object v0

    return-object v0
.end method
