.class public Lorg/apache/b/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:I = 0x400
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
.registers 2
new-instance v0, Lorg/apache/b/a/a/c;
invoke-direct {v0, p0}, Lorg/apache/b/a/a/c;-><init>(Ljava/io/OutputStream;)V
return-object v0
.end method
.method public static a(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
.registers 3
new-instance v0, Lorg/apache/b/a/a/j;
invoke-direct {v0, p0, p1}, Lorg/apache/b/a/a/j;-><init>(Ljava/io/OutputStream;Z)V
return-object v0
.end method
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 5
const/16 v0, 0x400
new-array v0, v0, [B
:goto_4
const/4 v1, -0x1
invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
move-result v2
if-eq v1, v2, :cond_10
const/4 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
goto :goto_4
:cond_10
return-void
.end method
.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 5
new-instance v0, Lorg/apache/b/a/a/h;
const/16 v1, 0x400
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Lorg/apache/b/a/a/h;-><init>(IZ)V
invoke-virtual {v0, p0, p1}, Lorg/apache/b/a/a/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
return-void
.end method
.method public static c(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 5
new-instance v0, Lorg/apache/b/a/a/h;
const/16 v1, 0x400
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lorg/apache/b/a/a/h;-><init>(IZ)V
invoke-virtual {v0, p0, p1}, Lorg/apache/b/a/a/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
return-void
.end method
.method public static d(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 4
new-instance v0, Lorg/apache/b/a/a/a;
const/16 v1, 0x400
invoke-direct {v0, v1}, Lorg/apache/b/a/a/a;-><init>(I)V
invoke-virtual {v0, p0, p1}, Lorg/apache/b/a/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
return-void
.end method