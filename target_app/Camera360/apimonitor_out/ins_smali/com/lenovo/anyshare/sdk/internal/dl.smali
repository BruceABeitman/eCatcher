.class public Lcom/lenovo/anyshare/sdk/internal/dl;
.super Ljava/lang/Object;
.source "PackageEncoder.java"
.method public static a([B)[B
.registers 6
const/4 v4, 0x0
array-length v2, p0
add-int/lit8 v0, v2, 0x4
new-array v1, v0, [B
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cw;->a:Lcom/lenovo/anyshare/sdk/internal/cv;
iget-byte v2, v2, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B
aput-byte v2, v1, v4
const/4 v2, 0x1
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cw;->b:Lcom/lenovo/anyshare/sdk/internal/cv;
iget-byte v3, v3, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B
aput-byte v3, v1, v2
const/4 v2, 0x2
array-length v3, p0
invoke-static {p0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v2, v0, -0x2
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cw;->c:Lcom/lenovo/anyshare/sdk/internal/cv;
iget-byte v3, v3, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B
aput-byte v3, v1, v2
add-int/lit8 v2, v0, -0x1
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cw;->d:Lcom/lenovo/anyshare/sdk/internal/cv;
iget-byte v3, v3, Lcom/lenovo/anyshare/sdk/internal/cv;->a:B
aput-byte v3, v1, v2
return-object v1
.end method