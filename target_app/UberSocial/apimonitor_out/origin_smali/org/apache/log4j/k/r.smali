.class public final Lorg/apache/log4j/k/r;
.super Lorg/apache/log4j/aa;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/log4j/v;)V
    .registers 3

    const-string v0, "root"

    invoke-direct {p0, v0}, Lorg/apache/log4j/aa;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/log4j/k/r;->a(Lorg/apache/log4j/v;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/log4j/v;)V
    .registers 4

    if-nez p1, :cond_d

    const-string v0, "You have tried to set a null level to root."

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void

    :cond_d
    iput-object p1, p0, Lorg/apache/log4j/k/r;->b:Lorg/apache/log4j/v;

    goto :goto_c
.end method

.method public final b(Lorg/apache/log4j/v;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/log4j/k/r;->a(Lorg/apache/log4j/v;)V

    return-void
.end method

.method public final v()Lorg/apache/log4j/v;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/k/r;->b:Lorg/apache/log4j/v;

    return-object v0
.end method
