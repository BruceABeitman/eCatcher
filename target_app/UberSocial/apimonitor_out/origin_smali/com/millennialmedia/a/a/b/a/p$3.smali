.class final Lcom/millennialmedia/a/a/b/a/p$3;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/b/a/p;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Number;
    .registers 6

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/b/a/p$26;->a:[I

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/d/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    :pswitch_f
    new-instance v1, Lcom/millennialmedia/a/a/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting number, got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_28
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    const/4 v0, 0x0

    :goto_2c
    return-object v0

    :pswitch_2d
    new-instance v0, Lcom/millennialmedia/a/a/b/i;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/b/i;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_f
        :pswitch_f
        :pswitch_28
    .end packed-switch
.end method

.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Number;)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/Number;)Lcom/millennialmedia/a/a/d/d;

    return-void
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$3;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$3;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
