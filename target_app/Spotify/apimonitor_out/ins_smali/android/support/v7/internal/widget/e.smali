.class public final Landroid/support/v7/internal/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Comparable;
.field public final a:Landroid/content/pm/ResolveInfo;
.field public b:F
.field final synthetic c:Landroid/support/v7/internal/widget/d;
.method public constructor <init>(Landroid/support/v7/internal/widget/d;Landroid/content/pm/ResolveInfo;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/e;->c:Landroid/support/v7/internal/widget/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v7/internal/widget/e;->a:Landroid/content/pm/ResolveInfo;
return-void
.end method
.method public final synthetic compareTo(Ljava/lang/Object;)I
.registers 4
check-cast p1, Landroid/support/v7/internal/widget/e;
iget v0, p1, Landroid/support/v7/internal/widget/e;->b:F
invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v0
iget v1, p0, Landroid/support/v7/internal/widget/e;->b:F
invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v1
sub-int/2addr v0, v1
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:cond_4
:goto_4
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
check-cast p1, Landroid/support/v7/internal/widget/e;
iget v2, p0, Landroid/support/v7/internal/widget/e;->b:F
invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v2
iget v3, p1, Landroid/support/v7/internal/widget/e;->b:F
invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v3
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/widget/e;->b:F
invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v0
add-int/lit8 v0, v0, 0x1f
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "["
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "resolveInfo:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/internal/widget/e;->a:Landroid/content/pm/ResolveInfo;
invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "; weight:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
new-instance v2, Ljava/math/BigDecimal;
iget v3, p0, Landroid/support/v7/internal/widget/e;->b:F
float-to-double v3, v3
invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method