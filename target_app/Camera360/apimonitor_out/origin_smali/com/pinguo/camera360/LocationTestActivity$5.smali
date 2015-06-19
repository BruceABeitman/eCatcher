.class Lcom/pinguo/camera360/LocationTestActivity$5;
.super Ljava/lang/Object;
.source "LocationTestActivity.java"

# interfaces
.implements Lcom/pinguo/lib/location/IPGLocationManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/LocationTestActivity;->doUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/lib/location/IPGLocationManager$Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/LocationTestActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/LocationTestActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/LocationTestActivity$5;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finallyExecute()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity$5;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;
    invoke-static {v0}, Lcom/pinguo/camera360/LocationTestActivity;->access$1(Lcom/pinguo/camera360/LocationTestActivity;)Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/lib/location/PGLocationManager;->getErrorCode()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity$5;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mTvOther:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/LocationTestActivity;->access$4(Lcom/pinguo/camera360/LocationTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/LocationTestActivity$5;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mLocationMgr:Lcom/pinguo/lib/location/PGLocationManager;
    invoke-static {v1}, Lcom/pinguo/camera360/LocationTestActivity;->access$1(Lcom/pinguo/camera360/LocationTestActivity;)Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/lib/location/PGLocationManager;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    return-void
.end method

.method public bridge synthetic postLocExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/LocationTestActivity$5;->postLocExecute(Ljava/lang/String;)V

    return-void
.end method

.method public postLocExecute(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/LocationTestActivity$5;->this$0:Lcom/pinguo/camera360/LocationTestActivity;

    #getter for: Lcom/pinguo/camera360/LocationTestActivity;->mEditAddress:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/pinguo/camera360/LocationTestActivity;->access$7(Lcom/pinguo/camera360/LocationTestActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method public preLocExecute()V
    .registers 1

    return-void
.end method
