.class public final Lcom/tencent/utils/ZipLong;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Ljava/lang/Cloneable;
.field private a:J
.method public constructor <init>(J)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/tencent/utils/ZipLong;->a:J
return-void
.end method
.method public constructor <init>([B)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/tencent/utils/ZipLong;-><init>([BI)V
return-void
.end method
.method public constructor <init>([BI)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
add-int/lit8 v0, p2, 0x3
aget-byte v0, p1, v0
shl-int/lit8 v0, v0, 0x18
int-to-long v0, v0
const-wide v2, 0xff000000L
and-long/2addr v0, v2
iput-wide v0, p0, Lcom/tencent/utils/ZipLong;->a:J
iget-wide v0, p0, Lcom/tencent/utils/ZipLong;->a:J
add-int/lit8 v2, p2, 0x2
aget-byte v2, p1, v2
shl-int/lit8 v2, v2, 0x10
const/high16 v3, 0xff
and-int/2addr v2, v3
int-to-long v2, v2
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/tencent/utils/ZipLong;->a:J
iget-wide v0, p0, Lcom/tencent/utils/ZipLong;->a:J
add-int/lit8 v2, p2, 0x1
aget-byte v2, p1, v2
shl-int/lit8 v2, v2, 0x8
const v3, 0xff00
and-int/2addr v2, v3
int-to-long v2, v2
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/tencent/utils/ZipLong;->a:J
iget-wide v0, p0, Lcom/tencent/utils/ZipLong;->a:J
aget-byte v2, p1, p2
and-int/lit16 v2, v2, 0xff
int-to-long v2, v2
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/tencent/utils/ZipLong;->a:J
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x0
if-eqz p1, :cond_7
instance-of v1, p1, Lcom/tencent/utils/ZipLong;
if-nez v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
iget-wide v1, p0, Lcom/tencent/utils/ZipLong;->a:J
check-cast p1, Lcom/tencent/utils/ZipLong;
invoke-virtual {p1}, Lcom/tencent/utils/ZipLong;->getValue()J
move-result-wide v3
cmp-long v1, v1, v3
if-nez v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method
.method public getBytes()[B
.registers 7
const/4 v0, 0x4
new-array v0, v0, [B
const/4 v1, 0x0
iget-wide v2, p0, Lcom/tencent/utils/ZipLong;->a:J
const-wide/16 v4, 0xff
and-long/2addr v2, v4
long-to-int v2, v2
int-to-byte v2, v2
aput-byte v2, v0, v1
const/4 v1, 0x1
iget-wide v2, p0, Lcom/tencent/utils/ZipLong;->a:J
const-wide/32 v4, 0xff00
and-long/2addr v2, v4
const/16 v4, 0x8
shr-long/2addr v2, v4
long-to-int v2, v2
int-to-byte v2, v2
aput-byte v2, v0, v1
const/4 v1, 0x2
iget-wide v2, p0, Lcom/tencent/utils/ZipLong;->a:J
const-wide/32 v4, 0xff0000
and-long/2addr v2, v4
const/16 v4, 0x10
shr-long/2addr v2, v4
long-to-int v2, v2
int-to-byte v2, v2
aput-byte v2, v0, v1
const/4 v1, 0x3
iget-wide v2, p0, Lcom/tencent/utils/ZipLong;->a:J
const-wide v4, 0xff000000L
and-long/2addr v2, v4
const/16 v4, 0x18
shr-long/2addr v2, v4
long-to-int v2, v2
int-to-byte v2, v2
aput-byte v2, v0, v1
return-object v0
.end method
.method public getValue()J
.registers 3
iget-wide v0, p0, Lcom/tencent/utils/ZipLong;->a:J
return-wide v0
.end method
.method public hashCode()I
.registers 3
iget-wide v0, p0, Lcom/tencent/utils/ZipLong;->a:J
long-to-int v0, v0
return v0
.end method