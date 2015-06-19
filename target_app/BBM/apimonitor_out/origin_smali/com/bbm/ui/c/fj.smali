.class final Lcom/bbm/ui/c/fj;
.super Lcom/bbm/d/b/o;
.source "ProfileUpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/o",
        "<",
        "Lcom/bbm/d/fz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/c/fh;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fh;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/fj;->b:Lcom/bbm/ui/c/fh;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/o;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/bbm/d/fz;

    check-cast p2, Lcom/bbm/d/fz;

    iget-wide v0, p1, Lcom/bbm/d/fz;->e:J

    iget-wide v2, p2, Lcom/bbm/d/fz;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    iget-wide v0, p1, Lcom/bbm/d/fz;->e:J

    iget-wide v2, p2, Lcom/bbm/d/fz;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, -0x1

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method
