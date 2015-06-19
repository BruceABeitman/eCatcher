.class final Lcom/bbm/d/u;
.super Ljava/lang/Object;
.source "BbmdsModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/bbm/d/ea;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/bbm/d/t;


# direct methods
.method constructor <init>(Lcom/bbm/d/t;J)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/d/u;->b:Lcom/bbm/d/t;

    iput-wide p2, p0, Lcom/bbm/d/u;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Lcom/bbm/d/ea;

    check-cast p2, Lcom/bbm/d/ea;

    iget-wide v2, p1, Lcom/bbm/d/ea;->b:J

    iget-wide v4, p2, Lcom/bbm/d/ea;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0

    :cond_10
    sget-object v2, Lcom/bbm/d/m;->a:[I

    iget-object v3, p0, Lcom/bbm/d/u;->b:Lcom/bbm/d/t;

    iget-object v3, v3, Lcom/bbm/d/t;->a:Lcom/bbm/d/w;

    invoke-virtual {v3}, Lcom/bbm/d/w;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4e

    :cond_1f
    iget-object v0, p1, Lcom/bbm/d/ea;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/bbm/d/ea;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_f

    :pswitch_28
    iget-wide v2, p1, Lcom/bbm/d/ea;->b:J

    iget-wide v4, p0, Lcom/bbm/d/u;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    iget-wide v2, p2, Lcom/bbm/d/ea;->b:J

    iget-wide v4, p0, Lcom/bbm/d/u;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1f

    move v0, v1

    goto :goto_f

    :pswitch_3a
    iget-wide v2, p1, Lcom/bbm/d/ea;->b:J

    iget-wide v4, p0, Lcom/bbm/d/u;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_44

    move v0, v1

    goto :goto_f

    :cond_44
    iget-wide v1, p2, Lcom/bbm/d/ea;->b:J

    iget-wide v3, p0, Lcom/bbm/d/u;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1f

    goto :goto_f

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_3a
    .end packed-switch
.end method
