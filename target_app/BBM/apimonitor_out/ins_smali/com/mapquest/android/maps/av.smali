.class public final Lcom/mapquest/android/maps/av;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapView.java"
.field public a:I
.field public b:I
.field public c:Lcom/mapquest/android/maps/s;
.field public d:I
.field public e:I
.method public constructor <init>(IIII)V
.registers 8
const v2, 0x7fffffff
const/4 v1, 0x3
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iput v1, p0, Lcom/mapquest/android/maps/av;->a:I
const/4 v0, 0x1
iput v0, p0, Lcom/mapquest/android/maps/av;->b:I
iput v2, p0, Lcom/mapquest/android/maps/av;->d:I
iput v2, p0, Lcom/mapquest/android/maps/av;->e:I
iput p3, p0, Lcom/mapquest/android/maps/av;->d:I
iput p4, p0, Lcom/mapquest/android/maps/av;->e:I
iput v1, p0, Lcom/mapquest/android/maps/av;->a:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 9
const/4 v3, 0x1
const v2, 0x7fffffff
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x3
iput v0, p0, Lcom/mapquest/android/maps/av;->a:I
iput v3, p0, Lcom/mapquest/android/maps/av;->b:I
iput v2, p0, Lcom/mapquest/android/maps/av;->d:I
iput v2, p0, Lcom/mapquest/android/maps/av;->e:I
const-string v0, "http://schemas.mapquest.com/apk/res/mapquest"
const-string v1, "x"
invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/mapquest/android/maps/av;->d:I
const-string v0, "http://schemas.mapquest.com/apk/res/mapquest"
const-string v1, "x"
invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/mapquest/android/maps/av;->e:I
const-string v0, "http://schemas.mapquest.com/apk/res/mapquest"
const-string v1, "geoPoint"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_5d
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_5d
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
array-length v2, v1
if-le v2, v3, :cond_5d
const/4 v2, 0x0
:try_start_3e
aget-object v2, v1, v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v2
const/4 v4, 0x1
aget-object v1, v1, v4
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v4
new-instance v1, Lcom/mapquest/android/maps/s;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapquest/android/maps/s;-><init>(DD)V
iput-object v1, p0, Lcom/mapquest/android/maps/av;->c:Lcom/mapquest/android/maps/s;
const/4 v1, 0x0
iput v1, p0, Lcom/mapquest/android/maps/av;->b:I
:goto_5d
:try_end_5d
.catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_5d} :catch_5e
:cond_5d
return-void
:catch_5e
move-exception v1
const-string v1, "mq.android.maps.mapview"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Invalid value for geoPoint attribute : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_5d
.end method
.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
.registers 4
const v1, 0x7fffffff
invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v0, 0x3
iput v0, p0, Lcom/mapquest/android/maps/av;->a:I
const/4 v0, 0x1
iput v0, p0, Lcom/mapquest/android/maps/av;->b:I
iput v1, p0, Lcom/mapquest/android/maps/av;->d:I
iput v1, p0, Lcom/mapquest/android/maps/av;->e:I
instance-of v0, p1, Lcom/mapquest/android/maps/av;
if-eqz v0, :cond_2a
check-cast p1, Lcom/mapquest/android/maps/av;
iget v0, p1, Lcom/mapquest/android/maps/av;->d:I
iput v0, p0, Lcom/mapquest/android/maps/av;->d:I
iget v0, p1, Lcom/mapquest/android/maps/av;->e:I
iput v0, p0, Lcom/mapquest/android/maps/av;->e:I
iget-object v0, p1, Lcom/mapquest/android/maps/av;->c:Lcom/mapquest/android/maps/s;
iput-object v0, p0, Lcom/mapquest/android/maps/av;->c:Lcom/mapquest/android/maps/s;
iget v0, p1, Lcom/mapquest/android/maps/av;->b:I
iput v0, p0, Lcom/mapquest/android/maps/av;->b:I
iget v0, p1, Lcom/mapquest/android/maps/av;->a:I
iput v0, p0, Lcom/mapquest/android/maps/av;->a:I
:cond_2a
return-void
.end method
.method public constructor <init>(Lcom/mapquest/android/maps/s;I)V
.registers 5
const v1, 0x7fffffff
const/4 v0, -0x2
invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
const/4 v0, 0x3
iput v0, p0, Lcom/mapquest/android/maps/av;->a:I
const/4 v0, 0x1
iput v0, p0, Lcom/mapquest/android/maps/av;->b:I
iput v1, p0, Lcom/mapquest/android/maps/av;->d:I
iput v1, p0, Lcom/mapquest/android/maps/av;->e:I
iput-object p1, p0, Lcom/mapquest/android/maps/av;->c:Lcom/mapquest/android/maps/s;
iput p2, p0, Lcom/mapquest/android/maps/av;->a:I
if-eqz p1, :cond_1a
const/4 v0, 0x0
iput v0, p0, Lcom/mapquest/android/maps/av;->b:I
:cond_1a
return-void
.end method