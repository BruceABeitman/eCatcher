.class  Lorg/apache/log4j/f/b/a/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/awt/event/ActionListener;
.field private final a:Lorg/apache/log4j/f/b/a/i;
.field private final b:Lorg/apache/log4j/f/b/a/j;
.method constructor <init>(Lorg/apache/log4j/f/b/a/j;Lorg/apache/log4j/f/b/a/i;)V
.registers 3
iput-object p1, p0, Lorg/apache/log4j/f/b/a/n;->b:Lorg/apache/log4j/f/b/a/j;
iput-object p2, p0, Lorg/apache/log4j/f/b/a/n;->a:Lorg/apache/log4j/f/b/a/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/awt/event/ActionEvent;)V
.registers 5
iget-object v0, p0, Lorg/apache/log4j/f/b/a/n;->b:Lorg/apache/log4j/f/b/a/j;
iget-object v0, v0, Lorg/apache/log4j/f/b/a/j;->i:Lorg/apache/log4j/f/b/a/d;
iget-object v1, p0, Lorg/apache/log4j/f/b/a/n;->a:Lorg/apache/log4j/f/b/a/i;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/f/b/a/d;->b(Lorg/apache/log4j/f/b/a/i;Z)V
return-void
.end method