.class public final Lorg/apache/log4j/i/o;
.super Lorg/apache/log4j/i/r;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "Literal"

    const-string v1, "literal"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/i/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/log4j/i/o;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/i/o;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public a(Lorg/apache/log4j/k/k;Ljava/lang/StringBuffer;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/i/o;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
