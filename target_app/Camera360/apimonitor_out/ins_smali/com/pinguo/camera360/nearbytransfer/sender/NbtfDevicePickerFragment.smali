.class public Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;
.super Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;
.source "NbtfDevicePickerFragment.java"
.implements Landroid/view/View$OnClickListener;
.field private static final MSG_REFREASH_DEVCIES:I = 0x64
.field private static final TAG:Ljava/lang/String;
.field private mDeviceViews:Ljava/util/List;
.field private mDevices:Ljava/util/List;
.field private mGuideView:Landroid/view/View;
.field private mHandler:Landroid/os/Handler;
.field private mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;-><init>()V
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->updateDevices()V
return-void
.end method
.method static synthetic access$1()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->getSendActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
return-object v0
.end method
.method private getSendActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
return-object v0
.end method
.method private updateDevices()V
.registers 13
const/4 v5, 0x0
:goto_1
iget-object v7, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v7
if-lt v5, v7, :cond_e
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
if-nez v2, :cond_1e
:cond_d
return-void
:cond_e
iget-object v7, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/view/View;
const/16 v8, 0x8
invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
add-int/lit8 v5, v5, 0x1
goto :goto_1
:cond_1e
const/4 v4, 0x0
:goto_1f
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v7
if-ge v4, v7, :cond_d
const/4 v7, 0x5
if-ge v4, v7, :cond_d
const/4 v1, 0x0
:try_start_29
invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
move-object v0, v7
check-cast v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
move-object v1, v0
:try_end_31
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_31} :catch_36
:goto_31
if-nez v1, :cond_3b
:goto_33
add-int/lit8 v4, v4, 0x1
goto :goto_1f
:catch_36
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_31
:cond_3b
iget-object v7, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/view/View;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V
const v7, 0x7f0a0444
invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->getName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v7, 0x7f0a045d
invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->getResources()Landroid/content/res/Resources;
move-result-object v8
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "nbtf_icon_"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
add-int/lit8 v10, v4, 0x1
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
const-string/jumbo v10, "drawable"
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v11
invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v8
invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_33
.end method
.method public onBackPressed()Z
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->getContainerActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->back2PickPhotos()V
const/4 v0, 0x1
return v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_20
:goto_7
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mGuideView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mGuideView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_7
:cond_18
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mGuideView:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_7
nop
:pswitch_data_20
.packed-switch 0x7f0a044b
:pswitch_8
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->getContainerActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->startClient()V
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->addNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
const v0, 0x7f030057
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onDestroyView()V
.registers 3
invoke-super {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->onDestroyView()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->removeNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 14
const v10, 0x7f0a044b
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v8, 0x7f0a01bb
invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/ui/TitleView;
const v8, 0x7f080122
invoke-virtual {v5, v8}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
new-instance v8, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$3;
invoke-direct {v8, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$3;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)V
invoke-virtual {v5, v8}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
const v8, 0x7f0a044c
invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v8
iput-object v8, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mGuideView:Landroid/view/View;
invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v8
invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v8, 0x7f0a0457
invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RoundImageView;
const v8, 0x7f020302
invoke-virtual {v0, v8}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setDefaultImage(I)V
const v8, 0x7f0a0444
invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v8
invoke-static {v8}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v6
if-eqz v6, :cond_c4
iget-object v8, v6, Lcom/pinguo/camera360/login/model/User$Info;->avatar:Ljava/lang/String;
invoke-virtual {v0, v8}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setImageUrl(Ljava/lang/String;)V
iget-object v8, v6, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;
invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_5d
const v8, 0x7f0a0455
invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
invoke-virtual {v8, v0}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->setAlignView(Landroid/view/View;)V
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
iput-object v8, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
iget-object v8, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
const v9, 0x7f0a045c
invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v8, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
const v9, 0x7f0a045b
invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v8, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
const v9, 0x7f0a045a
invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v8, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
const v9, 0x7f0a0459
invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v8, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
const v9, 0x7f0a0458
invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v1, 0x0
:goto_ad
iget-object v8, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v8
if-lt v1, v8, :cond_ca
invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/16 v8, 0x9
invoke-virtual {v4, v8}, Landroid/widget/TextView;->setPaintFlags(I)V
return-void
:cond_c4
sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_5d
:cond_ca
iget-object v8, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDeviceViews:Ljava/util/List;
invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/view/View;
const/16 v8, 0x8
invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V
move v3, v1
new-instance v8, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$4;
invoke-direct {v8, p0, v3}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$4;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;I)V
invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
add-int/lit8 v1, v1, 0x1
goto :goto_ad
.end method