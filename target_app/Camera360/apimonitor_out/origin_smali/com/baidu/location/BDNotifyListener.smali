.class public abstract Lcom/baidu/location/BDNotifyListener;
.super Ljava/lang/Object;


# instance fields
.field public Notified:I

.field public differDistance:F

.field public isAdded:Z

.field public mCoorType:Ljava/lang/String;

.field public mLatitude:D

.field public mLatitudeC:D

.field public mLongitude:D

.field public mLongitudeC:D

.field public mNotifyCache:Lcom/baidu/location/i;

.field public mRadius:F


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLatitude:D

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLongitude:D

    iput v2, p0, Lcom/baidu/location/BDNotifyListener;->mRadius:F

    iput v2, p0, Lcom/baidu/location/BDNotifyListener;->differDistance:F

    iput-object v4, p0, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D

    iput v3, p0, Lcom/baidu/location/BDNotifyListener;->Notified:I

    iput-boolean v3, p0, Lcom/baidu/location/BDNotifyListener;->isAdded:Z

    iput-object v4, p0, Lcom/baidu/location/BDNotifyListener;->mNotifyCache:Lcom/baidu/location/i;

    return-void
.end method


# virtual methods
.method public SetNotifyLocation(DDFLjava/lang/String;)V
    .registers 9

    iput-wide p1, p0, Lcom/baidu/location/BDNotifyListener;->mLatitude:D

    iput-wide p3, p0, Lcom/baidu/location/BDNotifyListener;->mLongitude:D

    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_53

    const/high16 v0, 0x4348

    iput v0, p0, Lcom/baidu/location/BDNotifyListener;->mRadius:F

    :goto_d
    const-string/jumbo v0, "gcj02"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "bd09"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "bd09ll"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string/jumbo v0, "gps"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_31
    iput-object p6, p0, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    :goto_33
    iget-object v0, p0, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    const-string/jumbo v1, "gcj02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLatitude:D

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D

    iget-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLongitude:D

    iput-wide v0, p0, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D

    :cond_46
    iget-boolean v0, p0, Lcom/baidu/location/BDNotifyListener;->isAdded:Z

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDNotifyListener;->Notified:I

    iget-object v0, p0, Lcom/baidu/location/BDNotifyListener;->mNotifyCache:Lcom/baidu/location/i;

    invoke-virtual {v0, p0}, Lcom/baidu/location/i;->a(Lcom/baidu/location/BDNotifyListener;)V

    :cond_52
    return-void

    :cond_53
    iput p5, p0, Lcom/baidu/location/BDNotifyListener;->mRadius:F

    goto :goto_d

    :cond_56
    const-string/jumbo v0, "gcj02"

    iput-object v0, p0, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    goto :goto_33
.end method

.method public onNotify(Lcom/baidu/location/BDLocation;F)V
    .registers 6

    const-string/jumbo v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new location, not far from the destination..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
