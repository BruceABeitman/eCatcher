.class public final Lcom/baidu/location/LocationClientOption;
.super Ljava/lang/Object;
.field public static final GpsFirst:I = 0x1
.field public static final MIN_SCAN_SPAN:I = 0x3e8
.field public static final NetWorkFirst:I = 0x2
.field protected a:I
.field protected byte:Ljava/lang/String;
.field protected case:Z
.field protected char:Ljava/lang/String;
.field protected do:F
.field protected else:Z
.field protected for:Z
.field protected goto:I
.field protected if:Z
.field protected int:I
.field protected long:I
.field protected new:Ljava/lang/String;
.field protected try:Ljava/lang/String;
.field protected void:Z
.method public constructor <init>()V
.registers 4
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "gcj02"
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
const-string/jumbo v0, "detail"
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->case:Z
iput v1, p0, Lcom/baidu/location/LocationClientOption;->int:I
const/16 v0, 0x2ee0
iput v0, p0, Lcom/baidu/location/LocationClientOption;->long:I
const-string/jumbo v0, "SDK2.0"
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
iput v2, p0, Lcom/baidu/location/LocationClientOption;->goto:I
iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->void:Z
iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->for:Z
iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->else:Z
iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->if:Z
const/high16 v0, 0x43fa
iput v0, p0, Lcom/baidu/location/LocationClientOption;->do:F
const/4 v0, 0x3
iput v0, p0, Lcom/baidu/location/LocationClientOption;->a:I
const-string/jumbo v0, "com.baidu.location.service_v2.9"
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->byte:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/baidu/location/LocationClientOption;)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "gcj02"
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
const-string/jumbo v0, "detail"
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->case:Z
iput v1, p0, Lcom/baidu/location/LocationClientOption;->int:I
const/16 v0, 0x2ee0
iput v0, p0, Lcom/baidu/location/LocationClientOption;->long:I
const-string/jumbo v0, "SDK2.0"
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
iput v2, p0, Lcom/baidu/location/LocationClientOption;->goto:I
iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->void:Z
iput-boolean v2, p0, Lcom/baidu/location/LocationClientOption;->for:Z
iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->else:Z
iput-boolean v1, p0, Lcom/baidu/location/LocationClientOption;->if:Z
const/high16 v0, 0x43fa
iput v0, p0, Lcom/baidu/location/LocationClientOption;->do:F
const/4 v0, 0x3
iput v0, p0, Lcom/baidu/location/LocationClientOption;->a:I
const-string/jumbo v0, "com.baidu.location.service_v2.9"
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->byte:Ljava/lang/String;
iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->case:Z
iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->case:Z
iget v0, p1, Lcom/baidu/location/LocationClientOption;->int:I
iput v0, p0, Lcom/baidu/location/LocationClientOption;->int:I
iget v0, p1, Lcom/baidu/location/LocationClientOption;->long:I
iput v0, p0, Lcom/baidu/location/LocationClientOption;->long:I
iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
iget v0, p1, Lcom/baidu/location/LocationClientOption;->goto:I
iput v0, p0, Lcom/baidu/location/LocationClientOption;->goto:I
iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->void:Z
iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->void:Z
iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->if:Z
iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->if:Z
iget v0, p1, Lcom/baidu/location/LocationClientOption;->do:F
iput v0, p0, Lcom/baidu/location/LocationClientOption;->do:F
iget v0, p1, Lcom/baidu/location/LocationClientOption;->a:I
iput v0, p0, Lcom/baidu/location/LocationClientOption;->a:I
iget-object v0, p1, Lcom/baidu/location/LocationClientOption;->byte:Ljava/lang/String;
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->byte:Ljava/lang/String;
iget-boolean v0, p1, Lcom/baidu/location/LocationClientOption;->for:Z
iput-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->for:Z
return-void
.end method
.method public disableCache(Z)V
.registers 2
iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->for:Z
return-void
.end method
.method public equals(Lcom/baidu/location/LocationClientOption;)Z
.registers 4
iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_58
iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_58
iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->case:Z
iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->case:Z
if-ne v0, v1, :cond_58
iget v0, p0, Lcom/baidu/location/LocationClientOption;->int:I
iget v1, p1, Lcom/baidu/location/LocationClientOption;->int:I
if-ne v0, v1, :cond_58
iget v0, p0, Lcom/baidu/location/LocationClientOption;->long:I
iget v1, p1, Lcom/baidu/location/LocationClientOption;->long:I
if-ne v0, v1, :cond_58
iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
iget-object v1, p1, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_58
iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->void:Z
iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->void:Z
if-ne v0, v1, :cond_58
iget v0, p0, Lcom/baidu/location/LocationClientOption;->goto:I
iget v1, p1, Lcom/baidu/location/LocationClientOption;->goto:I
if-ne v0, v1, :cond_58
iget v0, p0, Lcom/baidu/location/LocationClientOption;->a:I
iget v1, p1, Lcom/baidu/location/LocationClientOption;->a:I
if-ne v0, v1, :cond_58
iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->if:Z
iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->if:Z
if-ne v0, v1, :cond_58
iget v0, p0, Lcom/baidu/location/LocationClientOption;->do:F
iget v1, p1, Lcom/baidu/location/LocationClientOption;->do:F
cmpl-float v0, v0, v1
if-nez v0, :cond_58
iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->for:Z
iget-boolean v1, p1, Lcom/baidu/location/LocationClientOption;->for:Z
if-ne v0, v1, :cond_58
const/4 v0, 0x1
:goto_57
return v0
:cond_58
const/4 v0, 0x0
goto :goto_57
.end method
.method public getAddrType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
return-object v0
.end method
.method public getCoorType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
return-object v0
.end method
.method public getPoiDistance()F
.registers 2
iget v0, p0, Lcom/baidu/location/LocationClientOption;->do:F
return v0
.end method
.method public getPoiExtranInfo()Z
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->if:Z
return v0
.end method
.method public getPoiNumber()I
.registers 2
iget v0, p0, Lcom/baidu/location/LocationClientOption;->a:I
return v0
.end method
.method public getPriority()I
.registers 2
iget v0, p0, Lcom/baidu/location/LocationClientOption;->goto:I
return v0
.end method
.method public getProdName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
return-object v0
.end method
.method public getScanSpan()I
.registers 2
iget v0, p0, Lcom/baidu/location/LocationClientOption;->int:I
return v0
.end method
.method public getServiceName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/baidu/location/LocationClientOption;->byte:Ljava/lang/String;
return-object v0
.end method
.method public getTimeOut()I
.registers 2
iget v0, p0, Lcom/baidu/location/LocationClientOption;->long:I
return v0
.end method
.method public isDisableCache()Z
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->for:Z
return v0
.end method
.method public isLocationNotify()Z
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->void:Z
return v0
.end method
.method public isOpenGps()Z
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/LocationClientOption;->case:Z
return v0
.end method
.method public setAddrType(Ljava/lang/String;)V
.registers 4
const/16 v1, 0x20
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v1, :cond_d
const/4 v0, 0x0
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
:cond_d
iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->char:Ljava/lang/String;
return-void
.end method
.method public setCoorType(Ljava/lang/String;)V
.registers 4
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "gcj02"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1f
const-string/jumbo v1, "bd09"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1f
const-string/jumbo v1, "bd09ll"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_21
:cond_1f
iput-object v0, p0, Lcom/baidu/location/LocationClientOption;->try:Ljava/lang/String;
:cond_21
return-void
.end method
.method public setLocationNotify(Z)V
.registers 2
iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->void:Z
return-void
.end method
.method public setOpenGps(Z)V
.registers 2
iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->case:Z
return-void
.end method
.method public setPoiDistance(F)V
.registers 2
iput p1, p0, Lcom/baidu/location/LocationClientOption;->do:F
return-void
.end method
.method public setPoiExtraInfo(Z)V
.registers 2
iput-boolean p1, p0, Lcom/baidu/location/LocationClientOption;->if:Z
return-void
.end method
.method public setPoiNumber(I)V
.registers 3
const/16 v0, 0xa
if-le p1, v0, :cond_5
move p1, v0
:cond_5
iput p1, p0, Lcom/baidu/location/LocationClientOption;->a:I
return-void
.end method
.method public setPriority(I)V
.registers 3
const/4 v0, 0x1
if-eq p1, v0, :cond_6
const/4 v0, 0x2
if-ne p1, v0, :cond_8
:cond_6
iput p1, p0, Lcom/baidu/location/LocationClientOption;->goto:I
:cond_8
return-void
.end method
.method public setProdName(Ljava/lang/String;)V
.registers 4
const/16 v1, 0x40
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v1, :cond_d
const/4 v0, 0x0
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
:cond_d
iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;
return-void
.end method
.method public setScanSpan(I)V
.registers 2
iput p1, p0, Lcom/baidu/location/LocationClientOption;->int:I
return-void
.end method
.method public setServiceName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/baidu/location/LocationClientOption;->byte:Ljava/lang/String;
return-void
.end method
.method public setTimeOut(I)V
.registers 2
iput p1, p0, Lcom/baidu/location/LocationClientOption;->long:I
return-void
.end method