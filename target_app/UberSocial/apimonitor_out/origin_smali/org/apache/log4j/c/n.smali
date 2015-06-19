.class public Lorg/apache/log4j/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final a:Lorg/apache/log4j/c/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/log4j/c/n;

    invoke-direct {v0}, Lorg/apache/log4j/c/n;-><init>()V

    sput-object v0, Lorg/apache/log4j/c/n;->a:Lorg/apache/log4j/c/n;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/apache/log4j/c/n;
    .registers 1

    sget-object v0, Lorg/apache/log4j/c/n;->a:Lorg/apache/log4j/c/n;

    return-object v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
