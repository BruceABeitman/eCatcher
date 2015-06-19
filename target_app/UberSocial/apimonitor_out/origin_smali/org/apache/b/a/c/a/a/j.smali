.class public Lorg/apache/b/a/c/a/a/j;
.super Lorg/apache/b/a/c/a/a/y;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/b/a/c/a/a/y;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/b/a/c/a/a/l;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/b/a/c/a/a/y;-><init>(Lorg/apache/b/a/c/a/a/l;I)V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/b/a/c/a/a/s;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1, p0, p2}, Lorg/apache/b/a/c/a/a/s;->a(Lorg/apache/b/a/c/a/a/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
