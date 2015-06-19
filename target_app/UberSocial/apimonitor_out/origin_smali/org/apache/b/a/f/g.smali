.class public Lorg/apache/b/a/f/g;
.super Lorg/apache/b/a/f/b;
.source "SourceFile"


# static fields
.field private static final h:I = -0x2

.field private static final i:I = -0x3


# instance fields
.field private final j:Lorg/apache/b/a/d/l;

.field private final k:Lorg/apache/b/a/d/a;

.field private l:I

.field private m:Lorg/apache/b/a/d/i;

.field private n:Lorg/apache/b/a/d/f;

.field private o:Z

.field private p:[B


# direct methods
.method public constructor <init>(Lorg/apache/b/a/d/l;Lorg/apache/b/a/d/a;Lorg/apache/b/a/b/a;II)V
    .registers 13

    new-instance v6, Lorg/apache/b/a/f/h;

    invoke-direct {v6}, Lorg/apache/b/a/f/h;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/b/a/f/g;-><init>(Lorg/apache/b/a/d/l;Lorg/apache/b/a/d/a;Lorg/apache/b/a/b/a;IILorg/apache/b/a/f/h;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/b/a/d/l;Lorg/apache/b/a/d/a;Lorg/apache/b/a/b/a;IILorg/apache/b/a/f/h;)V
    .registers 9

    invoke-direct {p0, p3, p4, p5, p6}, Lorg/apache/b/a/f/b;-><init>(Lorg/apache/b/a/b/a;IILorg/apache/b/a/f/h;)V

    iput-object p1, p0, Lorg/apache/b/a/f/g;->j:Lorg/apache/b/a/d/l;

    iput-object p2, p0, Lorg/apache/b/a/f/g;->k:Lorg/apache/b/a/d/a;

    new-instance v0, Lorg/apache/b/a/d/f;

    invoke-virtual {p6}, Lorg/apache/b/a/f/h;->c()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lorg/apache/b/a/d/f;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/b/a/f/g;->o:Z

    return-void
.end method

.method private l()V
    .registers 7

    const/16 v0, 0x1000

    iget-object v1, p0, Lorg/apache/b/a/f/g;->f:Lorg/apache/b/a/b/e;

    invoke-interface {v1}, Lorg/apache/b/a/b/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, v0, :cond_52

    :goto_10
    :try_start_10
    iget-object v1, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    if-eqz v1, :cond_38

    new-instance v1, Lorg/apache/b/a/d/i;

    new-instance v3, Lorg/apache/b/a/d/a;

    iget-object v4, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    iget-object v5, p0, Lorg/apache/b/a/f/g;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v5}, Lorg/apache/b/a/f/h;->c()I

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/b/a/d/a;-><init>(Ljava/io/InputStream;II)V

    invoke-direct {v1, v3, v2}, Lorg/apache/b/a/d/i;-><init>(Lorg/apache/b/a/d/a;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_28} :catch_47

    :goto_28
    new-instance v0, Lorg/apache/b/a/d/f;

    iget-object v1, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    iget-object v2, p0, Lorg/apache/b/a/f/g;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v2}, Lorg/apache/b/a/f/h;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/b/a/d/f;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    return-void

    :cond_38
    :try_start_38
    iget-object v1, p0, Lorg/apache/b/a/f/g;->k:Lorg/apache/b/a/d/a;

    invoke-virtual {v1, v0}, Lorg/apache/b/a/d/a;->a(I)V

    new-instance v0, Lorg/apache/b/a/d/i;

    iget-object v1, p0, Lorg/apache/b/a/f/g;->k:Lorg/apache/b/a/d/a;

    invoke-direct {v0, v1, v2}, Lorg/apache/b/a/d/i;-><init>(Lorg/apache/b/a/d/a;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_46} :catch_47

    goto :goto_28

    :catch_47
    move-exception v0

    new-instance v1, Lorg/apache/b/a/a;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_52
    move v0, v1

    goto :goto_10
.end method

.method private m()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    new-instance v0, Lorg/apache/b/a/d/f;

    iget-object v1, p0, Lorg/apache/b/a/f/g;->k:Lorg/apache/b/a/d/a;

    iget-object v2, p0, Lorg/apache/b/a/f/g;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v2}, Lorg/apache/b/a/f/h;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/b/a/d/f;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    return-void
