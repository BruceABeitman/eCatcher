.class public final Lorg/apache/log4j/i/h;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"


# static fields
.field private static final a:Lorg/apache/log4j/i/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/log4j/i/h;

    invoke-direct {v0}, Lorg/apache/log4j/i/h;-><init>()V

    sput-object v0, Lorg/apache/log4j/i/h;->a:Lorg/apache/log4j/i/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-string v0, "File Location"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a([Ljava/lang/String;)Lorg/apache/log4j/i/h;
    .registers 2

    sget-object v0, Lorg/apache/log4j/i/h;->a:Lorg/apache/log4j/i/h;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
    .registers 4

    invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/apache/log4j/k/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    return-void
.end method
