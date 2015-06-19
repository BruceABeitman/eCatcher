.class public Lorg/apache/log4j/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lorg/apache/log4j/f/b/d;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/f/b/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/f/a;->a:Lorg/apache/log4j/f/b/d;

    iput-object p1, p0, Lorg/apache/log4j/f/a;->a:Lorg/apache/log4j/f/b/d;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Disposing of the default LogBrokerMonitor instance"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/f/a;->a:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->b()V

    return-void
.end method
