.class public final Lcom/google/zxing/c/b/b;
.super Ljava/lang/Object;
.source "Detector.java"
.field public final a:Lcom/google/zxing/o;
.field public final b:Lcom/google/zxing/o;
.field public final c:I
.method private constructor <init>(Lcom/google/zxing/o;Lcom/google/zxing/o;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/c/b/b;->a:Lcom/google/zxing/o;
iput-object p2, p0, Lcom/google/zxing/c/b/b;->b:Lcom/google/zxing/o;
iput p3, p0, Lcom/google/zxing/c/b/b;->c:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/zxing/o;Lcom/google/zxing/o;IB)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/c/b/b;-><init>(Lcom/google/zxing/o;Lcom/google/zxing/o;I)V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/google/zxing/c/b/b;->a:Lcom/google/zxing/o;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/zxing/c/b/b;->b:Lcom/google/zxing/o;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x2f
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/google/zxing/c/b/b;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method