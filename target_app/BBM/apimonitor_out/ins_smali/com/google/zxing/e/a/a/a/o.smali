.class final Lcom/google/zxing/e/a/a/a/o;
.super Lcom/google/zxing/e/a/a/a/r;
.source "DecodedChar.java"
.field final a:C
.method constructor <init>(IC)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/r;-><init>(I)V
iput-char p2, p0, Lcom/google/zxing/e/a/a/a/o;->a:C
return-void
.end method
.method final a()Z
.registers 3
iget-char v0, p0, Lcom/google/zxing/e/a/a/a/o;->a:C
const/16 v1, 0x24
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method