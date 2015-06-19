.class public abstract Lorg/apache/log4j/f/a/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:I = 0x800
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 3
const/16 v0, 0x800
invoke-static {p0, p1, v0}, Lorg/apache/log4j/f/a/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
return-void
.end method
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
.registers 6
new-array v1, p2, [B
invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
move-result v0
:goto_6
const/4 v2, -0x1
if-eq v0, v2, :cond_12
const/4 v2, 0x0
invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I
move-result v0
goto :goto_6
:cond_12
invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public static a(Ljava/io/InputStream;)[B
.registers 2
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {p0, v0}, Lorg/apache/log4j/f/a/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 2
invoke-static {p0, p1}, Lorg/apache/log4j/f/a/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
return-void
.end method