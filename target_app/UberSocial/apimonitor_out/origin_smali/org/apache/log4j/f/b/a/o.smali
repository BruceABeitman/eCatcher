.class Lorg/apache/log4j/f/b/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final a:Lorg/apache/log4j/f/b/a/i;

.field private final b:Lorg/apache/log4j/f/b/a/j;


# direct methods
.method constructor <init>(Lorg/apache/log4j/f/b/a/j;Lorg/apache/log4j/f/b/a/i;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/log4j/f/b/a/o;->b:Lorg/apache/log4j/f/b/a/j;

    iput-object p2, p0, Lorg/apache/log4j/f/b/a/o;->a:Lorg/apache/log4j/f/b/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/awt/event/ActionEvent;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/f/b/a/o;->b:Lorg/apache/log4j/f/b/a/j;

    iget-object v0, v0, Lorg/apache/log4j/f/b/a/j;->i:Lorg/apache/log4j/f/b/a/d;

    iget-object v1, p0, Lorg/apache/log4j/f/b/a/o;->a:Lorg/apache/log4j/f/b/a/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/f/b/a/d;->b(Lorg/apache/log4j/f/b/a/i;Z)V

    return-void
.end method
