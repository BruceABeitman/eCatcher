.class public abstract Lcom/google/zxing/e/a/a/a/j;
.super Ljava/lang/Object;
.source "AbstractExpandedDecoder.java"
.field final a:Lcom/google/zxing/b/a;
.field final b:Lcom/google/zxing/e/a/a/a/t;
.method constructor <init>(Lcom/google/zxing/b/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/e/a/a/a/j;->a:Lcom/google/zxing/b/a;
new-instance v0, Lcom/google/zxing/e/a/a/a/t;
invoke-direct {v0, p1}, Lcom/google/zxing/e/a/a/a/t;-><init>(Lcom/google/zxing/b/a;)V
iput-object v0, p0, Lcom/google/zxing/e/a/a/a/j;->b:Lcom/google/zxing/e/a/a/a/t;
return-void
.end method
.method public abstract a()Ljava/lang/String;
.end method