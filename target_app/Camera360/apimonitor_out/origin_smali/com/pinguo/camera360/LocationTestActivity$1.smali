.class Lcom/pinguo/camera360/LocationTestActivity$1;
.super Ljava/lang/Object;
.source "LocationTestActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/LocationTestActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/LocationTestActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/LocationTestActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/LocationTestActivity$1;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/LocationTestActivity$1;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mRadioBtnBaidu:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/pinguo/camera360/LocationTestActivity;->access$0(Lcom/pinguo/camera360/LocationTestActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne p2, v1, :cond_29

    const-string/jumbo v0, "baidu selected"

    iget-object v1, p0, Lcom/pinguo/camera360/LocationTestActivity$1;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;
    invoke-static {v1}, Lcom/pinguo/camera360/LocationTestActivity;->access$1(Lcom/pinguo/camera360/LocationTestActivity;)Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v1

    sget-object v2, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->BAIDU_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;

    invoke-virtual {v1, v2}, Lcom/pinguo/lib/location/PGLocationManager;->switchLocationServiceTo(Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;)V

    :goto_1a
    iget-object v1, p0, Lcom/pinguo/camera360/LocationTestActivity$1;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mTvOther:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/pinguo/camera360/LocationTestActivity;->access$4(Lcom/pinguo/camera360/LocationTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/pinguo/camera360/LocationTestActivity$1;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #calls: Lcom/pinguo/camera360/LocationTestActivity;->clearLocation()V
    invoke-static {v1}, Lcom/pinguo/camera360/LocationTestActivity;->access$5(Lcom/pinguo/camera360/LocationTestActivity;)V

    return-void

    :cond_29
    iget-object v1, p0, Lcom/pinguo/camera360/LocationTestActivity$1;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mRadioBtnGoogle:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/pinguo/camera360/LocationTestActivity;->access$2(Lcom/pinguo/camera360/LocationTestActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne p2, v1, :cond_6c

    const-string/jumbo v0, "google selected"

    iget-object v1, p0, Lcom/pinguo/camera360/LocationTestActivity$1;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;
    invoke-static {v1}, Lcom/pinguo/camera360/LocationTestActivity;->access$1(Lcom/pinguo/camera360/LocationTestActivity;)Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v1

    sget-object v2, Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;->GOOGLE_LOCATION_SERVICE:Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;

    invoke-virtual {v1, v2}, Lcom/pinguo/lib/location/PGLocationManager;->switchLocationServiceTo(Lcom/pinguo/lib/location/PGLocationManager$SUPPORTED_LOCATION_SERVICE;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ", provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/pinguo/camera360/LocationTestActivity$1;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;
    invoke-static {v1}, Lcom/pinguo/camera360/LocationTestActivity;->access$1(Lcom/pinguo/camera360/LocationTestActivity;)Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/lib/location/PGLocationManager;->getLocationService()Lcom/pinguo/lib/location/service/AbstractLocationService;

    move-result-object v1

    check-cast v1, Lcom/pinguo/lib/location/service/GoogleLocationService;

    invoke-virtual {v1}, Lcom/pinguo/lib/location/service/GoogleLocationService;->getCurProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_6c
    const-string/jumbo v0, "default selected"

    iget-object v1, p0, Lcom/pinguo/camera360/LocationTestActivity$1;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #calls: Lcom/pinguo/camera360/LocationTestActivity;->startDefaultLocationService()V
    invoke-static {v1}, Lcom/pinguo/camera360/LocationTestActivity;->access$3(Lcom/pinguo/camera360/LocationTestActivity;)V

    goto :goto_1a
.end method
