.class public Lorg/apache/log4j/f/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/f/h;


# instance fields
.field protected a:Lorg/apache/log4j/f/b/a/d;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/f/b/a/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/f/b/a/c;->a:Lorg/apache/log4j/f/b/a/d;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-virtual {p0}, Lorg/apache/log4j/f/b/a/c;->b()V

    return-void
.end method

.method public a(Lorg/apache/log4j/f/g;)Z
    .registers 4

    new-instance v0, Lorg/apache/log4j/f/b/a/u;

    invoke-virtual {p1}, Lorg/apache/log4j/f/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/f/b/a/u;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/c;->a:Lorg/apache/log4j/f/b/a/d;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/f/b/a/d;->b(Lorg/apache/log4j/f/b/a/u;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/c;->a:Lorg/apache/log4j/f/b/a/d;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/d;->a()Lorg/apache/log4j/f/b/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/f/b/a/i;

    invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/i;->i()V

    iget-object v2, p0, Lorg/apache/log4j/f/b/a/c;->a:Lorg/apache/log4j/f/b/a/d;

    invoke-virtual {v2, v0}, Lorg/apache/log4j/f/b/a/d;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_a

    :cond_1f
    return-void
.end method
