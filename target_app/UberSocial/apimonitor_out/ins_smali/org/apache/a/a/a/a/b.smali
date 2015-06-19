.class public Lorg/apache/a/a/a/a/b;
.super Lorg/apache/a/a/a/a/a;
.source "SourceFile"
.field private final a:[B
.field private final b:Ljava/lang/String;
.method public constructor <init>([BLjava/lang/String;)V
.registers 4
const-string v0, "application/octet-stream"
invoke-direct {p0, p1, v0, p2}, Lorg/apache/a/a/a/a/b;-><init>([BLjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0, p2}, Lorg/apache/a/a/a/a/a;-><init>(Ljava/lang/String;)V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "byte[] may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lorg/apache/a/a/a/a/b;->a:[B
iput-object p3, p0, Lorg/apache/a/a/a/a/b;->b:Ljava/lang/String;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/a/a/a/a/b;->b:Ljava/lang/String;
return-object v0
.end method
.method public a(Ljava/io/OutputStream;)V
.registers 3
iget-object v0, p0, Lorg/apache/a/a/a/a/b;->a:[B
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public c()J
.registers 3
iget-object v0, p0, Lorg/apache/a/a/a/a/b;->a:[B
array-length v0, v0
int-to-long v0, v0
return-wide v0
.end method
.method public d()Ljava/lang/String;
.registers 2
const-string v0, "binary"
return-object v0
.end method