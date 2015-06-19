.class Lorg/apache/log4j/c/w;
.super Lorg/apache/log4j/c/q;
.source "SourceFile"


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/log4j/c/q;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/c/w;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/c/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuffer;Lorg/apache/log4j/k/k;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/c/w;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
