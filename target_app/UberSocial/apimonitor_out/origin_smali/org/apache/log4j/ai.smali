.class Lorg/apache/log4j/ai;
.super Lorg/apache/log4j/c/h;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/log4j/c/h;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v0, Lorg/apache/log4j/ah;

    invoke-direct {v0}, Lorg/apache/log4j/ah;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/ai;->b:Ljava/lang/String;

    invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/ah;->a(Ljava/lang/String;Lorg/apache/log4j/k/j;)V

    return-void
.end method
