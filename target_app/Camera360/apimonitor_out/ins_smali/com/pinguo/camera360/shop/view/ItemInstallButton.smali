.class public Lcom/pinguo/camera360/shop/view/ItemInstallButton;
.super Landroid/widget/RelativeLayout;
.source "ItemInstallButton.java"
.implements Lcom/pinguo/camera360/shop/view/InstallButton;
.field private mInstallFailedBgRes:I
.field private mInstalledBgRes:I
.field private mInstallingBgRes:I
.field private mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
.field private mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
.field private mState:I
.field private mUnintallBgRes:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mState:I
new-instance v0, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton$1;-><init>(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mState:I
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/shop/view/ItemInstallButton;)Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
return-object v0
.end method
.method private updateState()V
.registers 4
iget v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mState:I
packed-switch v0, :pswitch_data_3e
:pswitch_5
const-string/jumbo v0, ""
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Invalid state:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mState:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:goto_1d
return-void
:pswitch_1e
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
iget v1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mUnintallBgRes:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setBackgroundResource(I)V
goto :goto_1d
:pswitch_26
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
iget v1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mInstallingBgRes:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setBackgroundResource(I)V
goto :goto_1d
:pswitch_2e
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
iget v1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mInstalledBgRes:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setBackgroundResource(I)V
goto :goto_1d
:pswitch_36
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
iget v1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mInstallFailedBgRes:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setBackgroundResource(I)V
goto :goto_1d
:pswitch_data_3e
.packed-switch 0x0
:pswitch_1e
:pswitch_2e
:pswitch_5
:pswitch_26
:pswitch_36
.end packed-switch
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a0339
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/view/ProgressButton;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
return-void
.end method
.method public setInstallFailedState(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mInstallFailedBgRes:I
return-void
.end method
.method public setInstalledState(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mInstalledBgRes:I
return-void
.end method
.method public setOnInstallBtnClickListener(Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mListener:Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;
return-void
.end method
.method public setProgress(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V
return-void
.end method
.method public setProgressBackgroundColor(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgressBackgroundColor(I)V
return-void
.end method
.method public setProgressColor(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgressColor(I)V
return-void
.end method
.method public setState(I)V
.registers 4
const/4 v0, 0x1
if-ne p1, v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
const/16 v1, 0x64
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V
:cond_a
:goto_a
iput p1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mState:I
invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->updateState()V
return-void
:cond_10
if-nez p1, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V
goto :goto_a
.end method
.method public setText(I)V
.registers 6
const/4 v2, 0x6
const/4 v3, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v1
invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v2
invoke-virtual {v0, v1, v3, v2, v3}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setPadding(IIII)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setText(I)V
return-void
.end method
.method public setText(Ljava/lang/CharSequence;)V
.registers 6
const/4 v2, 0x6
const/4 v3, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v1
invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v2
invoke-virtual {v0, v1, v3, v2, v3}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setPadding(IIII)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mProgressBtn:Lcom/pinguo/camera360/shop/view/ProgressButton;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setUnintallState(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/shop/view/ItemInstallButton;->mUnintallBgRes:I
return-void
.end method