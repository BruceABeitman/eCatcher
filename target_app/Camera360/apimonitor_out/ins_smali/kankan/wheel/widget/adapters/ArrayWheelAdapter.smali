.class public Lkankan/wheel/widget/adapters/ArrayWheelAdapter;
.super Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;
.source "ArrayWheelAdapter.java"
.field private items:[Ljava/lang/Object;
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
.registers 3
invoke-direct {p0, p1}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->items:[Ljava/lang/Object;
return-void
.end method
.method public getItemText(I)Ljava/lang/CharSequence;
.registers 4
if-ltz p1, :cond_17
iget-object v1, p0, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->items:[Ljava/lang/Object;
array-length v1, v1
if-ge p1, v1, :cond_17
iget-object v1, p0, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->items:[Ljava/lang/Object;
aget-object v0, v1, p1
instance-of v1, v0, Ljava/lang/CharSequence;
if-eqz v1, :cond_12
check-cast v0, Ljava/lang/CharSequence;
:goto_11
return-object v0
:cond_12
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_17
const/4 v0, 0x0
goto :goto_11
.end method
.method public getItemsCount()I
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->items:[Ljava/lang/Object;
array-length v0, v0
return v0
.end method