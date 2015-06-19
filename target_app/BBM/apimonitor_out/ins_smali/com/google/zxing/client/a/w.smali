.class public final Lcom/google/zxing/client/a/w;
.super Lcom/google/zxing/client/a/q;
.source "SMSParsedResult.java"
.field public final a:[Ljava/lang/String;
.field public final b:Ljava/lang/String;
.field public final c:Ljava/lang/String;
.field private final d:[Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x0
const/4 v2, 0x1
const/4 v1, 0x0
sget-object v0, Lcom/google/zxing/client/a/r;->h:Lcom/google/zxing/client/a/r;
invoke-direct {p0, v0}, Lcom/google/zxing/client/a/q;-><init>(Lcom/google/zxing/client/a/r;)V
new-array v0, v2, [Ljava/lang/String;
aput-object p1, v0, v1
iput-object v0, p0, Lcom/google/zxing/client/a/w;->a:[Ljava/lang/String;
new-array v0, v2, [Ljava/lang/String;
aput-object v3, v0, v1
iput-object v0, p0, Lcom/google/zxing/client/a/w;->d:[Ljava/lang/String;
iput-object v3, p0, Lcom/google/zxing/client/a/w;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/google/zxing/client/a/w;->c:Ljava/lang/String;
return-void
.end method
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
sget-object v0, Lcom/google/zxing/client/a/r;->h:Lcom/google/zxing/client/a/r;
invoke-direct {p0, v0}, Lcom/google/zxing/client/a/q;-><init>(Lcom/google/zxing/client/a/r;)V
iput-object p1, p0, Lcom/google/zxing/client/a/w;->a:[Ljava/lang/String;
iput-object p2, p0, Lcom/google/zxing/client/a/w;->d:[Ljava/lang/String;
iput-object p3, p0, Lcom/google/zxing/client/a/w;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/google/zxing/client/a/w;->c:Ljava/lang/String;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x64
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v1, p0, Lcom/google/zxing/client/a/w;->a:[Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/a/w;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/a/w;->b:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/a/w;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
iget-object v1, p0, Lcom/google/zxing/client/a/w;->c:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/google/zxing/client/a/w;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method