.class public Lcom/sun/mail/iap/ByteArray;
.super Ljava/lang/Object;
.source "SourceFile"
.field private bytes:[B
.field private count:I
.field private start:I
.method public constructor <init>(I)V
.registers 4
new-array v0, p1, [B
const/4 v1, 0x0
invoke-direct {p0, v0, v1, p1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V
return-void
.end method
.method public constructor <init>([BII)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B
iput p2, p0, Lcom/sun/mail/iap/ByteArray;->start:I
iput p3, p0, Lcom/sun/mail/iap/ByteArray;->count:I
return-void
.end method
.method public getBytes()[B
.registers 2
iget-object v0, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B
return-object v0
.end method
.method public getCount()I
.registers 2
iget v0, p0, Lcom/sun/mail/iap/ByteArray;->count:I
return v0
.end method
.method public getNewBytes()[B
.registers 6
iget v0, p0, Lcom/sun/mail/iap/ByteArray;->count:I
new-array v0, v0, [B
iget-object v1, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B
iget v2, p0, Lcom/sun/mail/iap/ByteArray;->start:I
const/4 v3, 0x0
iget v4, p0, Lcom/sun/mail/iap/ByteArray;->count:I
invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
.end method
.method public getStart()I
.registers 2
iget v0, p0, Lcom/sun/mail/iap/ByteArray;->start:I
return v0
.end method
.method public grow(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B
array-length v0, v0
add-int/2addr v0, p1
new-array v0, v0, [B
iget-object v1, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B
iget-object v2, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B
array-length v2, v2
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B
return-void
.end method
.method public setCount(I)V
.registers 2
iput p1, p0, Lcom/sun/mail/iap/ByteArray;->count:I
return-void
.end method
.method public toByteArrayInputStream()Ljava/io/ByteArrayInputStream;
.registers 5
new-instance v0, Ljava/io/ByteArrayInputStream;
iget-object v1, p0, Lcom/sun/mail/iap/ByteArray;->bytes:[B
iget v2, p0, Lcom/sun/mail/iap/ByteArray;->start:I
iget v3, p0, Lcom/sun/mail/iap/ByteArray;->count:I
invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
return-object v0
.end method