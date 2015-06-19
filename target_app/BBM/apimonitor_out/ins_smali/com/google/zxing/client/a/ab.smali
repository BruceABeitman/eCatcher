.class public final Lcom/google/zxing/client/a/ab;
.super Lcom/google/zxing/client/a/q;
.source "TextParsedResult.java"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/google/zxing/client/a/r;->e:Lcom/google/zxing/client/a/r;
invoke-direct {p0, v0}, Lcom/google/zxing/client/a/q;-><init>(Lcom/google/zxing/client/a/r;)V
iput-object p1, p0, Lcom/google/zxing/client/a/ab;->a:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/zxing/client/a/ab;->b:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/zxing/client/a/ab;->a:Ljava/lang/String;
return-object v0
.end method