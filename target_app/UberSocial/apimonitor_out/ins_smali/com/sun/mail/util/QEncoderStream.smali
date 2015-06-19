.class public Lcom/sun/mail/util/QEncoderStream;
.super Lcom/sun/mail/util/QPEncoderStream;
.source "SourceFile"
.field private static TEXT_SPECIALS:Ljava/lang/String;
.field private static WORD_SPECIALS:Ljava/lang/String;
.field private specials:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"
sput-object v0, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;
const-string v0, "=_?"
sput-object v0, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/io/OutputStream;Z)V
.registers 4
const v0, 0x7fffffff
invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V
if-eqz p2, :cond_d
sget-object v0, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;
:goto_a
iput-object v0, p0, Lcom/sun/mail/util/QEncoderStream;->specials:Ljava/lang/String;
return-void
:cond_d
sget-object v0, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;
goto :goto_a
.end method
.method public static encodedLength([BZ)I
.registers 7
const/4 v1, 0x0
if-eqz p1, :cond_a
sget-object v0, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;
:goto_5
move v2, v1
:goto_6
array-length v3, p0
if-lt v1, v3, :cond_d
return v2
:cond_a
sget-object v0, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;
goto :goto_5
:cond_d
aget-byte v3, p0, v1
and-int/lit16 v3, v3, 0xff
const/16 v4, 0x20
if-lt v3, v4, :cond_1f
const/16 v4, 0x7f
if-ge v3, v4, :cond_1f
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I
move-result v3
if-ltz v3, :cond_24
:cond_1f
add-int/lit8 v2, v2, 0x3
:goto_21
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_24
add-int/lit8 v2, v2, 0x1
goto :goto_21
.end method
.method public write(I)V
.registers 5
const/16 v1, 0x20
const/4 v2, 0x0
and-int/lit16 v0, p1, 0xff
if-ne v0, v1, :cond_d
const/16 v0, 0x5f
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V
:goto_c
return-void
:cond_d
if-lt v0, v1, :cond_1b
const/16 v1, 0x7f
if-ge v0, v1, :cond_1b
iget-object v1, p0, Lcom/sun/mail/util/QEncoderStream;->specials:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-ltz v1, :cond_20
:cond_1b
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V
goto :goto_c
:cond_20
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V
goto :goto_c
.end method