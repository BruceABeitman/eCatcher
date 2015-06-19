.class public Lcom/fsck/k9/mail/transport/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "CountingOutputStream.java"
.field private mCount:J
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
return-void
.end method
.method public getCount()J
.registers 3
iget-wide v0, p0, Lcom/fsck/k9/mail/transport/CountingOutputStream;->mCount:J
return-wide v0
.end method
.method public write(I)V
.registers 6
iget-wide v0, p0, Lcom/fsck/k9/mail/transport/CountingOutputStream;->mCount:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/fsck/k9/mail/transport/CountingOutputStream;->mCount:J
return-void
.end method