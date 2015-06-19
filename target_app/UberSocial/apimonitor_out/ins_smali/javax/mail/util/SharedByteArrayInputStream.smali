.class public Ljavax/mail/util/SharedByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "SourceFile"
.implements Ljavax/mail/internet/SharedInputStream;
.field protected start:I
.method public constructor <init>([B)V
.registers 3
invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const/4 v0, 0x0
iput v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I
return-void
.end method
.method public constructor <init>([BII)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
const/4 v0, 0x0
iput v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I
iput p2, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I
return-void
.end method
.method public getPosition()J
.registers 3
iget v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->pos:I
iget v1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I
sub-int/2addr v0, v1
int-to-long v0, v0
return-wide v0
.end method
.method public newStream(JJ)Ljava/io/InputStream;
.registers 10
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gez v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "start < 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const-wide/16 v0, -0x1
cmp-long v0, p3, v0
if-nez v0, :cond_1a
iget v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->count:I
iget v1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I
sub-int/2addr v0, v1
int-to-long p3, v0
:cond_1a
new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;
iget-object v1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->buf:[B
iget v2, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I
long-to-int v3, p1
add-int/2addr v2, v3
sub-long v3, p3, p1
long-to-int v3, v3
invoke-direct {v0, v1, v2, v3}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V
return-object v0
.end method