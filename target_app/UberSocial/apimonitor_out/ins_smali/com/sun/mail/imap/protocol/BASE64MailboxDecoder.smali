.class public Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final pem_array:[C
.field private static final pem_convert_array:[B
.method static constructor <clinit>()V
.registers 4
const/4 v0, 0x0
const/16 v1, 0x40
new-array v1, v1, [C
fill-array-data v1, :array_30
sput-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C
const/16 v1, 0x100
new-array v1, v1, [B
sput-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B
move v1, v0
:goto_11
const/16 v2, 0xff
if-lt v1, v2, :cond_1b
:goto_15
sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C
array-length v1, v1
if-lt v0, v1, :cond_23
return-void
:cond_1b
sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B
const/4 v3, -0x1
aput-byte v3, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_11
:cond_23
sget-object v1, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B
sget-object v2, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_array:[C
aget-char v2, v2, v0
int-to-byte v3, v0
aput-byte v3, v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_15
nop
:array_30
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
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected static base64decode([CILjava/text/CharacterIterator;)I
.registers 11
const/16 v7, 0x3d
const/16 v6, 0x2d
const/4 v1, -0x1
const/4 v0, 0x1
move v2, v0
move v0, v1
:goto_8
:cond_8
invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C
move-result v3
int-to-byte v3, v3
if-ne v3, v1, :cond_10
:cond_f
:goto_f
return p1
:cond_10
if-ne v3, v6, :cond_1c
if-eqz v2, :cond_f
add-int/lit8 v0, p1, 0x1
const/16 v1, 0x26
aput-char v1, p0, p1
move p1, v0
goto :goto_f
:cond_1c
const/4 v2, 0x0
invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C
move-result v4
int-to-byte v4, v4
if-eq v4, v1, :cond_f
if-eq v4, v6, :cond_f
sget-object v5, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B
and-int/lit16 v3, v3, 0xff
aget-byte v3, v5, v3
sget-object v5, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B
and-int/lit16 v4, v4, 0xff
aget-byte v4, v5, v4
shl-int/lit8 v3, v3, 0x2
and-int/lit16 v3, v3, 0xfc
ushr-int/lit8 v5, v4, 0x4
and-int/lit8 v5, v5, 0x3
or-int/2addr v3, v5
int-to-byte v5, v3
if-eq v0, v1, :cond_a2
add-int/lit8 v3, p1, 0x1
shl-int/lit8 v0, v0, 0x8
and-int/lit16 v5, v5, 0xff
or-int/2addr v0, v5
int-to-char v0, v0
aput-char v0, p0, p1
move v0, v1
move p1, v3
:goto_4a
invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C
move-result v3
int-to-byte v3, v3
if-eq v3, v7, :cond_8
if-eq v3, v1, :cond_f
if-eq v3, v6, :cond_f
sget-object v5, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B
and-int/lit16 v3, v3, 0xff
aget-byte v5, v5, v3
shl-int/lit8 v3, v4, 0x4
and-int/lit16 v3, v3, 0xf0
ushr-int/lit8 v4, v5, 0x2
and-int/lit8 v4, v4, 0xf
or-int/2addr v3, v4
int-to-byte v4, v3
if-eq v0, v1, :cond_a5
add-int/lit8 v3, p1, 0x1
shl-int/lit8 v0, v0, 0x8
and-int/lit16 v4, v4, 0xff
or-int/2addr v0, v4
int-to-char v0, v0
aput-char v0, p0, p1
move v0, v1
move p1, v3
:goto_73
invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C
move-result v3
int-to-byte v3, v3
if-eq v3, v7, :cond_8
if-eq v3, v1, :cond_f
if-eq v3, v6, :cond_f
sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->pem_convert_array:[B
and-int/lit16 v3, v3, 0xff
aget-byte v3, v4, v3
shl-int/lit8 v4, v5, 0x6
and-int/lit16 v4, v4, 0xc0
and-int/lit8 v3, v3, 0x3f
or-int/2addr v3, v4
int-to-byte v4, v3
if-eq v0, v1, :cond_a8
shl-int/lit8 v3, v0, 0x8
and-int/lit16 v5, v4, 0xff
or-int/2addr v3, v5
int-to-char v3, v3
add-int/lit8 v3, p1, 0x1
shl-int/lit8 v0, v0, 0x8
and-int/lit16 v4, v4, 0xff
or-int/2addr v0, v4
int-to-char v0, v0
aput-char v0, p0, p1
move v0, v1
move p1, v3
goto/16 :goto_8
:cond_a2
and-int/lit16 v0, v5, 0xff
goto :goto_4a
:cond_a5
and-int/lit16 v0, v4, 0xff
goto :goto_73
:cond_a8
and-int/lit16 v0, v4, 0xff
goto/16 :goto_8
.end method
.method public static decode(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v4, 0x0
if-eqz p0, :cond_9
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_a
:goto_9
:cond_9
return-object p0
:cond_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
new-array v5, v0, [C
new-instance v6, Ljava/text/StringCharacterIterator;
invoke-direct {v6, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/text/StringCharacterIterator;->first()C
move-result v0
move v2, v0
move v3, v4
move v1, v4
:goto_1c
const v0, 0xffff
if-ne v2, v0, :cond_29
if-eqz v1, :cond_9
new-instance p0, Ljava/lang/String;
invoke-direct {p0, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V
goto :goto_9
:cond_29
const/16 v0, 0x26
if-ne v2, v0, :cond_38
const/4 v1, 0x1
invoke-static {v5, v3, v6}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->base64decode([CILjava/text/CharacterIterator;)I
move-result v0
:goto_32
invoke-virtual {v6}, Ljava/text/StringCharacterIterator;->next()C
move-result v2
move v3, v0
goto :goto_1c
:cond_38
add-int/lit8 v0, v3, 0x1
aput-char v2, v5, v3
goto :goto_32
.end method