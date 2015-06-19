.class public Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final pem_array:[C
.field protected buffer:[B
.field protected bufsize:I
.field protected out:Ljava/io/Writer;
.field protected started:Z
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x40
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
return-void
:array_a
.array-data 0x2
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
0x47t 0x0t
0x48t 0x0t
0x49t 0x0t
0x4at 0x0t
0x4bt 0x0t
0x4ct 0x0t
0x4dt 0x0t
0x4et 0x0t
0x4ft 0x0t
0x50t 0x0t
0x51t 0x0t
0x52t 0x0t
0x53t 0x0t
0x54t 0x0t
0x55t 0x0t
0x56t 0x0t
0x57t 0x0t
0x58t 0x0t
0x59t 0x0t
0x5at 0x0t
0x61t 0x0t
0x62t 0x0t
0x63t 0x0t
0x64t 0x0t
0x65t 0x0t
0x66t 0x0t
0x67t 0x0t
0x68t 0x0t
0x69t 0x0t
0x6at 0x0t
0x6bt 0x0t
0x6ct 0x0t
0x6dt 0x0t
0x6et 0x0t
0x6ft 0x0t
0x70t 0x0t
0x71t 0x0t
0x72t 0x0t
0x73t 0x0t
0x74t 0x0t
0x75t 0x0t
0x76t 0x0t
0x77t 0x0t
0x78t 0x0t
0x79t 0x0t
0x7at 0x0t
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x2bt 0x0t
0x2ct 0x0t
.end array-data
.end method
.method public constructor <init>(Ljava/io/Writer;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [B
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
iput v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
iput-object p1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
return-void
.end method
.method public static encode(Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/16 v9, 0x26
const/4 v1, 0x1
const/4 v0, 0x0
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v4
array-length v5, v4
new-instance v6, Ljava/io/CharArrayWriter;
invoke-direct {v6, v5}, Ljava/io/CharArrayWriter;-><init>(I)V
move v3, v0
:goto_10
if-lt v3, v5, :cond_1e
if-eqz v2, :cond_17
invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V
:cond_17
if-eqz v0, :cond_1d
invoke-virtual {v6}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;
move-result-object p0
:cond_1d
return-object p0
:cond_1e
aget-char v7, v4, v3
const/16 v8, 0x20
if-lt v7, v8, :cond_3f
const/16 v8, 0x7e
if-gt v7, v8, :cond_3f
if-eqz v2, :cond_2d
invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V
:cond_2d
if-ne v7, v9, :cond_3b
invoke-virtual {v6, v9}, Ljava/io/CharArrayWriter;->write(I)V
const/16 v0, 0x2d
invoke-virtual {v6, v0}, Ljava/io/CharArrayWriter;->write(I)V
move v0, v1
:goto_38
add-int/lit8 v3, v3, 0x1
goto :goto_10
:cond_3b
invoke-virtual {v6, v7}, Ljava/io/CharArrayWriter;->write(I)V
goto :goto_38
:cond_3f
if-nez v2, :cond_48
new-instance v0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
invoke-direct {v0, v6}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;-><init>(Ljava/io/Writer;)V
move-object v2, v0
move v0, v1
:cond_48
invoke-virtual {v2, v7}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->write(I)V
goto :goto_38
.end method
.method protected encode()V
.registers 8
const/4 v3, 0x2
const/4 v2, 0x1
const/4 v6, 0x0
iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
if-ne v0, v2, :cond_28
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
aget-byte v0, v0, v6
iget-object v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
ushr-int/lit8 v3, v0, 0x2
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
iget-object v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
shl-int/lit8 v0, v0, 0x4
and-int/lit8 v0, v0, 0x30
add-int/lit8 v0, v0, 0x0
aget-char v0, v2, v0
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V
:goto_27
:cond_27
return-void
:cond_28
iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
if-ne v0, v3, :cond_63
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
aget-byte v0, v0, v6
iget-object v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
aget-byte v1, v1, v2
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
sget-object v3, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
ushr-int/lit8 v4, v0, 0x2
and-int/lit8 v4, v4, 0x3f
aget-char v3, v3, v4
invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
sget-object v3, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
shl-int/lit8 v0, v0, 0x4
and-int/lit8 v0, v0, 0x30
ushr-int/lit8 v4, v1, 0x4
and-int/lit8 v4, v4, 0xf
add-int/2addr v0, v4
aget-char v0, v3, v0
invoke-virtual {v2, v0}, Ljava/io/Writer;->write(I)V
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
shl-int/lit8 v1, v1, 0x2
and-int/lit8 v1, v1, 0x3c
add-int/lit8 v1, v1, 0x0
aget-char v1, v2, v1
invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
goto :goto_27
:cond_63
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
aget-byte v0, v0, v6
iget-object v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
aget-byte v1, v1, v2
iget-object v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
aget-byte v2, v2, v3
iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
ushr-int/lit8 v5, v0, 0x2
and-int/lit8 v5, v5, 0x3f
aget-char v4, v4, v5
invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V
iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
shl-int/lit8 v0, v0, 0x4
and-int/lit8 v0, v0, 0x30
ushr-int/lit8 v5, v1, 0x4
and-int/lit8 v5, v5, 0xf
add-int/2addr v0, v5
aget-char v0, v4, v0
invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
sget-object v3, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
shl-int/lit8 v1, v1, 0x2
and-int/lit8 v1, v1, 0x3c
ushr-int/lit8 v4, v2, 0x6
and-int/lit8 v4, v4, 0x3
add-int/2addr v1, v4
aget-char v1, v3, v1
invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C
and-int/lit8 v2, v2, 0x3f
aget-char v1, v1, v2
invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
const/4 v1, 0x4
if-ne v0, v1, :cond_27
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
iget-object v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
const/4 v2, 0x3
aget-byte v1, v1, v2
aput-byte v1, v0, v6
goto/16 :goto_27
.end method
.method public flush()V
.registers 3
:try_start_0
iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
if-lez v0, :cond_a
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V
const/4 v0, 0x0
iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
:cond_a
iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
const/16 v1, 0x2d
invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z
:cond_18
:goto_18
:try_end_18
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19
return-void
:catch_19
move-exception v0
goto :goto_18
.end method
.method public write(I)V
.registers 5
:try_start_0
iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z
if-nez v0, :cond_e
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;
const/16 v1, 0x26
invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V
:cond_e
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
shr-int/lit8 v2, p1, 0x8
int-to-byte v2, v2
aput-byte v2, v0, v1
iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B
iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
and-int/lit16 v2, p1, 0xff
int-to-byte v2, v2
aput-byte v2, v0, v1
iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
const/4 v1, 0x3
if-lt v0, v1, :cond_36
invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V
iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
add-int/lit8 v0, v0, -0x3
iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
:cond_36
:try_end_36
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_36} :catch_37
:goto_36
return-void
:catch_37
move-exception v0
goto :goto_36
.end method