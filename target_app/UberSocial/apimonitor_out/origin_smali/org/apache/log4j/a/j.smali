.class Lorg/apache/log4j/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Lorg/apache/log4j/ag;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:[Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method constructor <init>(JLorg/apache/log4j/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/log4j/a/j;->a:J

    iput-object p3, p0, Lorg/apache/log4j/a/j;->b:Lorg/apache/log4j/ag;

    iput-object p4, p0, Lorg/apache/log4j/a/j;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/log4j/a/j;->d:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/log4j/a/j;->e:Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/log4j/a/j;->f:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/log4j/a/j;->g:[Ljava/lang/String;

    iput-object p9, p0, Lorg/apache/log4j/a/j;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/k/k;)V
    .registers 12

    iget-wide v1, p1, Lorg/apache/log4j/k/k;->d:J

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;

    move-result-object v0

    if-nez v0, :cond_26

    const/4 v9, 0x0

    :goto_21
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/apache/log4j/a/j;-><init>(JLorg/apache/log4j/ag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;

    move-result-object v0

    iget-object v9, v0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    goto :goto_21
.end method


# virtual methods
.method a()J
    .registers 3

    iget-wide v0, p0, Lorg/apache/log4j/a/j;->a:J

    return-wide v0
.end method

.method b()Lorg/apache/log4j/ag;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/a/j;->b:Lorg/apache/log4j/ag;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/a/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/a/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/a/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/a/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/a/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method h()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/a/j;->g:[Ljava/lang/String;

    return-object v0
.end method
