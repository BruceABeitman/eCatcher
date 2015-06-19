.class final Lcom/bbm/util/c/f;
.super Ljava/lang/Object;
.source "InlineImageUtil.java"
.field public final a:Lcom/bbm/util/c/g;
.field public final b:I
.field public final c:F
.method public constructor <init>(Lcom/bbm/util/c/g;IF)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/bbm/util/c/f;->a:Lcom/bbm/util/c/g;
iput p2, p0, Lcom/bbm/util/c/f;->b:I
iput p3, p0, Lcom/bbm/util/c/f;->c:F
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/bbm/util/c/f;
iget v2, p0, Lcom/bbm/util/c/f;->b:I
iget v3, p1, Lcom/bbm/util/c/f;->b:I
if-eq v2, v3, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget v2, p0, Lcom/bbm/util/c/f;->c:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Lcom/bbm/util/c/f;->c:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-eq v2, v3, :cond_2f
move v0, v1
goto :goto_4
:cond_2f
iget-object v2, p0, Lcom/bbm/util/c/f;->a:Lcom/bbm/util/c/g;
iget-object v3, p1, Lcom/bbm/util/c/f;->a:Lcom/bbm/util/c/g;
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 3
iget v0, p0, Lcom/bbm/util/c/f;->b:I
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/bbm/util/c/f;->c:F
invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v1, v0, 0x1f
iget-object v0, p0, Lcom/bbm/util/c/f;->a:Lcom/bbm/util/c/g;
if-nez v0, :cond_16
const/4 v0, 0x0
:goto_14
add-int/2addr v0, v1
return v0
:cond_16
iget-object v0, p0, Lcom/bbm/util/c/f;->a:Lcom/bbm/util/c/g;
invoke-virtual {v0}, Lcom/bbm/util/c/g;->hashCode()I
move-result v0
goto :goto_14
.end method