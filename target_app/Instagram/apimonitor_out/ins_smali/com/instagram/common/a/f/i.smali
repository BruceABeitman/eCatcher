.class final Lcom/instagram/common/a/f/i;
.super Ljava/lang/Object;
.source "StringComponent.java"
.implements Lcom/instagram/common/a/f/b;
.field private final a:[B
.method public varargs constructor <init>([Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, ""
invoke-static {v0}, Lcom/instagram/common/i/a/b;->a(Ljava/lang/String;)Lcom/instagram/common/i/a/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/common/i/a/b;->a([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/a/f/i;->a:[B
return-void
.end method
.method public final a()J
.registers 3
iget-object v0, p0, Lcom/instagram/common/a/f/i;->a:[B
array-length v0, v0
int-to-long v0, v0
return-wide v0
.end method
.method public final a(Ljava/io/OutputStream;Lcom/instagram/common/a/f/c;)V
.registers 5
const-wide/16 v0, 0x0
invoke-virtual {p2, v0, v1}, Lcom/instagram/common/a/f/c;->a(J)V
iget-object v0, p0, Lcom/instagram/common/a/f/i;->a:[B
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
return-void
.end method