.class public Lorg/apache/b/a/c/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/c/l;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/c/k;
.registers 6
invoke-static {p2}, Lorg/apache/b/a/a/f;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/b/a/c/q;
invoke-direct {v1, p1, p2, p3, v0}, Lorg/apache/b/a/c/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v1
.end method