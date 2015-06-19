.class public final Lcom/lenovo/anyshare/sdk/internal/di;
.super Ljava/lang/Object;
.source "CorrectingEncoder.java"
.field private static final a:Lcom/lenovo/anyshare/sdk/internal/cy;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x3
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/cy;->a(I)Lcom/lenovo/anyshare/sdk/internal/cy;
move-result-object v0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/di;->a:Lcom/lenovo/anyshare/sdk/internal/cy;
return-void
.end method
.method public static a([B)[B
.registers 3
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/di;->a:Lcom/lenovo/anyshare/sdk/internal/cy;
invoke-virtual {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/cy;->a([B)[B
move-result-object v0
return-object v0
.end method