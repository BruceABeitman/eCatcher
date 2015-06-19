.class public Lkankan/wheel/widget/adapters/AdapterWheel;
.super Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;
.source "AdapterWheel.java"
.field private adapter:Lkankan/wheel/widget/WheelAdapter;
.method public constructor <init>(Landroid/content/Context;Lkankan/wheel/widget/WheelAdapter;)V
.registers 3
invoke-direct {p0, p1}, Lkankan/wheel/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lkankan/wheel/widget/adapters/AdapterWheel;->adapter:Lkankan/wheel/widget/WheelAdapter;
return-void
.end method
.method public getAdapter()Lkankan/wheel/widget/WheelAdapter;
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/adapters/AdapterWheel;->adapter:Lkankan/wheel/widget/WheelAdapter;
return-object v0
.end method
.method protected getItemText(I)Ljava/lang/CharSequence;
.registers 3
iget-object v0, p0, Lkankan/wheel/widget/adapters/AdapterWheel;->adapter:Lkankan/wheel/widget/WheelAdapter;
invoke-interface {v0, p1}, Lkankan/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getItemsCount()I
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/adapters/AdapterWheel;->adapter:Lkankan/wheel/widget/WheelAdapter;
invoke-interface {v0}, Lkankan/wheel/widget/WheelAdapter;->getItemsCount()I
move-result v0
return v0
.end method