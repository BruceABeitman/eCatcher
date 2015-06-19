.class final Lcom/a/a/bi;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/a/a/a/bv;
.field private synthetic a:[B
.field private synthetic b:[I
.method constructor <init>(Lcom/a/a/bf;[B[I)V
.registers 4
iput-object p2, p0, Lcom/a/a/bi;->a:[B
iput-object p3, p0, Lcom/a/a/bi;->b:[I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/io/InputStream;I)V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/a/a/bi;->a:[B
iget-object v1, p0, Lcom/a/a/bi;->b:[I
const/4 v2, 0x0
aget v1, v1, v2
invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I
iget-object v0, p0, Lcom/a/a/bi;->b:[I
const/4 v1, 0x0
aget v2, v0, v1
add-int/2addr v2, p2
aput v2, v0, v1
:try_end_12
.catchall {:try_start_0 .. :try_end_12} :catchall_16
invoke-virtual {p1}, Ljava/io/InputStream;->close()V
return-void
:catchall_16
move-exception v0
invoke-virtual {p1}, Ljava/io/InputStream;->close()V
throw v0
.end method