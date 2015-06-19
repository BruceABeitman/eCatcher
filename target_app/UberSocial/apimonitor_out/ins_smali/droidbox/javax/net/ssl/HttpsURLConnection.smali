.class public Ldroidbox/javax/net/ssl/HttpsURLConnection;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static connect(Ljavax/net/ssl/HttpsURLConnection;)V
.registers 4
:droidbox_try_start
invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Ljavax/net/ssl/HttpsURLConnection;->connect"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method