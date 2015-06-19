.class Lorg/apache/log4j/c/v;
.super Lorg/apache/log4j/c/q;
.source "SourceFile"


# instance fields
.field private f:Ljava/text/DateFormat;

.field private g:Ljava/util/Date;


# direct methods
.method constructor <init>(Lorg/apache/log4j/c/i;Ljava/text/DateFormat;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/apache/log4j/c/q;-><init>(Lorg/apache/log4j/c/i;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/c/v;->g:Ljava/util/Date;

    iput-object p2, p0, Lorg/apache/log4j/c/v;->f:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/c/v;->g:Ljava/util/Date;

    iget-wide v1, p1, Lorg/apache/log4j/k/k;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lorg/apache/log4j/c/v;->f:Ljava/text/DateFormat;

    iget-object v2, p0, Lorg/apache/log4j/c/v;->g:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    const-string v2, "Error occured while converting date."

    invoke-static {v2, v1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method
