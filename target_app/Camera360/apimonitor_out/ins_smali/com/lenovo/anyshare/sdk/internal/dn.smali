.class public Lcom/lenovo/anyshare/sdk/internal/dn;
.super Ljava/lang/Object;
.source "ToneEncoder.java"
.field private a:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/dn;->a:I
return-void
.end method
.method public a(Ljava/lang/String;)[S
.registers 6
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/dh;->a(Ljava/lang/String;)[B
move-result-object v0
if-nez v0, :cond_29
const-string/jumbo v1, "ToneEncoder"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "doEncode(): "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " do character encode failed."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
:goto_28
return-object v1
:cond_29
invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/dn;->a([B)[S
move-result-object v1
goto :goto_28
.end method
.method public a([B)[S
.registers 10
const/4 v4, 0x0
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/di;->a([B)[B
move-result-object v0
if-nez v0, :cond_2e
const-string/jumbo v5, "ToneEncoder"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "doEncode(): "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " do correcting encode failed."
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v3, v4
:goto_2d
:cond_2d
return-object v3
:cond_2e
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/dl;->a([B)[B
move-result-object v2
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/dk;->a([B)Lcom/lenovo/anyshare/sdk/internal/dj;
move-result-object v1
if-nez v1, :cond_5f
const-string/jumbo v5, "ToneEncoder"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "doEncode(): "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " do frequency encode failed."
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v3, v4
goto :goto_2d
:cond_5f
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/dn;->a:I
invoke-static {v5, v1}, Lcom/lenovo/anyshare/sdk/internal/dm;->a(ILcom/lenovo/anyshare/sdk/internal/dj;)[S
move-result-object v3
if-nez v3, :cond_2d
const-string/jumbo v5, "ToneEncoder"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "doEncode(): "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " do sample encode failed."
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v3, v4
goto :goto_2d
.end method