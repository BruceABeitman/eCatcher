.class public final Lcom/coremedia/iso/e;
.super Ljava/lang/Object;
.source "IsoTypeReader.java"
.method private static a(B)I
.registers 1
if-gez p0, :cond_4
add-int/lit16 p0, p0, 0x100
:cond_4
return p0
.end method
.method public static a(Ljava/nio/ByteBuffer;)J
.registers 10
invoke-static {p0}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v0
int-to-long v0, v0
invoke-static {p0}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v2
int-to-long v2, v2
invoke-static {p0}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v4
int-to-long v4, v4
invoke-static {p0}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I
move-result v6
int-to-long v6, v6
const/16 v8, 0x18
shl-long/2addr v6, v8
const/16 v8, 0x10
shl-long/2addr v4, v8
add-long/2addr v4, v6
const/16 v6, 0x8
shl-long/2addr v2, v6
add-long/2addr v2, v4
const/4 v4, 0x0
shl-long/2addr v0, v4
add-long/2addr v0, v2
return-wide v0
.end method
.method public static a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
.registers 3
new-array v0, p1, [B
invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {v0}, Lcom/coremedia/iso/k;->a([B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/nio/ByteBuffer;)J
.registers 5
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I
move-result v0
int-to-long v0, v0
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gez v2, :cond_11
const-wide v2, 0x100000000L
add-long/2addr v0, v2
:cond_11
return-wide v0
.end method
.method public static c(Ljava/nio/ByteBuffer;)I
.registers 3
invoke-static {p0}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
shl-int/lit8 v0, v0, 0x8
add-int/lit8 v0, v0, 0x0
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v1
invoke-static {v1}, Lcom/coremedia/iso/e;->a(B)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static d(Ljava/nio/ByteBuffer;)I
.registers 3
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v0
invoke-static {v0}, Lcom/coremedia/iso/e;->a(B)I
move-result v0
shl-int/lit8 v0, v0, 0x8
add-int/lit8 v0, v0, 0x0
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v1
invoke-static {v1}, Lcom/coremedia/iso/e;->a(B)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static e(Ljava/nio/ByteBuffer;)I
.registers 3
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v0
invoke-static {v0}, Lcom/coremedia/iso/e;->a(B)I
move-result v0
add-int/lit8 v0, v0, 0x0
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v1
invoke-static {v1}, Lcom/coremedia/iso/e;->a(B)I
move-result v1
shl-int/lit8 v1, v1, 0x8
add-int/2addr v0, v1
return v0
.end method
.method public static f(Ljava/nio/ByteBuffer;)I
.registers 2
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v0
invoke-static {v0}, Lcom/coremedia/iso/e;->a(B)I
move-result v0
return v0
.end method
.method public static g(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
:goto_5
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v1
if-eqz v1, :cond_f
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
goto :goto_5
:cond_f
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-static {v0}, Lcom/coremedia/iso/k;->a([B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static h(Ljava/nio/ByteBuffer;)J
.registers 6
const-wide/16 v3, 0x0
invoke-static {p0}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
const/16 v2, 0x20
shl-long/2addr v0, v2
add-long/2addr v0, v3
cmp-long v2, v0, v3
if-gez v2, :cond_16
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "I don\'t know how to deal with UInt64! long is not sufficient and I don\'t want to use BigInt"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
invoke-static {p0}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v2
add-long/2addr v0, v2
return-wide v0
.end method
.method public static i(Ljava/nio/ByteBuffer;)D
.registers 5
const/4 v0, 0x4
new-array v0, v0, [B
invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
const/4 v1, 0x0
aget-byte v1, v0, v1
shl-int/lit8 v1, v1, 0x18
const/high16 v2, -0x100
and-int/2addr v1, v2
or-int/lit8 v1, v1, 0x0
const/4 v2, 0x1
aget-byte v2, v0, v2
shl-int/lit8 v2, v2, 0x10
const/high16 v3, 0xff
and-int/2addr v2, v3
or-int/2addr v1, v2
const/4 v2, 0x2
aget-byte v2, v0, v2
shl-int/lit8 v2, v2, 0x8
const v3, 0xff00
and-int/2addr v2, v3
or-int/2addr v1, v2
const/4 v2, 0x3
aget-byte v0, v0, v2
and-int/lit16 v0, v0, 0xff
or-int/2addr v0, v1
int-to-double v0, v0
const-wide/high16 v2, 0x40f0
div-double/2addr v0, v2
return-wide v0
.end method
.method public static j(Ljava/nio/ByteBuffer;)F
.registers 4
const/4 v0, 0x2
new-array v0, v0, [B
invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
const/4 v1, 0x0
aget-byte v1, v0, v1
shl-int/lit8 v1, v1, 0x8
const v2, 0xff00
and-int/2addr v1, v2
or-int/lit8 v1, v1, 0x0
int-to-short v1, v1
const/4 v2, 0x1
aget-byte v0, v0, v2
and-int/lit16 v0, v0, 0xff
or-int/2addr v0, v1
int-to-short v0, v0
int-to-float v0, v0
const/high16 v1, 0x4380
div-float/2addr v0, v1
return v0
.end method
.method public static k(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
:goto_a
const/4 v3, 0x3
if-ge v0, v3, :cond_1e
rsub-int/lit8 v3, v0, 0x2
mul-int/lit8 v3, v3, 0x5
shr-int v3, v1, v3
and-int/lit8 v3, v3, 0x1f
add-int/lit8 v3, v3, 0x60
int-to-char v3, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1e
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static l(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.registers 2
const/4 v0, 0x4
new-array v0, v0, [B
invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->bytesToFourCC([B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method