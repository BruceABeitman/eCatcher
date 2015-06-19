.class Lorg/apache/log4j/f/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:Lorg/apache/log4j/f/b/d;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/d;I)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/f/b/e;->b:Lorg/apache/log4j/f/b/d;

    iput p2, p0, Lorg/apache/log4j/f/b/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lorg/apache/log4j/f/b/e;->b:Lorg/apache/log4j/f/b/d;

    iget v1, p0, Lorg/apache/log4j/f/b/e;->a:I

    invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/d;->f(I)V

    iget-object v0, p0, Lorg/apache/log4j/f/b/e;->b:Lorg/apache/log4j/f/b/d;

    iget-object v0, v0, Lorg/apache/log4j/f/b/d;->b:Ljavax/swing/JFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setVisible(Z)V

    return-void
.end method
