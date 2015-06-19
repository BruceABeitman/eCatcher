.class public final Lcom/userzoom/ck;
.super Lcom/userzoom/ch;
.field private static h:[C
.field private i:Ljava/io/Writer;
.field private j:[C
.field private k:I
.field private l:I
.field private m:I
.field private n:[C
.field private o:Lcom/userzoom/ca;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/userzoom/cc;->b()[C
move-result-object v0
sput-object v0, Lcom/userzoom/ck;->h:[C
return-void
.end method
.method public constructor <init>(Lcom/userzoom/cd;ILjava/io/Writer;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Lcom/userzoom/ch;-><init>(Lcom/userzoom/cd;I)V
iput v0, p0, Lcom/userzoom/ck;->k:I
iput v0, p0, Lcom/userzoom/ck;->l:I
iput-object p3, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {p1}, Lcom/userzoom/cd;->c()[C
move-result-object v0
iput-object v0, p0, Lcom/userzoom/ck;->j:[C
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
array-length v0, v0
iput v0, p0, Lcom/userzoom/ck;->m:I
return-void
.end method
.method private a([CIICI)I
.registers 13
const/16 v5, 0x30
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v6, 0x6
if-ltz p5, :cond_29
if-le p2, v3, :cond_18
if-ge p2, p3, :cond_18
add-int/lit8 p2, p2, -0x2
const/16 v0, 0x5c
aput-char v0, p1, p2
add-int/lit8 v0, p2, 0x1
int-to-char v1, p5
aput-char v1, p1, v0
:goto_17
return p2
:cond_18
iget-object v0, p0, Lcom/userzoom/ck;->n:[C
if-nez v0, :cond_20
invoke-direct {p0}, Lcom/userzoom/ck;->g()[C
move-result-object v0
:cond_20
int-to-char v1, p5
aput-char v1, v0, v3
iget-object v1, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {v1, v0, v2, v4}, Ljava/io/Writer;->write([CII)V
goto :goto_17
:cond_29
const/4 v0, -0x2
if-eq p5, v0, :cond_db
const/4 v0, 0x5
if-le p2, v0, :cond_7c
if-ge p2, p3, :cond_7c
add-int/lit8 v0, p2, -0x6
add-int/lit8 v1, v0, 0x1
const/16 v2, 0x5c
aput-char v2, p1, v0
add-int/lit8 v0, v1, 0x1
const/16 v2, 0x75
aput-char v2, p1, v1
const/16 v1, 0xff
if-le p4, v1, :cond_73
shr-int/lit8 v1, p4, 0x8
and-int/lit16 v1, v1, 0xff
add-int/lit8 v2, v0, 0x1
sget-object v3, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v4, v1, 0x4
aget-char v3, v3, v4
aput-char v3, p1, v0
add-int/lit8 v0, v2, 0x1
sget-object v3, Lcom/userzoom/ck;->h:[C
and-int/lit8 v1, v1, 0xf
aget-char v1, v3, v1
aput-char v1, p1, v2
and-int/lit16 v1, p4, 0xff
int-to-char p4, v1
:goto_5e
add-int/lit8 v1, v0, 0x1
sget-object v2, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v3, p4, 0x4
aget-char v2, v2, v3
aput-char v2, p1, v0
sget-object v0, Lcom/userzoom/ck;->h:[C
and-int/lit8 v2, p4, 0xf
aget-char v0, v0, v2
aput-char v0, p1, v1
add-int/lit8 p2, v1, -0x5
goto :goto_17
:cond_73
add-int/lit8 v1, v0, 0x1
aput-char v5, p1, v0
add-int/lit8 v0, v1, 0x1
aput-char v5, p1, v1
goto :goto_5e
:cond_7c
iget-object v0, p0, Lcom/userzoom/ck;->n:[C
if-nez v0, :cond_84
invoke-direct {p0}, Lcom/userzoom/ck;->g()[C
move-result-object v0
:cond_84
iget v1, p0, Lcom/userzoom/ck;->l:I
iput v1, p0, Lcom/userzoom/ck;->k:I
const/16 v1, 0xff
if-le p4, v1, :cond_c3
shr-int/lit8 v1, p4, 0x8
and-int/lit16 v1, v1, 0xff
and-int/lit16 v2, p4, 0xff
const/16 v3, 0xa
sget-object v4, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v5, v1, 0x4
aget-char v4, v4, v5
aput-char v4, v0, v3
const/16 v3, 0xb
sget-object v4, Lcom/userzoom/ck;->h:[C
and-int/lit8 v1, v1, 0xf
aget-char v1, v4, v1
aput-char v1, v0, v3
const/16 v1, 0xc
sget-object v3, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v4, v2, 0x4
aget-char v3, v3, v4
aput-char v3, v0, v1
const/16 v1, 0xd
sget-object v3, Lcom/userzoom/ck;->h:[C
and-int/lit8 v2, v2, 0xf
aget-char v2, v3, v2
aput-char v2, v0, v1
iget-object v1, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
const/16 v2, 0x8
invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V
goto/16 :goto_17
:cond_c3
sget-object v1, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v2, p4, 0x4
aget-char v1, v1, v2
aput-char v1, v0, v6
const/4 v1, 0x7
sget-object v2, Lcom/userzoom/ck;->h:[C
and-int/lit8 v3, p4, 0xf
aget-char v2, v2, v3
aput-char v2, v0, v1
iget-object v1, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V
goto/16 :goto_17
:cond_db
iget-object v0, p0, Lcom/userzoom/ck;->o:Lcom/userzoom/ca;
if-nez v0, :cond_f7
iget-object v0, p0, Lcom/userzoom/ck;->f:Lcom/userzoom/o;
invoke-virtual {v0}, Lcom/userzoom/o;->a()Lcom/userzoom/ca;
move-result-object v0
invoke-interface {v0}, Lcom/userzoom/ca;->a()Ljava/lang/String;
move-result-object v0
:goto_e9
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lt p2, v1, :cond_101
if-ge p2, p3, :cond_101
sub-int/2addr p2, v1
invoke-virtual {v0, v2, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V
goto/16 :goto_17
:cond_f7
iget-object v0, p0, Lcom/userzoom/ck;->o:Lcom/userzoom/ca;
invoke-interface {v0}, Lcom/userzoom/ca;->a()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iput-object v1, p0, Lcom/userzoom/ck;->o:Lcom/userzoom/ca;
goto :goto_e9
:cond_101
iget-object v1, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
goto/16 :goto_17
.end method
.method private a(CI)V
.registers 11
const/16 v7, 0x5c
const/16 v3, 0x30
const/4 v5, 0x0
const/4 v4, 0x2
const/4 v6, 0x6
if-ltz p2, :cond_35
iget v0, p0, Lcom/userzoom/ck;->l:I
if-lt v0, v4, :cond_1f
iget v0, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v0, v0, -0x2
iput v0, p0, Lcom/userzoom/ck;->k:I
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
add-int/lit8 v2, v0, 0x1
aput-char v7, v1, v0
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
int-to-char v1, p2
aput-char v1, v0, v2
:goto_1e
return-void
:cond_1f
iget-object v0, p0, Lcom/userzoom/ck;->n:[C
if-nez v0, :cond_27
invoke-direct {p0}, Lcom/userzoom/ck;->g()[C
move-result-object v0
:cond_27
iget v1, p0, Lcom/userzoom/ck;->l:I
iput v1, p0, Lcom/userzoom/ck;->k:I
const/4 v1, 0x1
int-to-char v2, p2
aput-char v2, v0, v1
iget-object v1, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {v1, v0, v5, v4}, Ljava/io/Writer;->write([CII)V
goto :goto_1e
:cond_35
const/4 v0, -0x2
if-eq p2, v0, :cond_e8
iget v0, p0, Lcom/userzoom/ck;->l:I
if-lt v0, v6, :cond_89
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
iget v0, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v0, v0, -0x6
iput v0, p0, Lcom/userzoom/ck;->k:I
aput-char v7, v1, v0
add-int/lit8 v0, v0, 0x1
const/16 v2, 0x75
aput-char v2, v1, v0
const/16 v2, 0xff
if-le p1, v2, :cond_80
shr-int/lit8 v2, p1, 0x8
and-int/lit16 v2, v2, 0xff
add-int/lit8 v0, v0, 0x1
sget-object v3, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v4, v2, 0x4
aget-char v3, v3, v4
aput-char v3, v1, v0
add-int/lit8 v0, v0, 0x1
sget-object v3, Lcom/userzoom/ck;->h:[C
and-int/lit8 v2, v2, 0xf
aget-char v2, v3, v2
aput-char v2, v1, v0
and-int/lit16 v2, p1, 0xff
int-to-char p1, v2
:goto_6b
add-int/lit8 v0, v0, 0x1
sget-object v2, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v3, p1, 0x4
aget-char v2, v2, v3
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
sget-object v2, Lcom/userzoom/ck;->h:[C
and-int/lit8 v3, p1, 0xf
aget-char v2, v2, v3
aput-char v2, v1, v0
goto :goto_1e
:cond_80
add-int/lit8 v0, v0, 0x1
aput-char v3, v1, v0
add-int/lit8 v0, v0, 0x1
aput-char v3, v1, v0
goto :goto_6b
:cond_89
iget-object v0, p0, Lcom/userzoom/ck;->n:[C
if-nez v0, :cond_91
invoke-direct {p0}, Lcom/userzoom/ck;->g()[C
move-result-object v0
:cond_91
iget v1, p0, Lcom/userzoom/ck;->l:I
iput v1, p0, Lcom/userzoom/ck;->k:I
const/16 v1, 0xff
if-le p1, v1, :cond_d0
shr-int/lit8 v1, p1, 0x8
and-int/lit16 v1, v1, 0xff
and-int/lit16 v2, p1, 0xff
const/16 v3, 0xa
sget-object v4, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v5, v1, 0x4
aget-char v4, v4, v5
aput-char v4, v0, v3
const/16 v3, 0xb
sget-object v4, Lcom/userzoom/ck;->h:[C
and-int/lit8 v1, v1, 0xf
aget-char v1, v4, v1
aput-char v1, v0, v3
const/16 v1, 0xc
sget-object v3, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v4, v2, 0x4
aget-char v3, v3, v4
aput-char v3, v0, v1
const/16 v1, 0xd
sget-object v3, Lcom/userzoom/ck;->h:[C
and-int/lit8 v2, v2, 0xf
aget-char v2, v3, v2
aput-char v2, v0, v1
iget-object v1, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
const/16 v2, 0x8
invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V
goto/16 :goto_1e
:cond_d0
sget-object v1, Lcom/userzoom/ck;->h:[C
shr-int/lit8 v2, p1, 0x4
aget-char v1, v1, v2
aput-char v1, v0, v6
const/4 v1, 0x7
sget-object v2, Lcom/userzoom/ck;->h:[C
and-int/lit8 v3, p1, 0xf
aget-char v2, v2, v3
aput-char v2, v0, v1
iget-object v1, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V
goto/16 :goto_1e
:cond_e8
iget-object v0, p0, Lcom/userzoom/ck;->o:Lcom/userzoom/ca;
if-nez v0, :cond_10a
iget-object v0, p0, Lcom/userzoom/ck;->f:Lcom/userzoom/o;
invoke-virtual {v0}, Lcom/userzoom/o;->a()Lcom/userzoom/ca;
move-result-object v0
invoke-interface {v0}, Lcom/userzoom/ca;->a()Ljava/lang/String;
move-result-object v0
:goto_f6
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
iget v2, p0, Lcom/userzoom/ck;->l:I
if-lt v2, v1, :cond_114
iget v2, p0, Lcom/userzoom/ck;->l:I
sub-int/2addr v2, v1
iput v2, p0, Lcom/userzoom/ck;->k:I
iget-object v3, p0, Lcom/userzoom/ck;->j:[C
invoke-virtual {v0, v5, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V
goto/16 :goto_1e
:cond_10a
iget-object v0, p0, Lcom/userzoom/ck;->o:Lcom/userzoom/ca;
invoke-interface {v0}, Lcom/userzoom/ca;->a()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
iput-object v1, p0, Lcom/userzoom/ck;->o:Lcom/userzoom/ca;
goto :goto_f6
:cond_114
iget v1, p0, Lcom/userzoom/ck;->l:I
iput v1, p0, Lcom/userzoom/ck;->k:I
iget-object v1, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
goto/16 :goto_1e
.end method
.method private f(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
iget v0, p0, Lcom/userzoom/ck;->m:I
iget v2, p0, Lcom/userzoom/ck;->l:I
sub-int/2addr v0, v2
if-nez v0, :cond_14
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
iget v0, p0, Lcom/userzoom/ck;->m:I
iget v2, p0, Lcom/userzoom/ck;->l:I
sub-int/2addr v0, v2
:cond_14
if-lt v0, v1, :cond_23
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v2, p0, Lcom/userzoom/ck;->l:I
invoke-virtual {p1, v5, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V
iget v0, p0, Lcom/userzoom/ck;->l:I
add-int/2addr v0, v1
iput v0, p0, Lcom/userzoom/ck;->l:I
:goto_22
return-void
:cond_23
iget v0, p0, Lcom/userzoom/ck;->m:I
iget v1, p0, Lcom/userzoom/ck;->l:I
sub-int/2addr v0, v1
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
iget v2, p0, Lcom/userzoom/ck;->l:I
invoke-virtual {p1, v5, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/2addr v1, v0
iput v1, p0, Lcom/userzoom/ck;->l:I
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
sub-int/2addr v1, v0
:goto_3c
iget v2, p0, Lcom/userzoom/ck;->m:I
if-le v1, v2, :cond_53
iget v2, p0, Lcom/userzoom/ck;->m:I
add-int v3, v0, v2
iget-object v4, p0, Lcom/userzoom/ck;->j:[C
invoke-virtual {p1, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V
iput v5, p0, Lcom/userzoom/ck;->k:I
iput v2, p0, Lcom/userzoom/ck;->l:I
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
add-int/2addr v0, v2
sub-int/2addr v1, v2
goto :goto_3c
:cond_53
add-int v2, v0, v1
iget-object v3, p0, Lcom/userzoom/ck;->j:[C
invoke-virtual {p1, v0, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V
iput v5, p0, Lcom/userzoom/ck;->k:I
iput v1, p0, Lcom/userzoom/ck;->l:I
goto :goto_22
.end method
.method private g(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->i()I
move-result v0
const/4 v1, 0x5
if-ne v0, v1, :cond_21
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", expecting field name"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/userzoom/ck;->e(Ljava/lang/String;)V
:cond_21
packed-switch v0, :pswitch_data_4e
:goto_24
:cond_24
return-void
:pswitch_25
const/16 v0, 0x2c
:goto_27
iget v1, p0, Lcom/userzoom/ck;->l:I
iget v2, p0, Lcom/userzoom/ck;->m:I
if-lt v1, v2, :cond_30
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_30
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
iget v2, p0, Lcom/userzoom/ck;->l:I
aput-char v0, v1, v2
iget v0, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/userzoom/ck;->l:I
goto :goto_24
:pswitch_3d
const/16 v0, 0x3a
goto :goto_27
:pswitch_40
iget-object v0, p0, Lcom/userzoom/ck;->g:Lcom/userzoom/ca;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/userzoom/ck;->g:Lcom/userzoom/ca;
invoke-interface {v0}, Lcom/userzoom/ca;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/userzoom/ck;->f(Ljava/lang/String;)V
goto :goto_24
:pswitch_data_4e
.packed-switch 0x1
:pswitch_25
:pswitch_3d
:pswitch_40
.end packed-switch
.end method
.method private g()[C
.registers 6
const/16 v4, 0x75
const/16 v3, 0x30
const/16 v2, 0x5c
const/16 v0, 0xe
new-array v0, v0, [C
const/4 v1, 0x0
aput-char v2, v0, v1
const/4 v1, 0x2
aput-char v2, v0, v1
const/4 v1, 0x3
aput-char v4, v0, v1
const/4 v1, 0x4
aput-char v3, v0, v1
const/4 v1, 0x5
aput-char v3, v0, v1
const/16 v1, 0x8
aput-char v2, v0, v1
const/16 v1, 0x9
aput-char v4, v0, v1
iput-object v0, p0, Lcom/userzoom/ck;->n:[C
return-object v0
.end method
.method private h()V
.registers 5
iget v0, p0, Lcom/userzoom/ck;->l:I
iget v1, p0, Lcom/userzoom/ck;->k:I
sub-int/2addr v0, v1
if-lez v0, :cond_15
iget v1, p0, Lcom/userzoom/ck;->k:I
const/4 v2, 0x0
iput v2, p0, Lcom/userzoom/ck;->k:I
iput v2, p0, Lcom/userzoom/ck;->l:I
iget-object v2, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
iget-object v3, p0, Lcom/userzoom/ck;->j:[C
invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V
:cond_15
return-void
.end method
.method private h(Ljava/lang/String;)V
.registers 16
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget v1, p0, Lcom/userzoom/ck;->m:I
if-le v0, v1, :cond_f8
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v8
const/4 v0, 0x0
move v6, v0
:goto_11
iget v3, p0, Lcom/userzoom/ck;->m:I
add-int v0, v6, v3
if-le v0, v8, :cond_19
sub-int v3, v8, v6
:cond_19
add-int v0, v6, v3
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
const/4 v2, 0x0
invoke-virtual {p1, v6, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V
iget-object v0, p0, Lcom/userzoom/ck;->f:Lcom/userzoom/o;
if-eqz v0, :cond_7c
iget-object v9, p0, Lcom/userzoom/ck;->d:[I
iget v0, p0, Lcom/userzoom/ck;->e:I
if-gtz v0, :cond_63
const v0, 0xffff
move v7, v0
:goto_2f
array-length v0, v9
add-int/lit8 v1, v7, 0x1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v10
iget-object v11, p0, Lcom/userzoom/ck;->f:Lcom/userzoom/o;
const/4 v1, 0x0
const/4 v5, 0x0
const/4 v0, 0x0
move v2, v0
move v0, v5
:goto_3d
if-ge v1, v3, :cond_f3
:cond_3f
iget-object v4, p0, Lcom/userzoom/ck;->j:[C
aget-char v4, v4, v1
if-ge v4, v10, :cond_67
aget v5, v9, v4
if-eqz v5, :cond_75
:goto_49
sub-int v0, v1, v2
if-lez v0, :cond_56
iget-object v12, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
iget-object v13, p0, Lcom/userzoom/ck;->j:[C
invoke-virtual {v12, v13, v2, v0}, Ljava/io/Writer;->write([CII)V
if-ge v1, v3, :cond_f3
:cond_56
add-int/lit8 v2, v1, 0x1
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/userzoom/ck;->a([CIICI)I
move-result v0
move v1, v2
move v2, v0
move v0, v5
goto :goto_3d
:cond_63
iget v0, p0, Lcom/userzoom/ck;->e:I
move v7, v0
goto :goto_2f
:cond_67
if-le v4, v7, :cond_6b
const/4 v5, -0x1
goto :goto_49
:cond_6b
invoke-virtual {v11}, Lcom/userzoom/o;->a()Lcom/userzoom/ca;
move-result-object v5
iput-object v5, p0, Lcom/userzoom/ck;->o:Lcom/userzoom/ca;
if-eqz v5, :cond_76
const/4 v5, -0x2
goto :goto_49
:cond_75
move v0, v5
:cond_76
add-int/lit8 v1, v1, 0x1
if-lt v1, v3, :cond_3f
move v5, v0
goto :goto_49
:cond_7c
iget v0, p0, Lcom/userzoom/ck;->e:I
if-eqz v0, :cond_c1
iget v7, p0, Lcom/userzoom/ck;->e:I
iget-object v9, p0, Lcom/userzoom/ck;->d:[I
array-length v0, v9
add-int/lit8 v1, v7, 0x1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v10
const/4 v1, 0x0
const/4 v5, 0x0
const/4 v0, 0x0
move v2, v0
move v0, v5
:goto_90
if-ge v1, v3, :cond_f3
:cond_92
iget-object v4, p0, Lcom/userzoom/ck;->j:[C
aget-char v4, v4, v1
if-ge v4, v10, :cond_b6
aget v5, v9, v4
if-eqz v5, :cond_ba
:goto_9c
sub-int v0, v1, v2
if-lez v0, :cond_a9
iget-object v11, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
iget-object v12, p0, Lcom/userzoom/ck;->j:[C
invoke-virtual {v11, v12, v2, v0}, Ljava/io/Writer;->write([CII)V
if-ge v1, v3, :cond_f3
:cond_a9
add-int/lit8 v2, v1, 0x1
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/userzoom/ck;->a([CIICI)I
move-result v0
move v1, v2
move v2, v0
move v0, v5
goto :goto_90
:cond_b6
if-le v4, v7, :cond_bb
const/4 v5, -0x1
goto :goto_9c
:cond_ba
move v0, v5
:cond_bb
add-int/lit8 v1, v1, 0x1
if-lt v1, v3, :cond_92
move v5, v0
goto :goto_9c
:cond_c1
iget-object v7, p0, Lcom/userzoom/ck;->d:[I
array-length v9, v7
const/4 v2, 0x0
const/4 v0, 0x0
move v1, v0
move v0, v2
:goto_c8
if-ge v0, v3, :cond_f3
:cond_ca
iget-object v2, p0, Lcom/userzoom/ck;->j:[C
aget-char v4, v2, v0
if-ge v4, v9, :cond_d4
aget v2, v7, v4
if-nez v2, :cond_d8
:cond_d4
add-int/lit8 v0, v0, 0x1
if-lt v0, v3, :cond_ca
:cond_d8
sub-int v2, v0, v1
if-lez v2, :cond_e5
iget-object v5, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
iget-object v10, p0, Lcom/userzoom/ck;->j:[C
invoke-virtual {v5, v10, v1, v2}, Ljava/io/Writer;->write([CII)V
if-ge v0, v3, :cond_f3
:cond_e5
add-int/lit8 v2, v0, 0x1
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
aget v5, v7, v4
move-object v0, p0
invoke-direct/range {v0 .. v5}, Lcom/userzoom/ck;->a([CIICI)I
move-result v0
move v1, v0
move v0, v2
goto :goto_c8
:cond_f3
add-int v0, v6, v3
if-lt v0, v8, :cond_1f1
:cond_f7
:goto_f7
return-void
:cond_f8
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/2addr v1, v0
iget v2, p0, Lcom/userzoom/ck;->m:I
if-le v1, v2, :cond_102
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_102
const/4 v1, 0x0
iget-object v2, p0, Lcom/userzoom/ck;->j:[C
iget v3, p0, Lcom/userzoom/ck;->l:I
invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V
iget-object v1, p0, Lcom/userzoom/ck;->f:Lcom/userzoom/o;
if-eqz v1, :cond_168
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int v2, v1, v0
iget-object v3, p0, Lcom/userzoom/ck;->d:[I
iget v0, p0, Lcom/userzoom/ck;->e:I
if-gtz v0, :cond_14e
const v0, 0xffff
:goto_11b
array-length v1, v3
add-int/lit8 v4, v0, 0x1
invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I
move-result v4
iget-object v5, p0, Lcom/userzoom/ck;->f:Lcom/userzoom/o;
:goto_124
iget v1, p0, Lcom/userzoom/ck;->l:I
if-ge v1, v2, :cond_f7
:cond_128
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
iget v6, p0, Lcom/userzoom/ck;->l:I
aget-char v6, v1, v6
if-ge v6, v4, :cond_151
aget v1, v3, v6
if-eqz v1, :cond_15f
:goto_134
iget v7, p0, Lcom/userzoom/ck;->l:I
iget v8, p0, Lcom/userzoom/ck;->k:I
sub-int/2addr v7, v8
if-lez v7, :cond_144
iget-object v8, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
iget-object v9, p0, Lcom/userzoom/ck;->j:[C
iget v10, p0, Lcom/userzoom/ck;->k:I
invoke-virtual {v8, v9, v10, v7}, Ljava/io/Writer;->write([CII)V
:cond_144
iget v7, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/userzoom/ck;->l:I
invoke-direct {p0, v6, v1}, Lcom/userzoom/ck;->a(CI)V
goto :goto_124
:cond_14e
iget v0, p0, Lcom/userzoom/ck;->e:I
goto :goto_11b
:cond_151
if-le v6, v0, :cond_155
const/4 v1, -0x1
goto :goto_134
:cond_155
invoke-virtual {v5}, Lcom/userzoom/o;->a()Lcom/userzoom/ca;
move-result-object v1
iput-object v1, p0, Lcom/userzoom/ck;->o:Lcom/userzoom/ca;
if-eqz v1, :cond_15f
const/4 v1, -0x2
goto :goto_134
:cond_15f
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/userzoom/ck;->l:I
if-lt v1, v2, :cond_128
goto :goto_f7
:cond_168
iget v1, p0, Lcom/userzoom/ck;->e:I
if-eqz v1, :cond_1b2
iget v1, p0, Lcom/userzoom/ck;->e:I
iget v2, p0, Lcom/userzoom/ck;->l:I
add-int/2addr v2, v0
iget-object v3, p0, Lcom/userzoom/ck;->d:[I
array-length v0, v3
add-int/lit8 v4, v1, 0x1
invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I
move-result v4
:goto_17a
iget v0, p0, Lcom/userzoom/ck;->l:I
if-ge v0, v2, :cond_f7
:cond_17e
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v5, p0, Lcom/userzoom/ck;->l:I
aget-char v5, v0, v5
if-ge v5, v4, :cond_1a4
aget v0, v3, v5
if-eqz v0, :cond_1a8
:goto_18a
iget v6, p0, Lcom/userzoom/ck;->l:I
iget v7, p0, Lcom/userzoom/ck;->k:I
sub-int/2addr v6, v7
if-lez v6, :cond_19a
iget-object v7, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
iget-object v8, p0, Lcom/userzoom/ck;->j:[C
iget v9, p0, Lcom/userzoom/ck;->k:I
invoke-virtual {v7, v8, v9, v6}, Ljava/io/Writer;->write([CII)V
:cond_19a
iget v6, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v6, v6, 0x1
iput v6, p0, Lcom/userzoom/ck;->l:I
invoke-direct {p0, v5, v0}, Lcom/userzoom/ck;->a(CI)V
goto :goto_17a
:cond_1a4
if-le v5, v1, :cond_1a8
const/4 v0, -0x1
goto :goto_18a
:cond_1a8
iget v0, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/userzoom/ck;->l:I
if-lt v0, v2, :cond_17e
goto/16 :goto_f7
:cond_1b2
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/2addr v0, v1
iget-object v1, p0, Lcom/userzoom/ck;->d:[I
array-length v2, v1
:goto_1b8
iget v3, p0, Lcom/userzoom/ck;->l:I
if-ge v3, v0, :cond_f7
:goto_1bc
iget-object v3, p0, Lcom/userzoom/ck;->j:[C
iget v4, p0, Lcom/userzoom/ck;->l:I
aget-char v3, v3, v4
if-ge v3, v2, :cond_1c8
aget v3, v1, v3
if-nez v3, :cond_1d1
:cond_1c8
iget v3, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/userzoom/ck;->l:I
if-ge v3, v0, :cond_f7
goto :goto_1bc
:cond_1d1
iget v3, p0, Lcom/userzoom/ck;->l:I
iget v4, p0, Lcom/userzoom/ck;->k:I
sub-int/2addr v3, v4
if-lez v3, :cond_1e1
iget-object v4, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
iget-object v5, p0, Lcom/userzoom/ck;->j:[C
iget v6, p0, Lcom/userzoom/ck;->k:I
invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V
:cond_1e1
iget-object v3, p0, Lcom/userzoom/ck;->j:[C
iget v4, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lcom/userzoom/ck;->l:I
aget-char v3, v3, v4
aget v4, v1, v3
invoke-direct {p0, v3, v4}, Lcom/userzoom/ck;->a(CI)V
goto :goto_1b8
:cond_1f1
move v6, v0
goto/16 :goto_11
.end method
.method public final a(F)V
.registers 3
iget-boolean v0, p0, Lcom/userzoom/ck;->a:Z
if-nez v0, :cond_18
invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z
move-result v0
if-nez v0, :cond_10
invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z
move-result v0
if-eqz v0, :cond_20
:cond_10
sget-object v0, Lcom/userzoom/f;->d:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/ck;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_20
:cond_18
invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/userzoom/ck;->b(Ljava/lang/String;)V
:goto_1f
return-void
:cond_20
const-string v0, "write number"
invoke-direct {p0, v0}, Lcom/userzoom/ck;->g(Ljava/lang/String;)V
invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/userzoom/ck;->f(Ljava/lang/String;)V
goto :goto_1f
.end method
.method public final a(I)V
.registers 6
const/16 v3, 0x22
const-string v0, "write number"
invoke-direct {p0, v0}, Lcom/userzoom/ck;->g(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/userzoom/ck;->a:Z
if-eqz v0, :cond_35
iget v0, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v0, v0, 0xd
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_16
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_16
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
aput-char v3, v0, v1
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
invoke-static {p1, v0, v1}, Lcom/userzoom/cf;->a(I[CI)I
move-result v0
iput v0, p0, Lcom/userzoom/ck;->l:I
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
aput-char v3, v0, v1
:goto_34
return-void
:cond_35
iget v0, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v0, v0, 0xb
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_40
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_40
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
invoke-static {p1, v0, v1}, Lcom/userzoom/cf;->a(I[CI)I
move-result v0
iput v0, p0, Lcom/userzoom/ck;->l:I
goto :goto_34
.end method
.method public final a(Ljava/lang/String;)V
.registers 6
const/16 v3, 0x22
const/4 v0, 0x1
iget-object v1, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v1, p1}, Lcom/userzoom/ci;->a(Ljava/lang/String;)I
move-result v1
const/4 v2, 0x4
if-ne v1, v2, :cond_11
const-string v2, "Can not write a field name, expecting a value"
invoke-static {v2}, Lcom/userzoom/ck;->e(Ljava/lang/String;)V
:cond_11
if-ne v1, v0, :cond_38
:goto_13
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v1, v1, 0x1
iget v2, p0, Lcom/userzoom/ck;->m:I
if-lt v1, v2, :cond_1e
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_1e
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
const/16 v2, 0x2c
aput-char v2, v0, v1
:cond_2c
sget-object v0, Lcom/userzoom/f;->c:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/ck;->a(Lcom/userzoom/f;)Z
move-result v0
if-nez v0, :cond_3a
invoke-direct {p0, p1}, Lcom/userzoom/ck;->h(Ljava/lang/String;)V
:goto_37
return-void
:cond_38
const/4 v0, 0x0
goto :goto_13
:cond_3a
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
aput-char v3, v0, v1
invoke-direct {p0, p1}, Lcom/userzoom/ck;->h(Ljava/lang/String;)V
iget v0, p0, Lcom/userzoom/ck;->l:I
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_50
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_50
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
aput-char v3, v0, v1
goto :goto_37
.end method
.method public final b()V
.registers 4
const-string v0, "start an array"
invoke-direct {p0, v0}, Lcom/userzoom/ck;->g(Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->f()Lcom/userzoom/ci;
move-result-object v0
iput-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
iget v0, p0, Lcom/userzoom/ck;->l:I
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_16
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_16
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
const/16 v2, 0x5b
aput-char v2, v0, v1
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 7
const/16 v4, 0x6c
const/16 v3, 0x22
const-string v0, "write text value"
invoke-direct {p0, v0}, Lcom/userzoom/ck;->g(Ljava/lang/String;)V
if-nez p1, :cond_31
iget v0, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v0, v0, 0x4
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_16
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_16
iget v0, p0, Lcom/userzoom/ck;->l:I
iget-object v1, p0, Lcom/userzoom/ck;->j:[C
const/16 v2, 0x6e
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
const/16 v2, 0x75
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
aput-char v4, v1, v0
add-int/lit8 v0, v0, 0x1
aput-char v4, v1, v0
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/userzoom/ck;->l:I
:goto_30
return-void
:cond_31
iget v0, p0, Lcom/userzoom/ck;->l:I
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_3a
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_3a
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
aput-char v3, v0, v1
invoke-direct {p0, p1}, Lcom/userzoom/ck;->h(Ljava/lang/String;)V
iget v0, p0, Lcom/userzoom/ck;->l:I
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_50
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_50
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
aput-char v3, v0, v1
goto :goto_30
.end method
.method public final c()V
.registers 4
iget-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->a()Z
move-result v0
if-nez v0, :cond_20
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Current context not an ARRAY but "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v1}, Lcom/userzoom/ci;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/userzoom/ck;->e(Ljava/lang/String;)V
:cond_20
iget v0, p0, Lcom/userzoom/ck;->l:I
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_29
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_29
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
const/16 v2, 0x5d
aput-char v2, v0, v1
iget-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->h()Lcom/userzoom/ci;
move-result-object v0
iput-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
return-void
.end method
.method public final close()V
.registers 3
invoke-super {p0}, Lcom/userzoom/ch;->close()V
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
if-eqz v0, :cond_27
sget-object v0, Lcom/userzoom/f;->b:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/ck;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_27
:goto_f
invoke-virtual {p0}, Lcom/userzoom/ck;->f()Lcom/userzoom/ci;
move-result-object v0
invoke-virtual {v0}, Lcom/userzoom/bz;->a()Z
move-result v1
if-eqz v1, :cond_1d
invoke-virtual {p0}, Lcom/userzoom/ck;->c()V
goto :goto_f
:cond_1d
invoke-virtual {v0}, Lcom/userzoom/bz;->b()Z
move-result v0
if-eqz v0, :cond_27
invoke-virtual {p0}, Lcom/userzoom/ck;->e()V
goto :goto_f
:cond_27
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
iget-object v0, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/userzoom/ck;->c:Lcom/userzoom/cd;
invoke-virtual {v0}, Lcom/userzoom/cd;->a()Z
move-result v0
if-nez v0, :cond_3e
sget-object v0, Lcom/userzoom/f;->a:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/ck;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_50
:cond_3e
iget-object v0, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->close()V
:goto_43
:cond_43
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
if-eqz v0, :cond_4f
const/4 v1, 0x0
iput-object v1, p0, Lcom/userzoom/ck;->j:[C
iget-object v1, p0, Lcom/userzoom/ck;->c:Lcom/userzoom/cd;
invoke-virtual {v1, v0}, Lcom/userzoom/cd;->a([C)V
:cond_4f
return-void
:cond_50
sget-object v0, Lcom/userzoom/f;->f:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/ck;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->flush()V
goto :goto_43
.end method
.method public final d()V
.registers 4
const-string v0, "start an object"
invoke-direct {p0, v0}, Lcom/userzoom/ck;->g(Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->g()Lcom/userzoom/ci;
move-result-object v0
iput-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
iget v0, p0, Lcom/userzoom/ck;->l:I
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_16
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_16
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
const/16 v2, 0x7b
aput-char v2, v0, v1
return-void
.end method
.method public final e()V
.registers 4
iget-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->b()Z
move-result v0
if-nez v0, :cond_20
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Current context not an object but "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v1}, Lcom/userzoom/ci;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/userzoom/ck;->e(Ljava/lang/String;)V
:cond_20
iget v0, p0, Lcom/userzoom/ck;->l:I
iget v1, p0, Lcom/userzoom/ck;->m:I
if-lt v0, v1, :cond_29
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
:cond_29
iget-object v0, p0, Lcom/userzoom/ck;->j:[C
iget v1, p0, Lcom/userzoom/ck;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/ck;->l:I
const/16 v2, 0x7d
aput-char v2, v0, v1
iget-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->h()Lcom/userzoom/ci;
move-result-object v0
iput-object v0, p0, Lcom/userzoom/ck;->b:Lcom/userzoom/ci;
return-void
.end method
.method public final flush()V
.registers 2
invoke-direct {p0}, Lcom/userzoom/ck;->h()V
iget-object v0, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
if-eqz v0, :cond_14
sget-object v0, Lcom/userzoom/f;->f:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/ck;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/userzoom/ck;->i:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->flush()V
:cond_14
return-void
.end method