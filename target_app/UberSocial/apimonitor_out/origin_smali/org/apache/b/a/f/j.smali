.class public Lorg/apache/b/a/f/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/apache/b/a/f/c;

.field private b:Z

.field private final c:Lorg/apache/b/a/f/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/b/a/f/j;-><init>(Lorg/apache/b/a/f/h;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/b/a/f/h;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    if-eqz p1, :cond_20

    :try_start_8
    invoke-virtual {p1}, Lorg/apache/b/a/f/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/b/a/f/h;
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_8 .. :try_end_e} :catch_19

    :goto_e
    new-instance v1, Lorg/apache/b/a/f/k;

    invoke-direct {v1, v0}, Lorg/apache/b/a/f/k;-><init>(Lorg/apache/b/a/f/h;)V

    iput-object v1, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/b/a/f/j;->b:Z

    return-void

    :catch_19
    move-exception v0

    new-instance v0, Lorg/apache/b/a/f/h;

    invoke-direct {v0}, Lorg/apache/b/a/f/h;-><init>()V

    goto :goto_e

    :cond_20
    new-instance v0, Lorg/apache/b/a/f/h;

    invoke-direct {v0}, Lorg/apache/b/a/f/h;-><init>()V

    goto :goto_e
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .registers 6

    iget-object v0, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v0, p1}, Lorg/apache/b/a/f/k;->a(Ljava/io/InputStream;)V

    :goto_5
    iget-object v0, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v0}, Lorg/apache/b/a/f/k;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_b0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_27
    iget-object v0, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v0}, Lorg/apache/b/a/f/k;->j()Lorg/apache/b/a/b/a;

    move-result-object v1

    iget-boolean v0, p0, Lorg/apache/b/a/f/j;->b:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v0}, Lorg/apache/b/a/f/k;->h()Ljava/io/InputStream;

    move-result-object v0

    :goto_37
    iget-object v2, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    invoke-interface {v2, v1, v0}, Lorg/apache/b/a/f/c;->a(Lorg/apache/b/a/b/a;Ljava/io/InputStream;)V

    :goto_3c
    iget-object v0, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v0}, Lorg/apache/b/a/f/k;->n()I

    goto :goto_5

    :cond_42
    iget-object v0, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v0}, Lorg/apache/b/a/f/k;->g()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_37

    :pswitch_49
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    invoke-interface {v0}, Lorg/apache/b/a/f/c;->g()V

    goto :goto_3c

    :pswitch_4f
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    invoke-interface {v0}, Lorg/apache/b/a/f/c;->a()V

    goto :goto_3c

    :pswitch_55
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    invoke-interface {v0}, Lorg/apache/b/a/f/c;->c()V

    goto :goto_3c

    :pswitch_5b
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    invoke-interface {v0}, Lorg/apache/b/a/f/c;->e()V

    goto :goto_3c

    :pswitch_61
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    iget-object v1, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v1}, Lorg/apache/b/a/f/k;->g()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/b/a/f/c;->a(Ljava/io/InputStream;)V

    goto :goto_3c

    :pswitch_6d
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    iget-object v1, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v1}, Lorg/apache/b/a/f/k;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/b/a/f/c;->a(Ljava/lang/String;)V

    goto :goto_3c

    :pswitch_79
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    iget-object v1, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v1}, Lorg/apache/b/a/f/k;->g()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/b/a/f/c;->b(Ljava/io/InputStream;)V

    goto :goto_3c

    :pswitch_85
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    iget-object v1, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v1}, Lorg/apache/b/a/f/k;->g()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/b/a/f/c;->c(Ljava/io/InputStream;)V

    goto :goto_3c

    :pswitch_91
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    invoke-interface {v0}, Lorg/apache/b/a/f/c;->f()V

    goto :goto_3c

    :pswitch_97
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    invoke-interface {v0}, Lorg/apache/b/a/f/c;->d()V

    goto :goto_3c

    :pswitch_9d
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    invoke-interface {v0}, Lorg/apache/b/a/f/c;->b()V

    goto :goto_3c

    :pswitch_a3
    iget-object v0, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    iget-object v1, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v1}, Lorg/apache/b/a/f/k;->j()Lorg/apache/b/a/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/b/a/f/c;->a(Lorg/apache/b/a/b/a;)V

    goto :goto_3c

    :pswitch_af
    return-void

    :pswitch_data_b0
    .packed-switch -0x1
        :pswitch_af
        :pswitch_9d
        :pswitch_55
        :pswitch_85
        :pswitch_97
        :pswitch_6d
        :pswitch_4f
        :pswitch_a3
        :pswitch_5b
        :pswitch_79
        :pswitch_61
        :pswitch_91
        :pswitch_49
        :pswitch_27
    .end packed-switch
.end method

.method public a(Lorg/apache/b/a/f/c;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/f/j;->a:Lorg/apache/b/a/f/c;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/b/a/f/j;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/b/a/f/j;->b:Z

    return v0
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/b/a/f/k;->a(I)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v0}, Lorg/apache/b/a/f/k;->c()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lorg/apache/b/a/f/j;->c:Lorg/apache/b/a/f/k;

    invoke-virtual {v0}, Lorg/apache/b/a/f/k;->e()V

    return-void
.end method
