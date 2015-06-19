.class public final Lcom/mapquest/android/maps/b;
.super Ljava/lang/Object;
.source "BoundingBox.java"
.field public a:Lcom/mapquest/android/maps/s;
.field public b:Lcom/mapquest/android/maps/s;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/s;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iput-object p2, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
return-void
.end method
.method public static a(Ljava/util/List;)Lcom/mapquest/android/maps/b;
.registers 8
const/4 v1, 0x0
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_42
invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/s;
iget v1, v0, Lcom/mapquest/android/maps/s;->a:I
iget v0, v0, Lcom/mapquest/android/maps/s;->b:I
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
move v2, v0
move v3, v1
move v4, v1
move v1, v0
:goto_19
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_45
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/s;
iget v6, v0, Lcom/mapquest/android/maps/s;->a:I
if-le v6, v3, :cond_33
iget v3, v0, Lcom/mapquest/android/maps/s;->a:I
:goto_2b
:cond_2b
iget v6, v0, Lcom/mapquest/android/maps/s;->b:I
if-ge v6, v2, :cond_3a
iget v0, v0, Lcom/mapquest/android/maps/s;->b:I
move v2, v0
goto :goto_19
:cond_33
iget v6, v0, Lcom/mapquest/android/maps/s;->a:I
if-ge v6, v4, :cond_2b
iget v4, v0, Lcom/mapquest/android/maps/s;->a:I
goto :goto_2b
:cond_3a
iget v6, v0, Lcom/mapquest/android/maps/s;->b:I
if-le v6, v1, :cond_55
iget v0, v0, Lcom/mapquest/android/maps/s;->b:I
:goto_40
move v1, v0
goto :goto_19
:cond_42
move v2, v1
move v3, v1
move v4, v1
:cond_45
new-instance v0, Lcom/mapquest/android/maps/b;
new-instance v5, Lcom/mapquest/android/maps/s;
invoke-direct {v5, v3, v2}, Lcom/mapquest/android/maps/s;-><init>(II)V
new-instance v2, Lcom/mapquest/android/maps/s;
invoke-direct {v2, v4, v1}, Lcom/mapquest/android/maps/s;-><init>(II)V
invoke-direct {v0, v5, v2}, Lcom/mapquest/android/maps/b;-><init>(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/s;)V
return-object v0
:cond_55
move v0, v1
goto :goto_40
.end method
.method public final a()Lcom/mapquest/android/maps/s;
.registers 5
iget-object v0, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
new-instance v0, Lcom/mapquest/android/maps/s;
iget-object v1, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->a:I
iget-object v2, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->a:I
add-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
iget-object v2, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->b:I
iget-object v3, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v3, v3, Lcom/mapquest/android/maps/s;->b:I
add-int/2addr v2, v3
div-int/lit8 v2, v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/s;-><init>(II)V
goto :goto_9
.end method
.method public final a(Lcom/mapquest/android/maps/b;)Z
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_b
iget-object v1, p1, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
if-eqz v1, :cond_b
iget-object v1, p1, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
if-nez v1, :cond_c
:goto_b
:cond_b
return v0
:cond_c
iget-object v1, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->a:I
iget-object v2, p1, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->a:I
if-lt v1, v2, :cond_b
iget-object v1, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->b:I
iget-object v2, p1, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->b:I
if-gt v1, v2, :cond_b
iget-object v1, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->a:I
iget-object v2, p1, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->a:I
if-gt v1, v2, :cond_b
iget-object v1, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->b:I
iget-object v2, p1, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->b:I
if-lt v1, v2, :cond_b
const/4 v0, 0x1
goto :goto_b
.end method
.method public final a(Lcom/mapquest/android/maps/s;)Z
.registers 4
iget v0, p1, Lcom/mapquest/android/maps/s;->a:I
iget-object v1, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->a:I
if-gt v0, v1, :cond_22
iget v0, p1, Lcom/mapquest/android/maps/s;->a:I
iget-object v1, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->a:I
if-lt v0, v1, :cond_22
iget v0, p1, Lcom/mapquest/android/maps/s;->b:I
iget-object v1, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->b:I
if-gt v0, v1, :cond_22
iget v0, p1, Lcom/mapquest/android/maps/s;->b:I
iget-object v1, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->b:I
if-lt v0, v1, :cond_22
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public final toString()Ljava/lang/String;
.registers 7
const-wide v4, 0x3eb0c6f7a0b5ed8dL
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->a:I
int-to-double v1, v1
mul-double/2addr v1, v4
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->b:I
int-to-double v2, v2
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->a:I
int-to-double v2, v2
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v2, v2, Lcom/mapquest/android/maps/s;->b:I
int-to-double v2, v2
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method