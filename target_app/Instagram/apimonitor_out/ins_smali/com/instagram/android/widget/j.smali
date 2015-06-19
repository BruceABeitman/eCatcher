.class public final Lcom/instagram/android/widget/j;
.super Ljava/lang/Object;
.source "MapImageViewHelper.java"
.method private static a()Ljava/lang/String;
.registers 1
const-string v0, "ef9e3381f0a045d396ee38292ca5481d"
invoke-static {v0}, Lcom/instagram/strings/StringBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(FLcom/instagram/venue/model/Venue;Ljava/lang/String;IILjava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
.registers 15
float-to-double v0, p0
const-wide/high16 v2, 0x3ff8
cmpl-double v0, v0, v2
if-lez v0, :cond_7d
const/4 v0, 0x2
:goto_8
div-int v1, p3, v0
div-int v2, p4, v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "https://%s/maps/api/staticmap?center=%s,%s"
const/4 v5, 0x3
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
const-string v7, "maps.googleapis.com"
aput-object v7, v5, v6
const/4 v6, 0x1
aput-object p5, v5, v6
const/4 v6, 0x2
aput-object p6, v5, v6
invoke-static {v4, v5}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz p1, :cond_43
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_43
const-string v4, "&markers=color:0xe45846%7C"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ","
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_43
const-string v4, "&zoom="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "&size="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "x"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "&scale="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&maptype=road&sensor=false&style=feature:landscape%7Celement:geometry%7Chue:0xf0eade%7csaturation:8&style=feature:road%7Celement:geometry%7Chue:0xf0d59f%7Csaturation:34%7Clightness:30&key="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/instagram/android/widget/j;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_7d
const/4 v0, 0x1
goto :goto_8
.end method