.class  Lorg/apache/log4j/f/b/a/p;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/awt/event/ActionListener;
.field private final a:Lorg/apache/log4j/f/b/a/i;
.field private final b:Lorg/apache/log4j/f/b/a/j;
.method constructor <init>(Lorg/apache/log4j/f/b/a/j;Lorg/apache/log4j/f/b/a/i;)V
.registers 3
iput-object p1, p0, Lorg/apache/log4j/f/b/a/p;->b:Lorg/apache/log4j/f/b/a/j;
iput-object p2, p0, Lorg/apache/log4j/f/b/a/p;->a:Lorg/apache/log4j/f/b/a/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/awt/event/ActionEvent;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/f/b/a/p;->b:Lorg/apache/log4j/f/b/a/j;
iget-object v1, p0, Lorg/apache/log4j/f/b/a/p;->a:Lorg/apache/log4j/f/b/a/i;
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/a/j;->h(Lorg/apache/log4j/f/b/a/i;)V
return-void
.end method