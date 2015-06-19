.class abstract Lcom/bbm/aj;
.super Lcom/bbm/util/cr;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bbm/util/cr",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bbm/af;


# direct methods
.method constructor <init>(Lcom/bbm/af;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/aj;->d:Lcom/bbm/af;

    invoke-direct {p0, p2}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/aj;->e:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/bbm/aj;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/bbm/aj;->c(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method final c(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/aj;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/aj;->f:Lcom/bbm/j/i;

    invoke-virtual {v0}, Lcom/bbm/j/i;->a()V

    return-void
.end method
