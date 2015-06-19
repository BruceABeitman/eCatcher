.class public final Lcom/fasterxml/jackson/a/d/a;
.super Ljava/lang/Object;
.source "ByteSourceJsonBootstrapper.java"
.field protected final a:Lcom/fasterxml/jackson/a/c/d;
.field protected final b:Ljava/io/InputStream;
.field protected final c:[B
.field protected d:I
.field protected e:Z
.field protected f:I
.field private g:I
.field private h:I
.field private final i:Z
.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v2, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
iput v1, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
iput-object p1, p0, Lcom/fasterxml/jackson/a/d/a;->a:Lcom/fasterxml/jackson/a/c/d;
iput-object p2, p0, Lcom/fasterxml/jackson/a/d/a;->b:Ljava/io/InputStream;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/c/d;->e()[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iput v1, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iput v1, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
iput v1, p0, Lcom/fasterxml/jackson/a/d/a;->d:I
iput-boolean v2, p0, Lcom/fasterxml/jackson/a/d/a;->i:Z
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;[BII)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
iput v1, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
iput-object p1, p0, Lcom/fasterxml/jackson/a/d/a;->a:Lcom/fasterxml/jackson/a/c/d;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/a;->b:Ljava/io/InputStream;
iput-object p2, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iput p3, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int v0, p3, p4
iput v0, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
neg-int v0, p3
iput v0, p0, Lcom/fasterxml/jackson/a/d/a;->d:I
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/a;->i:Z
return-void
.end method
.method public static a(Lcom/fasterxml/jackson/a/b/b;)I
.registers 7
const/16 v5, 0x5b
const/16 v4, 0x39
const/16 v3, 0x30
const/16 v2, 0x22
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_11
sget v0, Lcom/fasterxml/jackson/a/b/d;->b:I
:cond_10
:goto_10
return v0
:cond_11
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->nextByte()B
move-result v0
const/16 v1, -0x11
if-ne v0, v1, :cond_4e
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_22
sget v0, Lcom/fasterxml/jackson/a/b/d;->b:I
goto :goto_10
:cond_22
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->nextByte()B
move-result v0
const/16 v1, -0x45
if-eq v0, v1, :cond_2d
sget v0, Lcom/fasterxml/jackson/a/b/d;->a:I
goto :goto_10
:cond_2d
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_36
sget v0, Lcom/fasterxml/jackson/a/b/d;->b:I
goto :goto_10
:cond_36
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->nextByte()B
move-result v0
const/16 v1, -0x41
if-eq v0, v1, :cond_41
sget v0, Lcom/fasterxml/jackson/a/b/d;->a:I
goto :goto_10
:cond_41
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_4a
sget v0, Lcom/fasterxml/jackson/a/b/d;->b:I
goto :goto_10
:cond_4a
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->nextByte()B
move-result v0
:cond_4e
invoke-static {p0, v0}, Lcom/fasterxml/jackson/a/d/a;->a(Lcom/fasterxml/jackson/a/b/b;B)I
move-result v1
if-gez v1, :cond_57
sget v0, Lcom/fasterxml/jackson/a/b/d;->b:I
goto :goto_10
:cond_57
const/16 v0, 0x7b
if-ne v1, v0, :cond_70
invoke-static {p0}, Lcom/fasterxml/jackson/a/d/a;->b(Lcom/fasterxml/jackson/a/b/b;)I
move-result v0
if-gez v0, :cond_64
sget v0, Lcom/fasterxml/jackson/a/b/d;->b:I
goto :goto_10
:cond_64
if-eq v0, v2, :cond_6a
const/16 v1, 0x7d
if-ne v0, v1, :cond_6d
:cond_6a
sget v0, Lcom/fasterxml/jackson/a/b/d;->d:I
goto :goto_10
:cond_6d
sget v0, Lcom/fasterxml/jackson/a/b/d;->a:I
goto :goto_10
:cond_70
if-ne v1, v5, :cond_87
invoke-static {p0}, Lcom/fasterxml/jackson/a/d/a;->b(Lcom/fasterxml/jackson/a/b/b;)I
move-result v0
if-gez v0, :cond_7b
sget v0, Lcom/fasterxml/jackson/a/b/d;->b:I
goto :goto_10
:cond_7b
const/16 v1, 0x5d
if-eq v0, v1, :cond_81
if-ne v0, v5, :cond_84
:cond_81
sget v0, Lcom/fasterxml/jackson/a/b/d;->d:I
goto :goto_10
:cond_84
sget v0, Lcom/fasterxml/jackson/a/b/d;->d:I
goto :goto_10
:cond_87
sget v0, Lcom/fasterxml/jackson/a/b/d;->c:I
if-eq v1, v2, :cond_10
if-gt v1, v4, :cond_8f
if-ge v1, v3, :cond_10
:cond_8f
const/16 v2, 0x2d
if-ne v1, v2, :cond_a5
invoke-static {p0}, Lcom/fasterxml/jackson/a/d/a;->b(Lcom/fasterxml/jackson/a/b/b;)I
move-result v1
if-gez v1, :cond_9d
sget v0, Lcom/fasterxml/jackson/a/b/d;->b:I
goto/16 :goto_10
:cond_9d
if-gt v1, v4, :cond_a1
if-ge v1, v3, :cond_10
:cond_a1
sget v0, Lcom/fasterxml/jackson/a/b/d;->a:I
goto/16 :goto_10
:cond_a5
const/16 v2, 0x6e
if-ne v1, v2, :cond_b1
const-string v1, "ull"
invoke-static {p0, v1, v0}, Lcom/fasterxml/jackson/a/d/a;->a(Lcom/fasterxml/jackson/a/b/b;Ljava/lang/String;I)I
move-result v0
goto/16 :goto_10
:cond_b1
const/16 v2, 0x74
if-ne v1, v2, :cond_bd
const-string v1, "rue"
invoke-static {p0, v1, v0}, Lcom/fasterxml/jackson/a/d/a;->a(Lcom/fasterxml/jackson/a/b/b;Ljava/lang/String;I)I
move-result v0
goto/16 :goto_10
:cond_bd
const/16 v2, 0x66
if-ne v1, v2, :cond_c9
const-string v1, "alse"
invoke-static {p0, v1, v0}, Lcom/fasterxml/jackson/a/d/a;->a(Lcom/fasterxml/jackson/a/b/b;Ljava/lang/String;I)I
move-result v0
goto/16 :goto_10
:cond_c9
sget v0, Lcom/fasterxml/jackson/a/b/d;->a:I
goto/16 :goto_10
.end method
.method private static a(Lcom/fasterxml/jackson/a/b/b;B)I
.registers 4
:goto_0
and-int/lit16 v0, p1, 0xff
const/16 v1, 0x20
if-eq v0, v1, :cond_13
const/16 v1, 0xd
if-eq v0, v1, :cond_13
const/16 v1, 0xa
if-eq v0, v1, :cond_13
const/16 v1, 0x9
if-eq v0, v1, :cond_13
:goto_12
return v0
:cond_13
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_1b
const/4 v0, -0x1
goto :goto_12
:cond_1b
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->nextByte()B
move-result p1
goto :goto_0
.end method
.method private static a(Lcom/fasterxml/jackson/a/b/b;Ljava/lang/String;I)I
.registers 7
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
:goto_5
if-ge v0, v1, :cond_f
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->hasMoreBytes()Z
move-result v2
if-nez v2, :cond_10
sget p2, Lcom/fasterxml/jackson/a/b/d;->b:I
:goto_f
:cond_f
return p2
:cond_10
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->nextByte()B
move-result v2
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
if-eq v2, v3, :cond_1d
sget p2, Lcom/fasterxml/jackson/a/b/d;->a:I
goto :goto_f
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
.method private a()Lcom/fasterxml/jackson/a/d;
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v2, 0x4
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/a;->d(I)Z
move-result v2
if-eqz v2, :cond_56
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
aget-byte v2, v2, v3
shl-int/lit8 v2, v2, 0x18
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int/lit8 v4, v4, 0x1
aget-byte v3, v3, v4
and-int/lit16 v3, v3, 0xff
shl-int/lit8 v3, v3, 0x10
or-int/2addr v2, v3
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int/lit8 v4, v4, 0x2
aget-byte v3, v3, v4
and-int/lit16 v3, v3, 0xff
shl-int/lit8 v3, v3, 0x8
or-int/2addr v2, v3
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int/lit8 v4, v4, 0x3
aget-byte v3, v3, v4
and-int/lit16 v3, v3, 0xff
or-int/2addr v2, v3
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/a;->a(I)Z
move-result v3
if-eqz v3, :cond_46
:goto_3c
:cond_3c
if-nez v0, :cond_79
sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;
:goto_40
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/a;->a:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->a(Lcom/fasterxml/jackson/a/d;)V
return-object v0
:cond_46
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/a;->b(I)Z
move-result v3
if-nez v3, :cond_3c
ushr-int/lit8 v2, v2, 0x10
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/a;->c(I)Z
move-result v2
if-nez v2, :cond_3c
:cond_54
move v0, v1
goto :goto_3c
:cond_56
const/4 v2, 0x2
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/a;->d(I)Z
move-result v2
if-eqz v2, :cond_54
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
shl-int/lit8 v2, v2, 0x8
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int/lit8 v4, v4, 0x1
aget-byte v3, v3, v4
and-int/lit16 v3, v3, 0xff
or-int/2addr v2, v3
invoke-direct {p0, v2}, Lcom/fasterxml/jackson/a/d/a;->c(I)Z
move-result v2
if-eqz v2, :cond_54
goto :goto_3c
:cond_79
iget v0, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
packed-switch v0, :pswitch_data_9e
:pswitch_7e
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_86
sget-object v0, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;
goto :goto_40
:pswitch_89
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
if-eqz v0, :cond_90
sget-object v0, Lcom/fasterxml/jackson/a/d;->b:Lcom/fasterxml/jackson/a/d;
goto :goto_40
:cond_90
sget-object v0, Lcom/fasterxml/jackson/a/d;->c:Lcom/fasterxml/jackson/a/d;
goto :goto_40
:pswitch_93
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
if-eqz v0, :cond_9a
sget-object v0, Lcom/fasterxml/jackson/a/d;->d:Lcom/fasterxml/jackson/a/d;
goto :goto_40
:cond_9a
sget-object v0, Lcom/fasterxml/jackson/a/d;->e:Lcom/fasterxml/jackson/a/d;
goto :goto_40
nop
:pswitch_data_9e
.packed-switch 0x1
:pswitch_86
:pswitch_89
:pswitch_7e
:pswitch_93
.end packed-switch
.end method
.method private static a(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/io/CharConversionException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unsupported UCS-4 endianness ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") detected"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private a(I)Z
.registers 7
const/4 v3, 0x4
const/4 v4, 0x2
const/4 v1, 0x0
const/4 v0, 0x1
sparse-switch p1, :sswitch_data_5e
:goto_7
ushr-int/lit8 v2, p1, 0x10
const v3, 0xfeff
if-ne v2, v3, :cond_3a
iget v1, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int/lit8 v1, v1, 0x2
iput v1, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iput v4, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
:goto_18
return v0
:sswitch_19
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
iget v1, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int/lit8 v1, v1, 0x4
iput v1, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iput v3, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
goto :goto_18
:sswitch_24
iget v2, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int/lit8 v2, v2, 0x4
iput v2, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iput v3, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
goto :goto_18
:sswitch_2f
const-string v2, "2143"
invoke-static {v2}, Lcom/fasterxml/jackson/a/d/a;->a(Ljava/lang/String;)V
:sswitch_34
const-string v2, "3412"
invoke-static {v2}, Lcom/fasterxml/jackson/a/d/a;->a(Ljava/lang/String;)V
goto :goto_7
:cond_3a
const v3, 0xfffe
if-ne v2, v3, :cond_4a
iget v2, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int/lit8 v2, v2, 0x2
iput v2, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iput v4, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
goto :goto_18
:cond_4a
ushr-int/lit8 v2, p1, 0x8
const v3, 0xefbbbf
if-ne v2, v3, :cond_5c
iget v1, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
add-int/lit8 v1, v1, 0x3
iput v1, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iput v0, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
goto :goto_18
:cond_5c
move v0, v1
goto :goto_18
:sswitch_data_5e
.sparse-switch
-0x1010000 -> :sswitch_34
-0x20000 -> :sswitch_24
0xfeff -> :sswitch_19
0xfffe -> :sswitch_2f
.end sparse-switch
.end method
.method private static b(Lcom/fasterxml/jackson/a/b/b;)I
.registers 2
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->hasMoreBytes()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, -0x1
:goto_7
return v0
:cond_8
invoke-interface {p0}, Lcom/fasterxml/jackson/a/b/b;->nextByte()B
move-result v0
invoke-static {p0, v0}, Lcom/fasterxml/jackson/a/d/a;->a(Lcom/fasterxml/jackson/a/b/b;B)I
move-result v0
goto :goto_7
.end method
.method private b()Ljava/io/Reader;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/a;->a:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->b()Lcom/fasterxml/jackson/a/d;
move-result-object v6
sget-object v0, Lcom/fasterxml/jackson/a/d/b;->a:[I
invoke-virtual {v6}, Lcom/fasterxml/jackson/a/d;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_64
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_19
new-instance v0, Lcom/fasterxml/jackson/a/c/m;
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/a;->a:Lcom/fasterxml/jackson/a/c/d;
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/a;->b:Ljava/io/InputStream;
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iget v5, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
iget-object v6, p0, Lcom/fasterxml/jackson/a/d/a;->a:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v6}, Lcom/fasterxml/jackson/a/c/d;->b()Lcom/fasterxml/jackson/a/d;
move-result-object v6
invoke-virtual {v6}, Lcom/fasterxml/jackson/a/d;->b()Z
move-result v6
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/a/c/m;-><init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;[BIIZ)V
:goto_32
return-object v0
:pswitch_33
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/a;->b:Ljava/io/InputStream;
if-nez v2, :cond_4d
new-instance v0, Ljava/io/ByteArrayInputStream;
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v2, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iget v3, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
:goto_42
new-instance v1, Ljava/io/InputStreamReader;
invoke-virtual {v6}, Lcom/fasterxml/jackson/a/d;->a()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
move-object v0, v1
goto :goto_32
:cond_4d
iget v0, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
if-ge v0, v1, :cond_61
new-instance v0, Lcom/fasterxml/jackson/a/c/g;
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/a;->a:Lcom/fasterxml/jackson/a/c/d;
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iget v5, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/c/g;-><init>(Lcom/fasterxml/jackson/a/c/d;Ljava/io/InputStream;[BII)V
goto :goto_42
:cond_61
move-object v0, v2
goto :goto_42
nop
:pswitch_data_64
.packed-switch 0x1
:pswitch_19
:pswitch_19
:pswitch_33
:pswitch_33
:pswitch_33
.end packed-switch
.end method
.method private b(I)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
shr-int/lit8 v2, p1, 0x8
if-nez v2, :cond_d
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
:goto_8
const/4 v0, 0x4
iput v0, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
move v0, v1
:cond_c
return v0
:cond_d
const v2, 0xffffff
and-int/2addr v2, p1
if-nez v2, :cond_16
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
goto :goto_8
:cond_16
const v2, -0xff0001
and-int/2addr v2, p1
if-nez v2, :cond_22
const-string v0, "3412"
invoke-static {v0}, Lcom/fasterxml/jackson/a/d/a;->a(Ljava/lang/String;)V
goto :goto_8
:cond_22
const v2, -0xff01
and-int/2addr v2, p1
if-nez v2, :cond_c
const-string v0, "2143"
invoke-static {v0}, Lcom/fasterxml/jackson/a/d/a;->a(Ljava/lang/String;)V
goto :goto_8
.end method
.method private c(I)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
const v2, 0xff00
and-int/2addr v2, p1
if-nez v2, :cond_f
iput-boolean v1, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
:goto_a
const/4 v0, 0x2
iput v0, p0, Lcom/fasterxml/jackson/a/d/a;->f:I
move v0, v1
:cond_e
return v0
:cond_f
and-int/lit16 v2, p1, 0xff
if-nez v2, :cond_e
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/a;->e:Z
goto :goto_a
.end method
.method private d(I)Z
.registers 8
iget v0, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
sub-int/2addr v0, v1
move v1, v0
:goto_6
if-ge v1, p1, :cond_2a
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/a;->b:Ljava/io/InputStream;
if-nez v0, :cond_11
const/4 v0, -0x1
:goto_d
if-gtz v0, :cond_22
const/4 v0, 0x0
:goto_10
return v0
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/a;->b:Ljava/io/InputStream;
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
iget-object v4, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
array-length v4, v4
iget v5, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
sub-int/2addr v4, v5
invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I
move-result v0
goto :goto_d
:cond_22
iget v2, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
add-int/2addr v2, v0
iput v2, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
add-int/2addr v0, v1
move v1, v0
goto :goto_6
:cond_2a
const/4 v0, 0x1
goto :goto_10
.end method
.method public final a(ILcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/a;Lcom/fasterxml/jackson/a/e/d;ZZ)Lcom/fasterxml/jackson/a/l;
.registers 18
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/a;->a()Lcom/fasterxml/jackson/a/d;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/d;->a:Lcom/fasterxml/jackson/a/d;
if-ne v1, v2, :cond_24
if-eqz p5, :cond_24
move/from16 v0, p6
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/a/e/a;->a(Z)Lcom/fasterxml/jackson/a/e/a;
move-result-object v6
new-instance v1, Lcom/fasterxml/jackson/a/d/j;
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/a;->a:Lcom/fasterxml/jackson/a/c/d;
iget-object v4, p0, Lcom/fasterxml/jackson/a/d/a;->b:Ljava/io/InputStream;
iget-object v7, p0, Lcom/fasterxml/jackson/a/d/a;->c:[B
iget v8, p0, Lcom/fasterxml/jackson/a/d/a;->g:I
iget v9, p0, Lcom/fasterxml/jackson/a/d/a;->h:I
iget-boolean v10, p0, Lcom/fasterxml/jackson/a/d/a;->i:Z
move v3, p1
move-object v5, p2
invoke-direct/range {v1 .. v10}, Lcom/fasterxml/jackson/a/d/j;-><init>(Lcom/fasterxml/jackson/a/c/d;ILjava/io/InputStream;Lcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/a;[BIIZ)V
:goto_23
return-object v1
:cond_24
new-instance v1, Lcom/fasterxml/jackson/a/d/g;
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/a;->a:Lcom/fasterxml/jackson/a/c/d;
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/a;->b()Ljava/io/Reader;
move-result-object v4
invoke-virtual/range {p4 .. p6}, Lcom/fasterxml/jackson/a/e/d;->a(ZZ)Lcom/fasterxml/jackson/a/e/d;
move-result-object v6
move v3, p1
move-object v5, p2
invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/a/d/g;-><init>(Lcom/fasterxml/jackson/a/c/d;ILjava/io/Reader;Lcom/fasterxml/jackson/a/s;Lcom/fasterxml/jackson/a/e/d;)V
goto :goto_23
.end method