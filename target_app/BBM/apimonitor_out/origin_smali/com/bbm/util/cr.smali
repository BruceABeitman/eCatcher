.class public Lcom/bbm/util/cr;
.super Ljava/lang/Object;
.source "Mutable.java"

# interfaces
.implements Lcom/bbm/j/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bbm/j/r",
        "<TV;>;"
    }
.end annotation


# instance fields
.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public f:Lcom/bbm/j/i;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/j/i;

    invoke-direct {v0}, Lcom/bbm/j/i;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/cr;->f:Lcom/bbm/j/i;

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/bbm/util/cr;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/j/h;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/cr;->f:Lcom/bbm/j/i;

    invoke-virtual {v0, p1}, Lcom/bbm/j/i;->a(Lcom/bbm/j/h;)V

    return-void
.end method

.method public final b(Lcom/bbm/j/h;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/cr;->f:Lcom/bbm/j/i;

    invoke-virtual {v0, p1}, Lcom/bbm/j/i;->b(Lcom/bbm/j/h;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/util/cr;->e:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/bbm/util/cr;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/util/cr;->f:Lcom/bbm/j/i;

    invoke-virtual {v0}, Lcom/bbm/j/i;->a()V

    :cond_f
    return-void
.end method

.method public final e()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V

    iget-object v0, p0, Lcom/bbm/util/cr;->e:Ljava/lang/Object;

    return-object v0
.end method
