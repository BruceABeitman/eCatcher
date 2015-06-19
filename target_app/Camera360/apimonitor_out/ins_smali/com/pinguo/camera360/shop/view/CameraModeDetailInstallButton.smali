.class public Lcom/pinguo/camera360/shop/view/CameraModeDetailInstallButton;
.super Lcom/pinguo/camera360/shop/view/DetailInstallButton;
.source "CameraModeDetailInstallButton.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method protected onStateChange(I)V
.registers 5
packed-switch p1, :pswitch_data_38
:pswitch_3
const-string/jumbo v0, ""
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Invalid state:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:goto_19
return-void
:pswitch_1a
const v0, 0x7f02015b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/CameraModeDetailInstallButton;->setBackgroundResource(I)V
goto :goto_19
:pswitch_21
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/CameraModeDetailInstallButton;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f07006c
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/CameraModeDetailInstallButton;->setBackgroundColor(I)V
goto :goto_19
:pswitch_30
const v0, 0x7f02015a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/CameraModeDetailInstallButton;->setBackgroundResource(I)V
goto :goto_19
nop
:pswitch_data_38
.packed-switch 0x0
:pswitch_1a
:pswitch_30
:pswitch_3
:pswitch_21
.end packed-switch
.end method