.class Lorg/apache/log4j/f/b/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/log4j/f/b/d;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/d;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/f/b/af;->a:Lorg/apache/log4j/f/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/f/b/af;->a:Lorg/apache/log4j/f/b/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
