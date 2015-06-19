.class public final Lcom/ford/syncV4/protocol/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:B
.field private b:I
.field private c:I
.field private d:I
.field private e:[B
.field private f:[B
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a([B)Lcom/ford/syncV4/protocol/b;
.registers 7
const/4 v5, 0x0
new-instance v0, Lcom/ford/syncV4/protocol/b;
invoke-direct {v0}, Lcom/ford/syncV4/protocol/b;-><init>()V
aget-byte v1, p0, v5
ushr-int/lit8 v1, v1, 0x4
int-to-byte v1, v1
iput-byte v1, v0, Lcom/ford/syncV4/protocol/b;->a:B
invoke-static {p0, v5}, Lcom/ford/syncV4/util/a;->a([BI)I
move-result v1
const v2, 0xfffffff
and-int/2addr v1, v2
iput v1, v0, Lcom/ford/syncV4/protocol/b;->b:I
const/4 v1, 0x4
invoke-static {p0, v1}, Lcom/ford/syncV4/util/a;->a([BI)I
move-result v1
iput v1, v0, Lcom/ford/syncV4/protocol/b;->c:I
const/16 v1, 0x8
invoke-static {p0, v1}, Lcom/ford/syncV4/util/a;->a([BI)I
move-result v1
iput v1, v0, Lcom/ford/syncV4/protocol/b;->d:I
if-lez v1, :cond_3c
new-array v2, v1, [B
const/16 v3, 0xc
invoke-static {p0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v3, v0, Lcom/ford/syncV4/protocol/b;->d:I
new-array v3, v3, [B
iput-object v3, v0, Lcom/ford/syncV4/protocol/b;->e:[B
iget-object v3, v0, Lcom/ford/syncV4/protocol/b;->e:[B
iget v4, v0, Lcom/ford/syncV4/protocol/b;->d:I
invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_3c
array-length v2, p0
sub-int/2addr v2, v1
add-int/lit8 v2, v2, -0xc
if-lez v2, :cond_50
array-length v2, p0
sub-int/2addr v2, v1
add-int/lit8 v2, v2, -0xc
new-array v2, v2, [B
add-int/lit8 v1, v1, 0xc
array-length v3, v2
invoke-static {p0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v2, v0, Lcom/ford/syncV4/protocol/b;->f:[B
:cond_50
return-object v0
.end method
.method public final a(B)V
.registers 2
iput-byte p1, p0, Lcom/ford/syncV4/protocol/b;->a:B
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/ford/syncV4/protocol/b;->b:I
return-void
.end method
.method protected final a()[B
.registers 6
const/4 v4, 0x4
const/4 v3, 0x0
iget v0, p0, Lcom/ford/syncV4/protocol/b;->b:I
const v1, 0xfffffff
and-int/2addr v0, v1
iget-byte v1, p0, Lcom/ford/syncV4/protocol/b;->a:B
shl-int/lit8 v1, v1, 0x1c
or-int/2addr v0, v1
const/16 v1, 0xc
new-array v1, v1, [B
invoke-static {v0}, Lcom/ford/syncV4/util/a;->a(I)[B
move-result-object v0
invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/ford/syncV4/protocol/b;->c:I
invoke-static {v0}, Lcom/ford/syncV4/util/a;->a(I)[B
move-result-object v0
invoke-static {v0, v3, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/ford/syncV4/protocol/b;->d:I
invoke-static {v0}, Lcom/ford/syncV4/util/a;->a(I)[B
move-result-object v0
const/16 v2, 0x8
invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v1
.end method
.method public final b()B
.registers 2
iget-byte v0, p0, Lcom/ford/syncV4/protocol/b;->a:B
return v0
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/ford/syncV4/protocol/b;->c:I
return-void
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/ford/syncV4/protocol/b;->b:I
return v0
.end method
.method public final c(I)V
.registers 2
iput p1, p0, Lcom/ford/syncV4/protocol/b;->d:I
return-void
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/ford/syncV4/protocol/b;->c:I
return v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/ford/syncV4/protocol/b;->d:I
return v0
.end method
.method public final f()[B
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/protocol/b;->e:[B
return-object v0
.end method
.method public final g()[B
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/protocol/b;->f:[B
return-object v0
.end method