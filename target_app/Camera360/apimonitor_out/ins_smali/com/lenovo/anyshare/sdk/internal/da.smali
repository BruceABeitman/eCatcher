.class public Lcom/lenovo/anyshare/sdk/internal/da;
.super Ljava/lang/Object;
.source "CorrectingDecoder.java"
.field private static final a:Lcom/lenovo/anyshare/sdk/internal/cy;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x3
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/cy;->a(I)Lcom/lenovo/anyshare/sdk/internal/cy;
move-result-object v0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/da;->a:Lcom/lenovo/anyshare/sdk/internal/cy;
return-void
.end method
.method public static a([B)Lcom/lenovo/anyshare/sdk/internal/da$a;
.registers 7
const/4 v1, 0x2
move-object v0, p0
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/da;->a:Lcom/lenovo/anyshare/sdk/internal/cy;
invoke-virtual {v3, p0}, Lcom/lenovo/anyshare/sdk/internal/cy;->b([B)Lcom/lenovo/anyshare/sdk/internal/cy$a;
move-result-object v2
iget v3, v2, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a:I
const/16 v4, 0x10
if-eq v3, v4, :cond_14
iget v3, v2, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a:I
const/16 v4, 0x100
if-ne v3, v4, :cond_15
:cond_14
const/4 v1, 0x4
:cond_15
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a()[B
move-result-object v0
const-string/jumbo v3, "CorrectingEncoder"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "CorrectingResult(): Result:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, v2, Lcom/lenovo/anyshare/sdk/internal/cy$a;->a:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/da$a;
invoke-direct {v3, v1, v0}, Lcom/lenovo/anyshare/sdk/internal/da$a;-><init>(I[B)V
return-object v3
.end method