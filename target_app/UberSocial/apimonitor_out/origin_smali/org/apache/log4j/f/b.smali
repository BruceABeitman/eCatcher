.class public Lorg/apache/log4j/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/k/b;


# static fields
.field static a:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static a()V
    .registers 4

    const-string v1, "/org/apache/log4j/lf5/config/defaultconfig.properties"

    sget-object v0, Lorg/apache/log4j/f/b;->a:Ljava/lang/Class;

    if-nez v0, :cond_18

    const-string v0, "org.apache.log4j.f.b"

    invoke-static {v0}, Lorg/apache/log4j/f/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/f/b;->a:Ljava/lang/Class;

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lorg/apache/log4j/ah;->a(Ljava/net/URL;)V

    return-void

    :cond_18
    sget-object v0, Lorg/apache/log4j/f/b;->a:Ljava/lang/Class;

    goto :goto_e

    :cond_1b
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error: Unable to open the resource"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Lorg/apache/log4j/k/j;)V
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class should NOT be instantiated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/net/URL;Lorg/apache/log4j/k/j;)V
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class should NOT be instantiated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
