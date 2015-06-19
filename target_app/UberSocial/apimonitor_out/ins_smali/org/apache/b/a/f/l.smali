.class public Lorg/apache/b/a/f/l;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/f/d;
.field private final a:Ljava/io/InputStream;
.field private b:I
.method constructor <init>(Ljava/io/InputStream;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/b/a/f/l;->a:Ljava/io/InputStream;
const/4 v0, 0x2
iput v0, p0, Lorg/apache/b/a/f/l;->b:I
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lorg/apache/b/a/f/l;->b:I
return v0
.end method
.method public b(I)V
.registers 2
return-void
.end method
.method public e()Lorg/apache/b/a/b/a;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public f()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public g()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public h()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public i()Lorg/apache/b/a/f/d;
.registers 2
const/4 v0, -0x1
iput v0, p0, Lorg/apache/b/a/f/l;->b:I
const/4 v0, 0x0
return-object v0
.end method
.method public j()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/f/l;->a:Ljava/io/InputStream;
return-object v0
.end method