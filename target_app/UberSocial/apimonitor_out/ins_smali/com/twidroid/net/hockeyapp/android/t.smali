.class public Lcom/twidroid/net/hockeyapp/android/t;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:Ljava/util/ArrayList;
.field  b:Lorg/json/JSONObject;
.field  c:Lcom/twidroid/net/hockeyapp/android/o;
.method public constructor <init>(Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/o;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/twidroid/net/hockeyapp/android/t;->c:Lcom/twidroid/net/hockeyapp/android/o;
invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/t;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/t;->d()V
return-void
.end method
.method private static a(Lorg/json/JSONObject;Ljava/lang/String;I)I
.registers 4
:try_start_0
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
:try_end_3
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5
move-result p2
:goto_4
return p2
:catch_5
move-exception v0
goto :goto_4
.end method
.method private a(ILorg/json/JSONObject;)Ljava/lang/Object;
.registers 9
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x0
const-string v0, ""
:try_start_8
const-string v3, "version"
invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
const-string v3, "shortversion"
invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_13
.catch Lorg/json/JSONException; {:try_start_8 .. :try_end_13} :catch_62
move-result-object v0
:goto_14
const-string v3, "<div style=\'padding: 20px 10px 10px;\'><strong>"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-nez p1, :cond_2a
const-string v0, "Release Notes:"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_20
const-string v0, "</strong></div>"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_2a
iget-object v3, p0, Lcom/twidroid/net/hockeyapp/android/t;->c:Lcom/twidroid/net/hockeyapp/android/o;
invoke-interface {v3}, Lcom/twidroid/net/hockeyapp/android/o;->c()I
move-result v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Version "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, " ("
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "): "
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
if-ne v1, v3, :cond_5f
const-string v0, "[INSTALLED]"
:goto_53
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_20
:cond_5f
const-string v0, ""
goto :goto_53
:catch_62
move-exception v3
goto :goto_14
.end method
.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
:try_start_0
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_3
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object p2
:goto_4
return-object p2
:catch_5
move-exception v0
goto :goto_4
.end method
.method private a(Ljava/lang/String;)V
.registers 8
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/t;->b:Lorg/json/JSONObject;
:try_start_7
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/t;->a:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/t;->c:Lcom/twidroid/net/hockeyapp/android/o;
invoke-interface {v0}, Lcom/twidroid/net/hockeyapp/android/o;->c()I
move-result v1
const/4 v0, 0x0
move v5, v0
move v0, v1
move v1, v5
:goto_1d
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v1, v3, :cond_40
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
const-string v4, "version"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
if-le v4, v0, :cond_37
iput-object v3, p0, Lcom/twidroid/net/hockeyapp/android/t;->b:Lorg/json/JSONObject;
const-string v0, "version"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
:cond_37
iget-object v4, p0, Lcom/twidroid/net/hockeyapp/android/t;->a:Ljava/util/ArrayList;
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_3c
.catch Lorg/json/JSONException; {:try_start_7 .. :try_end_3c} :catch_3f
add-int/lit8 v1, v1, 0x1
goto :goto_1d
:catch_3f
move-exception v0
:cond_40
return-void
.end method
.method private b(ILorg/json/JSONObject;)Ljava/lang/Object;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "notes"
const-string v2, ""
invoke-static {p2, v1, v2}, Lcom/twidroid/net/hockeyapp/android/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "<div style=\'padding: 0px 10px;\'>"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_2b
const-string v1, "<em>No information.</em>"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_21
const-string v1, "</div>"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_2b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_21
.end method
.method private d()V
.registers 3
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/t;->a:Ljava/util/ArrayList;
new-instance v1, Lcom/twidroid/net/hockeyapp/android/t$1;
invoke-direct {v1, p0}, Lcom/twidroid/net/hockeyapp/android/t$1;-><init>(Lcom/twidroid/net/hockeyapp/android/t;)V
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
return-void
.end method
.method public a()Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/t;->b:Lorg/json/JSONObject;
const-string v2, "shortversion"
const-string v3, ""
invoke-static {v1, v2, v3}, Lcom/twidroid/net/hockeyapp/android/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/t;->b:Lorg/json/JSONObject;
const-string v2, "version"
const-string v3, ""
invoke-static {v1, v2, v3}, Lcom/twidroid/net/hockeyapp/android/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 9
const/high16 v7, 0x4480
const/4 v6, 0x0
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/t;->b:Lorg/json/JSONObject;
const-string v1, "appsize"
invoke-static {v0, v1, v6}, Lcom/twidroid/net/hockeyapp/android/t;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I
move-result v0
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/t;->b:Lorg/json/JSONObject;
const-string v2, "timestamp"
invoke-static {v1, v2, v6}, Lcom/twidroid/net/hockeyapp/android/t;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I
move-result v1
int-to-long v1, v1
new-instance v3, Ljava/util/Date;
const-wide/16 v4, 0x3e8
mul-long/2addr v1, v4
invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V
new-instance v1, Ljava/text/SimpleDateFormat;
const-string v2, "dd.MM.yyyy"
invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " - "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "%.2f"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
int-to-float v0, v0
div-float/2addr v0, v7
div-float/2addr v0, v7
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
aput-object v0, v3, v6
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " MB"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "<html>"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "<body style=\'padding: 0px 0px 10px 0px\'>"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/t;->a:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_17
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
invoke-direct {p0, v1, v0}, Lcom/twidroid/net/hockeyapp/android/t;->a(ILorg/json/JSONObject;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invoke-direct {p0, v1, v0}, Lcom/twidroid/net/hockeyapp/android/t;->b(ILorg/json/JSONObject;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_17
:cond_35
const-string v0, "</body>"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "</html>"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method