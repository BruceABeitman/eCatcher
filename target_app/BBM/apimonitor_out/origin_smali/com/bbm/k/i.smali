.class public final Lcom/bbm/k/i;
.super Ljava/lang/Object;
.source "GroupsCalendarProvider.java"

# interfaces
.implements Lcom/bbm/d/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bbm/d/b/e",
        "<",
        "Lcom/bbm/g/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/k/a;


# direct methods
.method public constructor <init>(Lcom/bbm/k/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/k/i;->a:Lcom/bbm/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Collection;Lcom/bbm/k/j;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/bbm/g/a;",
            ">;",
            "Lcom/bbm/k/j;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/a;

    sget-object v2, Lcom/bbm/k/f;->a:[I

    invoke-virtual {p2}, Lcom/bbm/k/j;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_32

    :pswitch_1b
    goto :goto_4

    :pswitch_1c
    iget-object v2, p0, Lcom/bbm/k/i;->a:Lcom/bbm/k/a;

    iget-object v2, v2, Lcom/bbm/k/a;->d:Lcom/bbm/g/f;

    iget-object v0, v0, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bbm/g/f;->a(Ljava/lang/String;)Lcom/bbm/g/j;

    goto :goto_4

    :pswitch_26
    iget-object v2, p0, Lcom/bbm/k/i;->a:Lcom/bbm/k/a;

    iget-object v2, v2, Lcom/bbm/k/a;->d:Lcom/bbm/g/f;

    iget-object v0, v0, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bbm/g/f;->b(Ljava/lang/String;)Z

    goto :goto_4

    :cond_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/bbm/g/a;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/bbm/g/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/k/i;->a:Lcom/bbm/k/a;

    iget-object v0, v0, Lcom/bbm/k/a;->f:Lcom/bbm/util/cj;

    invoke-static {p1, p2, v0}, Lcom/bbm/util/ch;->a(Ljava/util/Collection;Ljava/util/Collection;Lcom/bbm/util/cj;)Lcom/bbm/util/ci;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/util/ci;->a:Ljava/util/Collection;

    sget-object v2, Lcom/bbm/k/j;->a:Lcom/bbm/k/j;

    invoke-direct {p0, v1, v2}, Lcom/bbm/k/i;->a(Ljava/util/Collection;Lcom/bbm/k/j;)V

    iget-object v1, v0, Lcom/bbm/util/ci;->b:Ljava/util/Collection;

    sget-object v2, Lcom/bbm/k/j;->b:Lcom/bbm/k/j;

    invoke-direct {p0, v1, v2}, Lcom/bbm/k/i;->a(Ljava/util/Collection;Lcom/bbm/k/j;)V

    iget-object v0, v0, Lcom/bbm/util/ci;->c:Ljava/util/Collection;

    sget-object v1, Lcom/bbm/k/j;->c:Lcom/bbm/k/j;

    invoke-direct {p0, v0, v1}, Lcom/bbm/k/i;->a(Ljava/util/Collection;Lcom/bbm/k/j;)V

    return-void
.end method