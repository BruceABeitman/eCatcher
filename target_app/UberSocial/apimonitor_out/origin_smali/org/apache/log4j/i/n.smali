.class public final Lorg/apache/log4j/i/n;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"


# static fields
.field private static final a:Lorg/apache/log4j/i/n;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/log4j/i/n;

    invoke-direct {v0}, Lorg/apache/log4j/i/n;-><init>()V

    sput-object v0, Lorg/apache/log4j/i/n;->a:Lorg/apache/log4j/i/n;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-string v0, "Line Sep"

    const-string v1, "lineSep"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/log4j/u;->h:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/i/n;->b:Ljava/lang/String;

    return-void
.end method

.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/n;
    .registers 2

    sget-object v0, Lorg/apache/log4j/i/n;->a:Lorg/apache/log4j/i/n;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/i/n;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/i/n;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