.end method

.method private n()V
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    invoke-virtual {v0}, Lorg/apache/b/a/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/apache/b/a/f/g;->p:[B

    if-nez v0, :cond_12

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/b/a/f/g;->p:[B

    :cond_12
    invoke-direct {p0}, Lorg/apache/b/a/f/g;->q()Ljava/io/InputStream;

    move-result-object v0

    :cond_16
    iget-object v1, p0, Lorg/apache/b/a/f/g;->p:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    :cond_1f
    return-void
.end method

.method private o()Lorg/apache/b/a/f/d;
    .registers 8

    iget-object v0, p0, Lorg/apache/b/a/f/g;->f:Lorg/apache/b/a/b/e;

    invoke-interface {v0}, Lorg/apache/b/a/b/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/b/a/g/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lorg/apache/b/a/f/g;->a:Lorg/apache/commons/logging/Log;

    const-string v1, "base64 encoded message/rfc822 detected"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/b/a/a/b;

    iget-object v1, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    invoke-direct {v0, v1}, Lorg/apache/b/a/a/b;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    :goto_1b
    iget v0, p0, Lorg/apache/b/a/f/g;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    new-instance v0, Lorg/apache/b/a/f/l;

    invoke-direct {v0, v3}, Lorg/apache/b/a/f/l;-><init>(Ljava/io/InputStream;)V

    :goto_25
    return-object v0

    :cond_26
    invoke-static {v0}, Lorg/apache/b/a/g/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lorg/apache/b/a/f/g;->a:Lorg/apache/commons/logging/Log;

    const-string v1, "quoted-printable encoded message/rfc822 detected"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/b/a/a/i;

    iget-object v1, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    invoke-direct {v0, v1}, Lorg/apache/b/a/a/i;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    goto :goto_1b

    :cond_3c
    iget-object v0, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    move-object v3, v0

    goto :goto_1b

    :cond_40
    new-instance v0, Lorg/apache/b/a/f/g;

    iget-object v1, p0, Lorg/apache/b/a/f/g;->j:Lorg/apache/b/a/d/l;

    new-instance v2, Lorg/apache/b/a/d/a;

    const/16 v4, 0x1000

    iget-object v5, p0, Lorg/apache/b/a/f/g;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v5}, Lorg/apache/b/a/f/h;->c()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/b/a/d/a;-><init>(Ljava/io/InputStream;II)V

    iget-object v3, p0, Lorg/apache/b/a/f/g;->f:Lorg/apache/b/a/b/e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/b/a/f/g;->e:Lorg/apache/b/a/f/h;

    invoke-direct/range {v0 .. v6}, Lorg/apache/b/a/f/g;-><init>(Lorg/apache/b/a/d/l;Lorg/apache/b/a/d/a;Lorg/apache/b/a/b/a;IILorg/apache/b/a/f/h;)V

    iget v1, p0, Lorg/apache/b/a/f/g;->l:I

    invoke-virtual {v0, v1}, Lorg/apache/b/a/f/g;->b(I)V

    goto :goto_25
.end method

.method private p()Lorg/apache/b/a/f/d;
    .registers 8

    iget v0, p0, Lorg/apache/b/a/f/g;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    new-instance v0, Lorg/apache/b/a/f/l;

    iget-object v1, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    invoke-direct {v0, v1}, Lorg/apache/b/a/f/l;-><init>(Ljava/io/InputStream;)V

    :goto_c
    return-object v0

    :cond_d
    new-instance v2, Lorg/apache/b/a/d/a;

    iget-object v0, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    const/16 v1, 0x1000

    iget-object v3, p0, Lorg/apache/b/a/f/g;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v3}, Lorg/apache/b/a/f/h;->c()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/b/a/d/a;-><init>(Ljava/io/InputStream;II)V

    new-instance v0, Lorg/apache/b/a/f/g;

    iget-object v1, p0, Lorg/apache/b/a/f/g;->j:Lorg/apache/b/a/d/l;

    iget-object v3, p0, Lorg/apache/b/a/f/g;->f:Lorg/apache/b/a/b/e;

    const/16 v4, 0xa

    const/16 v5, 0xb

    iget-object v6, p0, Lorg/apache/b/a/f/g;->e:Lorg/apache/b/a/f/h;

    invoke-direct/range {v0 .. v6}, Lorg/apache/b/a/f/g;-><init>(Lorg/apache/b/a/d/l;Lorg/apache/b/a/d/a;Lorg/apache/b/a/b/a;IILorg/apache/b/a/f/h;)V

    iget v1, p0, Lorg/apache/b/a/f/g;->l:I

    invoke-virtual {v0, v1}, Lorg/apache/b/a/f/g;->b(I)V

    goto :goto_c
