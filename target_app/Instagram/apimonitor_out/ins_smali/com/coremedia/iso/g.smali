.class public final Lcom/coremedia/iso/g;
.super Ljava/lang/Object;
.source "IsoTypeWriter.java"
.field static final synthetic a:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/coremedia/iso/g;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/coremedia/iso/g;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/nio/ByteBuffer;D)V
.registers 5
const-wide/high16 v0, 0x40f0
mul-double/2addr v0, p1
double-to-int v0, v0
const/high16 v1, -0x100
and-int/2addr v1, v0
shr-int/lit8 v1, v1, 0x18
int-to-byte v1, v1
invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
const/high16 v1, 0xff
and-int/2addr v1, v0
shr-int/lit8 v1, v1, 0x10
int-to-byte v1, v1
invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
const v1, 0xff00
and-int/2addr v1, v0
shr-int/lit8 v1, v1, 0x8
int-to-byte v1, v1
invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
and-int/lit16 v0, v0, 0xff
int-to-byte v0, v0
invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
return-void
.end method
.method public static a(Ljava/nio/ByteBuffer;I)V
.registers 4
const v0, 0xffffff
and-int/2addr v0, p1
shr-int/lit8 v1, v0, 0x8
invoke-static {p0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
invoke-static {p0, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
return-void
.end method
.method public static a(Ljava/nio/ByteBuffer;J)V
.registers 3
invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
return-void
.end method
.method public static a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
.registers 7
const/4 v4, 0x3
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
array-length v1, v1
if-eq v1, v4, :cond_24
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "\""
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\" language string isn\'t exactly 3 characters long!"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
move v1, v0
:goto_25
if-ge v0, v4, :cond_38
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v2
aget-byte v2, v2, v0
add-int/lit8 v2, v2, -0x60
rsub-int/lit8 v3, v0, 0x2
mul-int/lit8 v3, v3, 0x5
shl-int/2addr v2, v3
add-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_25
:cond_38
invoke-static {p0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
return-void
.end method
.method public static b(Ljava/nio/ByteBuffer;D)V
.registers 5
const-wide/high16 v0, 0x4070
mul-double/2addr v0, p1
double-to-int v0, v0
int-to-short v0, v0
const v1, 0xff00
and-int/2addr v1, v0
shr-int/lit8 v1, v1, 0x8
int-to-byte v1, v1
invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
and-int/lit16 v0, v0, 0xff
int-to-byte v0, v0
invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
return-void
.end method
.method public static b(Ljava/nio/ByteBuffer;I)V
.registers 4
const v0, 0xffff
and-int/2addr v0, p1
shr-int/lit8 v1, v0, 0x8
invoke-static {p0, v1}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
and-int/lit16 v0, v0, 0xff
invoke-static {p0, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
return-void
.end method
.method public static b(Ljava/nio/ByteBuffer;J)V
.registers 4
long-to-int v0, p1
invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
return-void
.end method
.method public static b(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
return-void
.end method
.method public static c(Ljava/nio/ByteBuffer;I)V
.registers 4
const v0, 0xffff
and-int/2addr v0, p1
and-int/lit16 v1, v0, 0xff
invoke-static {p0, v1}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
shr-int/lit8 v0, v0, 0x8
invoke-static {p0, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V
return-void
.end method
.method public static c(Ljava/nio/ByteBuffer;J)V
.registers 7
sget-boolean v0, Lcom/coremedia/iso/g;->a:Z
if-nez v0, :cond_2e
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-ltz v0, :cond_13
const-wide v0, 0x100000000L
cmp-long v0, p1, v0
if-lez v0, :cond_2e
:cond_13
new-instance v0, Ljava/lang/AssertionError;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "The given long is not in the range of uint32 ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_2e
long-to-int v0, p1
const v1, 0xffff
and-int/2addr v0, v1
invoke-static {p0, v0}, Lcom/coremedia/iso/g;->c(Ljava/nio/ByteBuffer;I)V
const/16 v0, 0x10
shr-long v0, p1, v0
const-wide/32 v2, 0xffff
and-long/2addr v0, v2
long-to-int v0, v0
invoke-static {p0, v0}, Lcom/coremedia/iso/g;->c(Ljava/nio/ByteBuffer;I)V
return-void
.end method
.method public static d(Ljava/nio/ByteBuffer;I)V
.registers 3
and-int/lit16 v0, p1, 0xff
int-to-byte v0, v0
invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
return-void
.end method