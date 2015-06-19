.class public final Lcom/baidu/location/BDLocation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/BDLocation$a;
    }
.end annotation


# static fields
.field public static final TypeCacheLocation:I = 0x41

.field public static final TypeCriteriaException:I = 0x3e

.field public static final TypeGpsLocation:I = 0x3d

.field public static final TypeNetWorkException:I = 0x3f

.field public static final TypeNetWorkLocation:I = 0xa1

.field public static final TypeNone:I = 0x0

.field public static final TypeOffLineLocation:I = 0x42

.field public static final TypeOffLineLocationFail:I = 0x43

.field public static final TypeOffLineLocationNetworkFail:I = 0x44

.field public static final TypeServerError:I = 0xa7


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private byte:Ljava/lang/String;

.field private c:Z

.field private case:Z

.field private char:F

.field private d:Ljava/lang/String;

.field private do:I

.field private e:Z

.field private else:D

.field private f:D

.field private for:D

.field private goto:Ljava/lang/String;

.field private if:I

.field private int:Z

.field private long:F

.field public mAddr:Lcom/baidu/location/BDLocation$a;

.field public mServerString:Ljava/lang/String;

.field private new:F

.field private try:Z

.field private void:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->if:I

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->for:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->c:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->int:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->new:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->try:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->do:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->char:F

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->void:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->case:Z

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->mServerString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    new-instance v0, Lcom/baidu/location/BDLocation$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation$a;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    return-void
.end method

.method public constructor <init>(DDF)V
    .registers 11

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->if:I

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->for:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->c:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->int:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->new:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->try:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->do:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->char:F

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->void:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->case:Z

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->mServerString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    new-instance v0, Lcom/baidu/location/BDLocation$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation$a;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iput-wide p3, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->for:D

    iput p5, p0, Lcom/baidu/location/BDLocation;->long:F

    invoke-static {}, Lcom/baidu/location/j;->for()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/baidu/location/BDLocation;->if:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->for:D

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->c:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->int:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->new:F

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->try:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->do:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->char:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->void:Z

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->case:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->mServerString:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->e:Z

    new-instance v0, Lcom/baidu/location/BDLocation$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation$a;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    if-eqz p1, :cond_45

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_45
    :goto_45
    return-void

    :cond_46
    :try_start_46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const-string/jumbo v3, "time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    const/16 v1, 0x3d

    if-ne v2, v1, :cond_dc

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string/jumbo v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setSpeed(F)V

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setDerect(F)V

    const-string/jumbo v1, "n"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setSatelliteNumber(I)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_d0} :catch_d2

    goto/16 :goto_45

    :catch_d2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput v4, p0, Lcom/baidu/location/BDLocation;->if:I

    iput-boolean v4, p0, Lcom/baidu/location/BDLocation;->void:Z

    goto/16 :goto_45

    :cond_dc
    const/16 v1, 0xa1

    if-ne v2, v1, :cond_241

    :try_start_e0
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "point"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string/jumbo v0, "radius"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string/jumbo v0, "addr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_239

    const-string/jumbo v0, "addr"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iput-object v0, v2, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    const-string/jumbo v2, "baidu_location_service"

    invoke-static {v2, v0}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    iput-object v0, v2, Lcom/baidu/location/BDLocation$a;->for:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    const-string/jumbo v2, "\u5317\u4eac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17d

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    const-string/jumbo v2, "\u5317\u4eac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cb

    :cond_17d
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    const-string/jumbo v2, "\u4e0a\u6d77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_197

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    const-string/jumbo v2, "\u4e0a\u6d77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cb

    :cond_197
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    const-string/jumbo v2, "\u5929\u6d25"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    const-string/jumbo v2, "\u5929\u6d25"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cb

    :cond_1b1
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    const-string/jumbo v2, "\u91cd\u5e86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21f

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    const-string/jumbo v2, "\u91cd\u5e86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21f

    :cond_1cb
    const-string/jumbo v0, "baidu_location_service"

    const-string/jumbo v2, "true,beijing"

    invoke-static {v0, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    :goto_1d8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iput-object v0, v2, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->void:Z

    :goto_204
    const-string/jumbo v0, "poi"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->case:Z

    const-string/jumbo v0, "poi"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    goto/16 :goto_45

    :cond_21f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v2, v2, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d8

    :cond_239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->void:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/location/BDLocation;->setAddrStr(Ljava/lang/String;)V

    goto :goto_204

    :cond_241
    const/16 v1, 0x42

    if-eq v2, v1, :cond_249

    const/16 v1, 0x44

    if-ne v2, v1, :cond_45

    :cond_249
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "point"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const-string/jumbo v1, "radius"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string/jumbo v1, "isCellChanged"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/BDLocation;->a(Ljava/lang/Boolean;)V
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_293} :catch_d2

    goto/16 :goto_45
.end method

.method public constructor <init>(Ljava/lang/String;DDFLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/baidu/location/BDLocation;->if:I

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->for:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->c:Z

    iput-wide v3, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->int:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->new:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->try:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/BDLocation;->do:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/baidu/location/BDLocation;->char:F

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->void:Z

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->case:Z

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->mServerString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    new-instance v0, Lcom/baidu/location/BDLocation$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation$a;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/location/BDLocation;->else:D

    iput-wide p4, p0, Lcom/baidu/location/BDLocation;->for:D

    iput p6, p0, Lcom/baidu/location/BDLocation;->long:F

    iput-object p7, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/j;->for()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    return-void
.end method


# virtual methods
.method public getAddrStr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->try:Ljava/lang/String;

    return-object v0
.end method

.method public getAltitude()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    return-wide v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->new:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->for:Ljava/lang/String;

    return-object v0
.end method

.method public getCoorType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public getDerect()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->char:F

    return v0
.end method

.method public getDistrict()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->int:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->else:D

    return-wide v0
.end method

.method public getLocType()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->if:I

    return v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->for:D

    return-wide v0
.end method

.method public getPoi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->byte:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->long:F

    return v0
.end method

.method public getSatelliteNumber()I
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->b:Z

    iget v0, p0, Lcom/baidu/location/BDLocation;->do:I

    return v0
.end method

.method public getSpeed()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/BDLocation;->new:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->byte:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->mAddr:Lcom/baidu/location/BDLocation$a;

    iget-object v0, v0, Lcom/baidu/location/BDLocation$a;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddr()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->void:Z

    return v0
.end method

.method public hasAltitude()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->c:Z

    return v0
.end method

.method public hasPoi()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->case:Z

    return v0
.end method

.method public hasRadius()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->try:Z

    return v0
.end method

.method public hasSateNumber()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->b:Z

    return v0
.end method

.method public hasSpeed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->int:Z

    return v0
.end method

.method public isCellChangeFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    return v0
.end method

.method public setAddrStr(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->void:Z

    return-void
.end method

.method public setAltitude(D)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->f:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->c:Z

    return-void
.end method

.method public setCoorType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->goto:Ljava/lang/String;

    return-void
.end method

.method public setDerect(F)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->char:F

    return-void
.end method

.method public setLatitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->else:D

    return-void
.end method

.method public setLocType(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->if:I

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->for:D

    return-void
.end method

.method public setRadius(F)V
    .registers 3

    iput p1, p0, Lcom/baidu/location/BDLocation;->long:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->try:Z

    return-void
.end method

.method public setSatelliteNumber(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/BDLocation;->do:I

    return-void
.end method

.method public setSpeed(F)V
    .registers 3

    iput p1, p0, Lcom/baidu/location/BDLocation;->new:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->int:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->d:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public toNewLocation(Ljava/lang/String;)Lcom/baidu/location/BDLocation;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
