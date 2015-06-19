.class Lorg/apache/log4j/i/w;
.super Lorg/apache/log4j/i/v;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/log4j/i/v;-><init>()V

    iput p1, p0, Lorg/apache/log4j/i/w;->a:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/StringBuffer;)V
    .registers 6

    iget v1, p0, Lorg/apache/log4j/i/w;->a:I

    const-string v0, "."

    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_8
    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_15

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_14
    return-void

    :cond_15
    const-string v2, "."

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_8
.end method
