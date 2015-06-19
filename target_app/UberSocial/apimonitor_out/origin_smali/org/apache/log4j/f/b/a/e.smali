.class Lorg/apache/log4j/f/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/log4j/f/b/a/i;

.field private final b:Lorg/apache/log4j/f/b/a/d;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/a/d;Lorg/apache/log4j/f/b/a/i;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/f/b/a/e;->b:Lorg/apache/log4j/f/b/a/d;

    iput-object p2, p0, Lorg/apache/log4j/f/b/a/e;->a:Lorg/apache/log4j/f/b/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/e;->b:Lorg/apache/log4j/f/b/a/d;

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/e;->a:Lorg/apache/log4j/f/b/a/i;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/a/d;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    return-void
.end method
