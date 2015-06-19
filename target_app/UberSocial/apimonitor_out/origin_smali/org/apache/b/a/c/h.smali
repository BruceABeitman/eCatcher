.class public Lorg/apache/b/a/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/b/a/c/l;


# static fields
.field private static a:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/b/a/c/g;->a:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.b.a.c.h"

    invoke-static {v0}, Lorg/apache/b/a/c/g;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/c/g;->a:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/c/h;->a:Lorg/apache/commons/logging/Log;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/b/a/c/g;->a:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/c/k;
    .registers 10

    const/4 v5, 0x0

    :try_start_1
    new-instance v0, Lorg/apache/b/a/c/c/a/a;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/b/a/c/c/a/a;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Lorg/apache/b/a/c/c/a/a;->b()Lorg/apache/b/a/c/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/b/a/c/c/a;->a()Ljava/util/Date;
    :try_end_12
    .catch Lorg/apache/b/a/c/c/a/i; {:try_start_1 .. :try_end_12} :catch_1c
    .catch Lorg/apache/b/a/c/c/a/f; {:try_start_1 .. :try_end_12} :catch_27

    move-result-object v4

    :goto_13
    new-instance v0, Lorg/apache/b/a/c/g;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/b/a/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lorg/apache/b/a/c/c/a/f;)V

    return-object v0

    :catch_1c
    move-exception v0

    :try_start_1d
    new-instance v1, Lorg/apache/b/a/c/c/a/f;

    invoke-virtual {v0}, Lorg/apache/b/a/c/c/a/i;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/b/a/c/c/a/f;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_27
    .catch Lorg/apache/b/a/c/c/a/f; {:try_start_1d .. :try_end_27} :catch_27

    :catch_27
    move-exception v0

    sget-object v1, Lorg/apache/b/a/c/h;->a:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_56

    sget-object v1, Lorg/apache/b/a/c/h;->a:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parsing value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/b/a/c/c/a/f;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_56
    move-object v4, v5

    move-object v5, v0

    goto :goto_13
.end method
