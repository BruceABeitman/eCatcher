.class public final Lcom/c/a/cc;
.super Lcom/c/a/d;
.implements Lcom/c/bi;
.implements Ljava/lang/Comparable;
.field private final b:Lcom/c/bq;
.field private final g:I
.field private final h:D
.method public constructor <init>(Lcom/c/bq;DDID)V
.registers 15
invoke-direct {p0, p2, p3, p4, p5}, Lcom/c/a/d;-><init>(DD)V
iput-object p1, p0, Lcom/c/a/cc;->b:Lcom/c/bq;
const/16 v0, 0x12
const/16 v1, 0x31
invoke-static {p6, v0, v1}, Lcom/c/ad;->a(III)I
move-result v0
iput v0, p0, Lcom/c/a/cc;->g:I
const-wide v2, 0x3fc5555555555555L
const-wide/high16 v4, 0x3fe0
move-wide v0, p7
invoke-static/range {v0 .. v5}, Lcom/c/ad;->a(DDD)D
move-result-wide v0
iput-wide v0, p0, Lcom/c/a/cc;->h:D
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/c/a/cc;->g:I
return v0
.end method
.method public a(Lcom/c/a/cc;)I
.registers 7
const/4 v0, -0x1
if-nez p1, :cond_4
:goto_3
:cond_3
return v0
:cond_4
iget-object v1, p0, Lcom/c/a/cc;->b:Lcom/c/bq;
iget-object v2, p1, Lcom/c/a/cc;->b:Lcom/c/bq;
invoke-virtual {v1, v2}, Lcom/c/bq;->a(Lcom/c/bq;)I
move-result v1
if-eqz v1, :cond_10
move v0, v1
goto :goto_3
:cond_10
iget v1, p0, Lcom/c/a/cc;->g:I
iget v2, p1, Lcom/c/a/cc;->g:I
sub-int/2addr v1, v2
if-eqz v1, :cond_19
move v0, v1
goto :goto_3
:cond_19
iget-wide v1, p0, Lcom/c/a/cc;->h:D
iget-wide v3, p1, Lcom/c/a/cc;->h:D
cmpg-double v1, v1, v3
if-ltz v1, :cond_3
iget-wide v0, p0, Lcom/c/a/cc;->h:D
iget-wide v2, p1, Lcom/c/a/cc;->h:D
cmpl-double v0, v0, v2
if-lez v0, :cond_2b
const/4 v0, 0x1
goto :goto_3
:cond_2b
const/4 v0, 0x0
goto :goto_3
.end method
.method public b()Lcom/c/bq;
.registers 2
iget-object v0, p0, Lcom/c/a/cc;->b:Lcom/c/bq;
return-object v0
.end method
.method public synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/c/a/cc;
invoke-virtual {p0, p1}, Lcom/c/a/cc;->a(Lcom/c/a/cc;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x0
:try_start_1
check-cast p1, Lcom/c/a/cc;
if-eqz p1, :cond_1e
iget-object v1, p0, Lcom/c/a/cc;->b:Lcom/c/bq;
iget-object v2, p1, Lcom/c/a/cc;->b:Lcom/c/bq;
invoke-virtual {v1, v2}, Lcom/c/bq;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
iget v1, p0, Lcom/c/a/cc;->g:I
iget v2, p1, Lcom/c/a/cc;->g:I
if-ne v1, v2, :cond_1e
iget-wide v1, p0, Lcom/c/a/cc;->h:D
iget-wide v3, p1, Lcom/c/a/cc;->h:D
:try_end_19
.catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_19} :catch_1f
cmpl-double v1, v1, v3
if-nez v1, :cond_1e
const/4 v0, 0x1
:goto_1e
:cond_1e
return v0
:catch_1f
move-exception v1
goto :goto_1e
.end method
.method public h()D
.registers 3
iget-wide v0, p0, Lcom/c/a/cc;->h:D
return-wide v0
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/c/a/cc;->b:Lcom/c/bq;
invoke-virtual {v0}, Lcom/c/bq;->a()J
move-result-wide v0
long-to-int v0, v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/c/a/cc;->b:Lcom/c/bq;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-super {p0}, Lcom/c/a/d;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/c/a/cc;->g:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/c/a/cc;->h:D
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method