.class public final Lorg/apache/log4j/i/m;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"


# static fields
.field private static final a:Lorg/apache/log4j/i/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/log4j/i/m;

    invoke-direct {v0}, Lorg/apache/log4j/i/m;-><init>()V

    sput-object v0, Lorg/apache/log4j/i/m;->a:Lorg/apache/log4j/i/m;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-string v0, "Line"

    const-string v1, "line"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/m;
    .registers 2

    sget-object v0, Lorg/apache/log4j/i/m;->a:Lorg/apache/log4j/i/m;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
    .registers 4

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/apache/log4j/k/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    return-void
.end method
