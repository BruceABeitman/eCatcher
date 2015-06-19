.class public Lcom/pinguo/camera360/LocationTestActivity;
.super Landroid/app/Activity;
.source "LocationTestActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBtnRequestAddress:Landroid/widget/Button;

.field private mBtnUpdate:Landroid/widget/Button;

.field private mEditAddress:Landroid/widget/EditText;

.field private mEditLatitude:Landroid/widget/EditText;

.field private mEditLongitude:Landroid/widget/EditText;

.field private mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

.field private mRadioBtnBaidu:Landroid/widget/RadioButton;

.field private mRadioBtnGoogle:Landroid/widget/RadioButton;

.field private mRadioGrpServices:Landroid/widget/RadioGroup;

.field private mTvOther:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/LocationTestActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/LocationTestActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/LocationTestActivity;)Landroid/widget/RadioButton;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mRadioBtnBaidu:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/LocationTestActivity;)Lcom/pinguo/lib/location/PGLocationManager;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/LocationTestActivity;)Landroid/widget/RadioButton;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mRadioBtnGoogle:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/LocationTestActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/LocationTestActivity;->startDefaultLocationService()V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/LocationTestActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mTvOther:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/LocationTestActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/LocationTestActivity;->clearLocation()V

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/LocationTestActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/LocationTestActivity;->doRequestAddress()V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/LocationTestActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method private clearLocation()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditLatitude:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditLongitude:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditAddress:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private doRequestAddress()V
    .registers 6

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditLatitude:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditLongitude:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_31

    :cond_28
    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mTvOther:Landroid/widget/TextView;

    const-string/jumbo v4, "latitude and longitude must not be empty"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_30
    return-void

    :cond_31
    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditAddress:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/pinguo/lib/location/data/PGLocation;

    const-string/jumbo v3, "reverseGeocoded"

    invoke-direct {v1, v3}, Lcom/pinguo/lib/location/data/PGLocation;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/pinguo/lib/location/data/PGLocation;->setLatitude(D)V

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/pinguo/lib/location/data/PGLocation;->setLongitude(D)V

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    new-instance v4, Lcom/pinguo/camera360/LocationTestActivity$4;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/LocationTestActivity$4;-><init>(Lcom/pinguo/camera360/LocationTestActivity;)V

    invoke-virtual {v3, v1, v4}, Lcom/pinguo/lib/location/PGLocationManager;->requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V

    goto :goto_30
.end method

.method private initListeners()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mRadioGrpServices:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pinguo/camera360/LocationTestActivity$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/LocationTestActivity$1;-><init>(Lcom/pinguo/camera360/LocationTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mBtnUpdate:Landroid/widget/Button;

    new-instance v1, Lcom/pinguo/camera360/LocationTestActivity$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/LocationTestActivity$2;-><init>(Lcom/pinguo/camera360/LocationTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mBtnRequestAddress:Landroid/widget/Button;

    new-instance v1, Lcom/pinguo/camera360/LocationTestActivity$3;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/LocationTestActivity$3;-><init>(Lcom/pinguo/camera360/LocationTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startDefaultLocationService()V
    .registers 3

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    invoke-virtual {p0}, Lcom/pinguo/camera360/LocationTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/location/PGLocationManager;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    invoke-virtual {v0}, Lcom/pinguo/lib/location/PGLocationManager;->start()V

    return-void
.end method


# virtual methods
.method protected doUpdate()V
    .registers 8

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    invoke-virtual {v3}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v1

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    invoke-virtual {v3}, Lcom/pinguo/lib/location/PGLocationManager;->getLocationService()Lcom/pinguo/lib/location/service/AbstractLocationService;

    move-result-object v3

    instance-of v3, v3, Lcom/pinguo/lib/location/service/GoogleLocationService;

    if-eqz v3, :cond_8f

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    invoke-virtual {v3}, Lcom/pinguo/lib/location/PGLocationManager;->getLocationService()Lcom/pinguo/lib/location/service/AbstractLocationService;

    move-result-object v0

    check-cast v0, Lcom/pinguo/lib/location/service/GoogleLocationService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->getCurProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "; \nisGpsEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->isGpsEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "; \nisNetworkEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->isNetworkEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "; \nallProviders = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pinguo/lib/location/service/GoogleLocationService;->getSupportedProviders()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8f
    if-nez v1, :cond_b3

    sget-object v3, Lcom/pinguo/camera360/LocationTestActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "loc is null"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "; \nloc is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mTvOther:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b2
    return-void

    :cond_b3
    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditLatitude:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/pinguo/lib/location/data/PGLocation;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditLongitude:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/pinguo/lib/location/data/PGLocation;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    invoke-virtual {v4}, Lcom/pinguo/lib/location/PGLocationManager;->getLocationService()Lcom/pinguo/lib/location/service/AbstractLocationService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/lib/location/service/AbstractLocationService;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mTvOther:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    new-instance v4, Lcom/pinguo/camera360/LocationTestActivity$5;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/LocationTestActivity$5;-><init>(Lcom/pinguo/camera360/LocationTestActivity;)V

    invoke-virtual {v3, v1, v4}, Lcom/pinguo/lib/location/PGLocationManager;->requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V

    goto :goto_b2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300b8

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->setContentView(I)V

    const v0, 0x7f0a040d

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mRadioGrpServices:Landroid/widget/RadioGroup;

    const v0, 0x7f0a040e

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mRadioBtnBaidu:Landroid/widget/RadioButton;

    const v0, 0x7f0a040f

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mRadioBtnGoogle:Landroid/widget/RadioButton;

    const v0, 0x7f0a0412

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditLatitude:Landroid/widget/EditText;

    const v0, 0x7f0a0414

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditLongitude:Landroid/widget/EditText;

    const v0, 0x7f0a0416

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mEditAddress:Landroid/widget/EditText;

    const v0, 0x7f0a0418

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mTvOther:Landroid/widget/TextView;

    const v0, 0x7f0a0419

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mBtnUpdate:Landroid/widget/Button;

    const v0, 0x7f0a041a

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/LocationTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mBtnRequestAddress:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/pinguo/camera360/LocationTestActivity;->initListeners()V

    invoke-direct {p0}, Lcom/pinguo/camera360/LocationTestActivity;->startDefaultLocationService()V

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity;->mTvOther:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;

    invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->getLocationService()Lcom/pinguo/lib/location/service/AbstractLocationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/lib/location/service/AbstractLocationService;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
