.class Lorg/apache/log4j/a/k;
.super Ljavax/swing/AbstractAction;
.source "SourceFile"


# static fields
.field public static final a:Lorg/apache/log4j/a/k;

.field static b:Ljava/lang/Class;

.field private static final c:Lorg/apache/log4j/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/apache/log4j/a/k;->b:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "org.apache.log4j.a.k"

    invoke-static {v0}, Lorg/apache/log4j/a/k;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/a/k;->b:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/a/k;->c:Lorg/apache/log4j/aa;

    new-instance v0, Lorg/apache/log4j/a/k;

    invoke-direct {v0}, Lorg/apache/log4j/a/k;-><init>()V

    sput-object v0, Lorg/apache/log4j/a/k;->a:Lorg/apache/log4j/a/k;

    return-void

    :cond_1a
    sget-object v0, Lorg/apache/log4j/a/k;->b:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

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


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 4

    sget-object v0, Lorg/apache/log4j/a/k;->c:Lorg/apache/log4j/aa;

    const-string v1, "shutting down"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
