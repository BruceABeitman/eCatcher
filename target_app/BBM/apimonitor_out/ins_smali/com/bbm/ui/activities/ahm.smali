.class final Lcom/bbm/ui/activities/ahm;
.super Ljava/lang/Object;
.source "ShowGroupBarCodeActivity.java"
.implements Lcom/bbm/f/ac;
.field final synthetic a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
.method private constructor <init>(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ahm;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ahm;-><init>(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/activities/ahm;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->c(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
iget-object v1, p0, Lcom/bbm/ui/activities/ahm;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->b(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;)Lcom/bbm/ui/activities/ahm;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
const-string v0, "ShowGroupBarCode"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "=> Message: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/bbm/f/ab;->b()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
:try_start_33
const-string v1, "ShowGroupBarCode"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "=> QRCode: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v3, "qrcode"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/bbm/ui/activities/ahm;->a:Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;
const-string v2, "qrcode"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;->a(Lcom/bbm/ui/activities/ShowGroupBarCodeActivity;Ljava/lang/String;)V
:goto_58
:try_end_58
.catch Lorg/json/JSONException; {:try_start_33 .. :try_end_58} :catch_59
return-void
:catch_59
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_58
.end method