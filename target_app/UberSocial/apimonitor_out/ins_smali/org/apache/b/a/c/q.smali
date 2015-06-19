.class public Lorg/apache/b/a/c/q;
.super Lorg/apache/b/a/c/k;
.source "SourceFile"
.field private a:Ljava/lang/String;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lorg/apache/b/a/c/q;->a:Ljava/lang/String;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/q;->a:Ljava/lang/String;
return-object v0
.end method