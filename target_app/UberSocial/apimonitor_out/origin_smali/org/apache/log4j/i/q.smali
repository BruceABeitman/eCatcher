.class public final Lorg/apache/log4j/i/q;
.super Lorg/apache/log4j/i/ab;
.source "SourceFile"


# static fields
.field private static final a:Lorg/apache/log4j/i/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/apache/log4j/i/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/log4j/i/q;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/i/q;->a:Lorg/apache/log4j/i/q;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .registers 4

    const-string v0, "Logger"

    const-string v1, "logger"

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/log4j/i/ab;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/q;
    .registers 2

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    :cond_5
    sget-object v0, Lorg/apache/log4j/i/q;->a:Lorg/apache/log4j/i/q;

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lorg/apache/log4j/i/q;

    invoke-direct {v0, p0}, Lorg/apache/log4j/i/q;-><init>([Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
    .registers 5

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/i/q;->a(ILjava/lang/StringBuffer;)V

    return-void
.end method
