.class final Lcom/bbm/h/ai;
.super Lcom/bbm/d/b/o;
.source "AddContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/o",
        "<",
        "Lcom/bbm/g/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/h/m;


# direct methods
.method constructor <init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/h/ai;->b:Lcom/bbm/h/m;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/o;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/bbm/g/t;

    check-cast p2, Lcom/bbm/g/t;

    iget-wide v0, p2, Lcom/bbm/g/t;->o:J

    iget-wide v2, p1, Lcom/bbm/g/t;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method