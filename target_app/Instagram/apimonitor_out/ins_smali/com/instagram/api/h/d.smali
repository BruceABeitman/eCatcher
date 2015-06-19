.class public final Lcom/instagram/api/h/d;
.super Ljava/lang/Object;
.source "WebUrlHelper.java"
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.registers 8
const/4 v5, 0x2
invoke-static {p1}, Lcom/instagram/common/o/a;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
const-string v0, "#"
invoke-virtual {p0, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v2
const/4 v0, 0x0
new-instance v3, Ljava/lang/StringBuilder;
const/4 v4, 0x0
aget-object v4, v2, v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
array-length v4, v2
if-ne v4, v5, :cond_1a
const/4 v0, 0x1
aget-object v0, v2, v0
:cond_1a
const-string v2, "?"
invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_dc
const-string v2, "?android=1"
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_27
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "&instagram_android_version="
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/instagram/api/h/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "&android_version="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-static {v2}, Lcom/instagram/api/h/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "&android_sdk="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
invoke-static {v2}, Lcom/instagram/api/h/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "&android_device_model="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-static {v2}, Lcom/instagram/api/h/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "&android_device_manuf="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-static {v2}, Lcom/instagram/api/h/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "&android_device_brand="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-static {v2}, Lcom/instagram/api/h/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "&android_device_name="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-static {v2}, Lcom/instagram/api/h/d;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v0, :cond_d7
const-string v1, "#"
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_d7
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_dc
const-string v2, "&android=1"
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_27
.end method
.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
.registers 3
invoke-static {p0, p1}, Lcom/instagram/api/h/c;->a(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
:try_start_1
const-string v1, "utf-8"
invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_6
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8
move-result-object v0
:goto_7
return-object v0
:catch_8
move-exception v1
goto :goto_7
.end method