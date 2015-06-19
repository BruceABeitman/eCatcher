.class public Lkankan/wheel/widget/ItemsRange;
.super Ljava/lang/Object;
.source "ItemsRange.java"
.field private count:I
.field private first:I
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0, v0}, Lkankan/wheel/widget/ItemsRange;-><init>(II)V
return-void
.end method
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lkankan/wheel/widget/ItemsRange;->first:I
iput p2, p0, Lkankan/wheel/widget/ItemsRange;->count:I
return-void
.end method
.method public contains(I)Z
.registers 3
invoke-virtual {p0}, Lkankan/wheel/widget/ItemsRange;->getFirst()I
move-result v0
if-lt p1, v0, :cond_e
invoke-virtual {p0}, Lkankan/wheel/widget/ItemsRange;->getLast()I
move-result v0
if-gt p1, v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getCount()I
.registers 2
iget v0, p0, Lkankan/wheel/widget/ItemsRange;->count:I
return v0
.end method
.method public getFirst()I
.registers 2
iget v0, p0, Lkankan/wheel/widget/ItemsRange;->first:I
return v0
.end method
.method public getLast()I
.registers 3
invoke-virtual {p0}, Lkankan/wheel/widget/ItemsRange;->getFirst()I
move-result v0
invoke-virtual {p0}, Lkankan/wheel/widget/ItemsRange;->getCount()I
move-result v1
add-int/2addr v0, v1
add-int/lit8 v0, v0, -0x1
return v0
.end method