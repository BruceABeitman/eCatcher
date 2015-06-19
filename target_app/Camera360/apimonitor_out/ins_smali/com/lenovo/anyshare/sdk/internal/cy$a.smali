.class public Lcom/lenovo/anyshare/sdk/internal/cy$a;
.super Ljava/lang/Object;
.source "RSCodecHolder.java"
.field public a:I
.field public b:[B
.field protected c:[Z
.field private d:I
.field private e:I
.method protected constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a:I
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/cy$a;->d:I
iput p2, p0, Lcom/lenovo/anyshare/sdk/internal/cy$a;->e:I
mul-int v0, p1, p2
new-array v0, v0, [B
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cy$a;->b:[B
new-array v0, p1, [Z
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cy$a;->c:[Z
return-void
.end method
.method public a()[B
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cy$a;->b:[B
return-object v0
.end method