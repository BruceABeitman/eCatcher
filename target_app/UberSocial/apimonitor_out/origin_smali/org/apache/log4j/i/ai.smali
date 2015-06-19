.class public Lorg/apache/log4j/i/ai;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"


# static fields
.field private static final a:Lorg/apache/log4j/i/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/log4j/i/ai;

    invoke-direct {v0}, Lorg/apache/log4j/i/ai;-><init>()V

    sput-object v0, Lorg/apache/log4j/i/ai;->a:Lorg/apache/log4j/i/ai;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-string v0, "Sequence Number"

    const-string v1, "sn"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/ai;
    .registers 2

    sget-object v0, Lorg/apache/log4j/i/ai;->a:Lorg/apache/log4j/i/ai;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
    .registers 4

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
