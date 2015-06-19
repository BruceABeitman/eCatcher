.class abstract Lcom/bbm/d/a/a/j;
.super Lcom/bbm/d/b/m;
.source "LiveListManager.java"

# interfaces
.implements Lcom/bbm/j/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bbm/d/a/a;",
        ">",
        "Lcom/bbm/d/b/m",
        "<TT;>;",
        "Lcom/bbm/j/w",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bbm/d/a/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/a/a/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/bbm/d/a/a/h;


# direct methods
.method constructor <init>(Lcom/bbm/d/a/a/h;Lcom/bbm/d/a/a/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/a/a/e",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/d/a/a/j;->d:Lcom/bbm/d/a/a/h;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V

    iput-object p2, p0, Lcom/bbm/d/a/a/j;->a:Lcom/bbm/d/a/a/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/bbm/d/a/a/j;->a:Lcom/bbm/d/a/a/e;

    invoke-virtual {v0}, Lcom/bbm/d/a/a/e;->b()Z

    move-result v0

    return v0
.end method
