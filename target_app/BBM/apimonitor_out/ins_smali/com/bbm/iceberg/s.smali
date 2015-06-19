.class public final Lcom/bbm/iceberg/s;
.super Ljava/lang/Object;
.source "ProgressAmount.java"
.field private final a:I
.field private final b:I
.method public constructor <init>(II)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-gtz p2, :cond_b
iput v0, p0, Lcom/bbm/iceberg/s;->a:I
iput v0, p0, Lcom/bbm/iceberg/s;->b:I
:goto_a
return-void
:cond_b
iput p1, p0, Lcom/bbm/iceberg/s;->a:I
iput p2, p0, Lcom/bbm/iceberg/s;->b:I
goto :goto_a
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
check-cast p1, Lcom/bbm/iceberg/s;
iget v2, p0, Lcom/bbm/iceberg/s;->a:I
iget v3, p1, Lcom/bbm/iceberg/s;->a:I
if-eq v2, v3, :cond_1f
move v0, v1
goto :goto_4
:cond_1f
iget v2, p0, Lcom/bbm/iceberg/s;->b:I
iget v3, p1, Lcom/bbm/iceberg/s;->b:I
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 3
iget v0, p0, Lcom/bbm/iceberg/s;->a:I
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v0, v0, 0x1f
iget v1, p0, Lcom/bbm/iceberg/s;->b:I
add-int/2addr v0, v1
return v0
.end method