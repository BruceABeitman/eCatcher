.class public Lcom/lenovo/anyshare/sdk/internal/dj$a;
.super Ljava/lang/Object;
.source "FrequencyDescriptor.java"
.field public a:I
.field public b:[S
.field public c:S
.field public d:S
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x5
new-array v0, v0, [S
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S
return-void
.end method
.method public constructor <init>(ISS)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/dj$a;->a:I
const/4 v0, 0x5
new-array v0, v0, [S
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dj$a;->b:[S
iput-short p2, p0, Lcom/lenovo/anyshare/sdk/internal/dj$a;->c:S
iput-short p3, p0, Lcom/lenovo/anyshare/sdk/internal/dj$a;->d:S
return-void
.end method