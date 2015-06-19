.class final Lcom/bbm/h/r;
.super Lcom/bbm/d/b/o;
.source "AddContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/o",
        "<",
        "Lcom/bbm/h/al;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/h/m;


# direct methods
.method constructor <init>(Lcom/bbm/h/m;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/h/r;->b:Lcom/bbm/h/m;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/o;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/bbm/h/al;

    check-cast p2, Lcom/bbm/h/al;

    iget-object v0, p2, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;

    iget-wide v0, v0, Lcom/bbm/h/ao;->b:J

    iget-object v2, p1, Lcom/bbm/h/al;->b:Lcom/bbm/h/ao;

    iget-wide v2, v2, Lcom/bbm/h/ao;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, -0x1

    goto :goto_11
.end method
