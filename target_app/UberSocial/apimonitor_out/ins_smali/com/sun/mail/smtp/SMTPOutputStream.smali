.class public Lcom/sun/mail/smtp/SMTPOutputStream;
.super Lcom/sun/mail/util/CRLFOutputStream;
.source "SourceFile"
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 2
invoke-direct {p0, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V
return-void
.end method
.method public ensureAtBOL()V
.registers 2
iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->atBOL:Z
if-nez v0, :cond_7
invoke-super {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V
:cond_7
return-void
.end method
.method public flush()V
.registers 1
return-void
.end method
.method public write(I)V
.registers 5
const/16 v2, 0x2e
iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I
const/16 v1, 0xa
if-eq v0, v1, :cond_13
iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I
const/16 v1, 0xd
if-eq v0, v1, :cond_13
iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I
const/4 v1, -0x1
if-ne v0, v1, :cond_1a
:cond_13
if-ne p1, v2, :cond_1a
iget-object v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V
:cond_1a
invoke-super {p0, p1}, Lcom/sun/mail/util/CRLFOutputStream;->write(I)V
return-void
.end method
.method public write([BII)V
.registers 11
const/16 v6, 0x2e
const/16 v1, 0xa
iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I
const/4 v2, -0x1
if-ne v0, v2, :cond_1b
move v0, v1
:goto_a
add-int v4, p3, p2
move v2, p2
move v3, v0
move v0, p2
:goto_f
if-lt v2, v4, :cond_1e
sub-int v1, v4, v0
if-lez v1, :cond_1a
sub-int v1, v4, v0
invoke-super {p0, p1, v0, v1}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V
:cond_1a
return-void
:cond_1b
iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I
goto :goto_a
:cond_1e
if-eq v3, v1, :cond_24
const/16 v5, 0xd
if-ne v3, v5, :cond_33
:cond_24
aget-byte v3, p1, v2
if-ne v3, v6, :cond_33
sub-int v3, v2, v0
invoke-super {p0, p1, v0, v3}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V
iget-object v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write(I)V
move v0, v2
:cond_33
aget-byte v3, p1, v2
add-int/lit8 v2, v2, 0x1
goto :goto_f
.end method