.end method

.method private q()Ljava/io/InputStream;
    .registers 6

    iget-object v0, p0, Lorg/apache/b/a/f/g;->e:Lorg/apache/b/a/f/h;

    invoke-virtual {v0}, Lorg/apache/b/a/f/h;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_14

    new-instance v0, Lorg/apache/b/a/d/d;

    iget-object v3, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/b/a/d/d;-><init>(Ljava/io/InputStream;J)V

    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    goto :goto_13
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lorg/apache/b/a/f/g;->g:I

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/b/a/f/g;->g:I

    invoke-static {v2}, Lorg/apache/b/a/f/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/b/a/f/g;->o:Z

    iget-object v0, p0, Lorg/apache/b/a/f/g;->f:Lorg/apache/b/a/b/e;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1, p1}, Lorg/apache/b/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()I
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/f/g;->j:Lorg/apache/b/a/d/l;

    invoke-virtual {v0}, Lorg/apache/b/a/d/l;->a()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lorg/apache/b/a/f/g;->l:I

    return-void
.end method

.method protected c()Lorg/apache/b/a/d/e;
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    return-object v0
.end method

.method public i()Lorg/apache/b/a/f/d;
    .registers 7

    const/16 v5, 0xc

    const/4 v0, 0x5

    const/4 v4, -0x2

    const/4 v3, 0x7

    const/4 v2, 0x3

    iget v1, p0, Lorg/apache/b/a/f/g;->g:I

    packed-switch v1, :pswitch_data_f2

    :pswitch_b
    iget v0, p0, Lorg/apache/b/a/f/g;->g:I

    iget v1, p0, Lorg/apache/b/a/f/g;->d:I

    if-ne v0, v1, :cond_d2

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/b/a/f/g;->g:I

    :goto_14
    const/4 v0, 0x0

    :goto_15
    return-object v0

    :pswitch_16
    iget-boolean v1, p0, Lorg/apache/b/a/f/g;->o:Z

    if-eqz v1, :cond_1d

    iput v0, p0, Lorg/apache/b/a/f/g;->g:I

    goto :goto_14

    :cond_1d
    iput v2, p0, Lorg/apache/b/a/f/g;->g:I

    goto :goto_14

    :pswitch_20
    iput v2, p0, Lorg/apache/b/a/f/g;->g:I

    goto :goto_14

    :pswitch_23
    invoke-virtual {p0}, Lorg/apache/b/a/f/g;->d()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x4

    :cond_2a
    iput v0, p0, Lorg/apache/b/a/f/g;->g:I

    goto :goto_14

    :pswitch_2d
    iget-object v0, p0, Lorg/apache/b/a/f/g;->f:Lorg/apache/b/a/b/e;

    invoke-interface {v0}, Lorg/apache/b/a/b/e;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/b/a/f/g;->l:I

    if-ne v1, v2, :cond_3a

    iput v5, p0, Lorg/apache/b/a/f/g;->g:I

    goto :goto_14

    :cond_3a
    invoke-static {v0}, Lorg/apache/b/a/g/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/b/a/f/g;->g:I

    invoke-direct {p0}, Lorg/apache/b/a/f/g;->m()V

    goto :goto_14

    :cond_47
    iget v1, p0, Lorg/apache/b/a/f/g;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5a

    invoke-static {v0}, Lorg/apache/b/a/g/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, -0x3

    iput v0, p0, Lorg/apache/b/a/f/g;->g:I

    invoke-direct {p0}, Lorg/apache/b/a/f/g;->o()Lorg/apache/b/a/f/d;

    move-result-object v0

    goto :goto_15

    :cond_5a
    iput v5, p0, Lorg/apache/b/a/f/g;->g:I

    goto :goto_14

    :pswitch_5d
    iget-object v0, p0, Lorg/apache/b/a/f/g;->n:Lorg/apache/b/a/d/f;

    invoke-virtual {v0}, Lorg/apache/b/a/d/f;->b()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-direct {p0}, Lorg/apache/b/a/f/g;->n()V

    iput v3, p0, Lorg/apache/b/a/f/g;->g:I

    goto :goto_14

    :cond_6b
    invoke-direct {p0}, Lorg/apache/b/a/f/g;->l()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/b/a/f/g;->g:I

    goto :goto_14

    :pswitch_73
    invoke-direct {p0}, Lorg/apache/b/a/f/g;->n()V

    iget-object v0, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    invoke-virtual {v0}, Lorg/apache/b/a/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-direct {p0}, Lorg/apache/b/a/f/g;->m()V

    iput v3, p0, Lorg/apache/b/a/f/g;->g:I

    goto :goto_14

    :cond_84
    invoke-direct {p0}, Lorg/apache/b/a/f/g;->m()V

    invoke-direct {p0}, Lorg/apache/b/a/f/g;->l()V

    iput v4, p0, Lorg/apache/b/a/f/g;->g:I

    invoke-direct {p0}, Lorg/apache/b/a/f/g;->p()Lorg/apache/b/a/f/d;

    move-result-object v0

    goto :goto_15

    :pswitch_91
    invoke-direct {p0}, Lorg/apache/b/a/f/g;->n()V

    iget-object v0, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    invoke-virtual {v0}, Lorg/apache/b/a/d/i;->b()Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    invoke-virtual {v0}, Lorg/apache/b/a/d/i;->a()Z

    move-result v0

    if-nez v0, :cond_b2

    sget-object v0, Lorg/apache/b/a/f/f;->a:Lorg/apache/b/a/f/f;

    invoke-virtual {p0, v0}, Lorg/apache/b/a/f/g;->a(Lorg/apache/b/a/f/f;)V

    :cond_a9
    invoke-direct {p0}, Lorg/apache/b/a/f/g;->m()V

    const/16 v0, 0x9

    iput v0, p0, Lorg/apache/b/a/f/g;->g:I

    goto/16 :goto_14

    :cond_b2
    iget-object v0, p0, Lorg/apache/b/a/f/g;->m:Lorg/apache/b/a/d/i;

    invoke-virtual {v0}, Lorg/apache/b/a/d/i;->a()Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-direct {p0}, Lorg/apache/b/a/f/g;->m()V

    invoke-direct {p0}, Lorg/apache/b/a/f/g;->l()V

    iput v4, p0, Lorg/apache/b/a/f/g;->g:I

    invoke-direct {p0}, Lorg/apache/b/a/f/g;->p()Lorg/apache/b/a/f/d;

    move-result-object v0

    goto/16 :goto_15

    :pswitch_c8
    iput v3, p0, Lorg/apache/b/a/f/g;->g:I

    goto/16 :goto_14

    :pswitch_cc
    iget v0, p0, Lorg/apache/b/a/f/g;->d:I

    iput v0, p0, Lorg/apache/b/a/f/g;->g:I

    goto/16 :goto_14

    :cond_d2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/b/a/f/g;->g:I

    invoke-static {v2}, Lorg/apache/b/a/f/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_f2
    .packed-switch -0x3
        :pswitch_cc
        :pswitch_91
        :pswitch_b
        :pswitch_16
        :pswitch_b
        :pswitch_b
        :pswitch_23
        :pswitch_23
        :pswitch_2d
        :pswitch_5d
        :pswitch_cc
        :pswitch_73
        :pswitch_c8
        :pswitch_20
        :pswitch_b
        :pswitch_cc
    .end packed-switch
.end method

.method public j()Ljava/io/InputStream;
    .registers 4

    iget v0, p0, Lorg/apache/b/a/f/g;->g:I

    packed-switch v0, :pswitch_data_2a

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/b/a/f/g;->g:I

    invoke-static {v2}, Lorg/apache/b/a/f/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    invoke-direct {p0}, Lorg/apache/b/a/f/g;->q()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x6
        :pswitch_24
        :pswitch_5
        :pswitch_24
        :pswitch_24
        :pswitch_5
        :pswitch_5
        :pswitch_24
    .end packed-switch
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lorg/apache/b/a/f/g;->l:I

    return v0
.end method
