.class  Lorg/apache/log4j/f/b/p;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Lorg/apache/log4j/f/g;
.field private final b:Lorg/apache/log4j/f/b/d;
.method constructor <init>(Lorg/apache/log4j/f/b/d;Lorg/apache/log4j/f/g;)V
.registers 3
iput-object p1, p0, Lorg/apache/log4j/f/b/p;->b:Lorg/apache/log4j/f/b/d;
iput-object p2, p0, Lorg/apache/log4j/f/b/p;->a:Lorg/apache/log4j/f/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lorg/apache/log4j/f/b/p;->b:Lorg/apache/log4j/f/b/d;
iget-object v0, v0, Lorg/apache/log4j/f/b/d;->f:Lorg/apache/log4j/f/b/a/f;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/a/f;->a()Lorg/apache/log4j/f/b/a/d;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/f/b/p;->a:Lorg/apache/log4j/f/g;
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/a/d;->a(Lorg/apache/log4j/f/g;)V
iget-object v0, p0, Lorg/apache/log4j/f/b/p;->b:Lorg/apache/log4j/f/b/d;
iget-object v0, v0, Lorg/apache/log4j/f/b/d;->e:Lorg/apache/log4j/f/b/at;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/at;->c()Lorg/apache/log4j/f/b/a;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/f/b/p;->a:Lorg/apache/log4j/f/g;
invoke-virtual {v0, v1}, Lorg/apache/log4j/f/b/a;->a(Lorg/apache/log4j/f/g;)Z
iget-object v0, p0, Lorg/apache/log4j/f/b/p;->b:Lorg/apache/log4j/f/b/d;
invoke-virtual {v0}, Lorg/apache/log4j/f/b/d;->s()V
return-void
.end method