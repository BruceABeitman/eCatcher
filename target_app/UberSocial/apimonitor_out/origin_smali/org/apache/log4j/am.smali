.class public Lorg/apache/log4j/am;
.super Lorg/apache/log4j/u;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/apache/log4j/u;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/am;->a:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/am;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/apache/log4j/am;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/am;->a:Ljava/lang/StringBuffer;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/am;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/am;->a:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/log4j/am;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/am;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()V
    .registers 1

    return-void
.end method
