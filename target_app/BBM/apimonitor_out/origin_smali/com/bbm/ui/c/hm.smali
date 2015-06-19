.class final Lcom/bbm/ui/c/hm;
.super Ljava/lang/Object;
.source "UpdatesFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bbm/util/ew;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/hk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hm;->a:Lcom/bbm/ui/c/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/bbm/util/ew;

    check-cast p2, Lcom/bbm/util/ew;

    iget-wide v0, p1, Lcom/bbm/util/ew;->b:J

    iget-wide v2, p2, Lcom/bbm/util/ew;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    iget-wide v0, p1, Lcom/bbm/util/ew;->b:J

    iget-wide v2, p2, Lcom/bbm/util/ew;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, -0x1

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method
