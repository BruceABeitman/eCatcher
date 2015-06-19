.class Lorg/apache/log4j/c/x;
.super Lorg/apache/log4j/c/q;
.source "SourceFile"


# instance fields
.field f:I

.field private final g:Lorg/apache/log4j/c/r;


# direct methods
.method constructor <init>(Lorg/apache/log4j/c/r;Lorg/apache/log4j/c/i;I)V
    .registers 4

    iput-object p1, p0, Lorg/apache/log4j/c/x;->g:Lorg/apache/log4j/c/r;

    invoke-direct {p0, p2}, Lorg/apache/log4j/c/q;-><init>(Lorg/apache/log4j/c/i;)V

    iput p3, p0, Lorg/apache/log4j/c/x;->f:I

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;

    move-result-object v0

    iget v1, p0, Lorg/apache/log4j/c/x;->f:I

    packed-switch v1, :pswitch_data_1e

    :pswitch_9
    const/4 v0, 0x0

    :goto_a
    return-object v0

    :pswitch_b
    iget-object v0, v0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    goto :goto_a

    :pswitch_e
    invoke-virtual {v0}, Lorg/apache/log4j/k/h;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_13
    invoke-virtual {v0}, Lorg/apache/log4j/k/h;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_18
    invoke-virtual {v0}, Lorg/apache/log4j/k/h;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    nop

    :pswitch_data_1e
    .packed-switch 0x3e8
        :pswitch_b
        :pswitch_e
        :pswitch_9
        :pswitch_13
        :pswitch_18
    .end packed-switch
.end method
