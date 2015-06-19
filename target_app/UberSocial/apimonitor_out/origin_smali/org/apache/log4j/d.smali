.class final Lorg/apache/log4j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/apache/log4j/k/k;

.field private b:I


# direct methods
.method public constructor <init>(Lorg/apache/log4j/k/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/d;->a:Lorg/apache/log4j/k/k;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/d;->b:I

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/log4j/k/k;
    .registers 7

    const-string v0, "Discarded {0} messages due to full event buffer including: {1}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lorg/apache/log4j/d;->b:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/log4j/d;->a:Lorg/apache/log4j/k/k;

    invoke-virtual {v3}, Lorg/apache/log4j/k/k;->e()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lorg/apache/log4j/k/k;

    const-string v1, "org.apache.log4j.AsyncAppender.DONT_REPORT_LOCATION"

    iget-object v2, p0, Lorg/apache/log4j/d;->a:Lorg/apache/log4j/k/k;

    invoke-virtual {v2}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/aa;->g(Ljava/lang/String;)Lorg/apache/log4j/aa;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/d;->a:Lorg/apache/log4j/k/k;

    invoke-virtual {v3}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/k/k;-><init>(Ljava/lang/String;Lorg/apache/log4j/g;Lorg/apache/log4j/ag;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(Lorg/apache/log4j/k/k;)V
    .registers 4

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/v;->c()I

    move-result v0

    iget-object v1, p0, Lorg/apache/log4j/d;->a:Lorg/apache/log4j/k/k;

    invoke-virtual {v1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/v;->c()I

    move-result v1

    if-le v0, v1, :cond_16

    iput-object p1, p0, Lorg/apache/log4j/d;->a:Lorg/apache/log4j/k/k;

    :cond_16
    iget v0, p0, Lorg/apache/log4j/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/d;->b:I

    return-void
.end method
