.class public final Lcom/bbm/ui/activities/ahn;
.super Ljava/lang/Object;
.source "ShuntProperties.java"
.implements Ljava/io/Serializable;
.field public final a:Ljava/util/Properties;
.method public final a()I
.registers 4
const/16 v0, 0x89e
iget-object v1, p0, Lcom/bbm/ui/activities/ahn;->a:Ljava/util/Properties;
const-string v2, "port"
invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_10
:try_start_c
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_f
.catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_11
move-result v0
:goto_10
:cond_10
return v0
:catch_11
move-exception v1
goto :goto_10
.end method
.method public final b()I
.registers 4
const/16 v0, 0x89f
iget-object v1, p0, Lcom/bbm/ui/activities/ahn;->a:Ljava/util/Properties;
const-string v2, "groupPort"
invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_10
:try_start_c
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_f
.catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_11
move-result v0
:goto_10
:cond_10
return v0
:catch_11
move-exception v1
goto :goto_10
.end method
.method public final c()I
.registers 4
const/16 v0, 0x8a0
iget-object v1, p0, Lcom/bbm/ui/activities/ahn;->a:Ljava/util/Properties;
const-string v2, "adsPort"
invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_10
:try_start_c
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_f
.catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_11
move-result v0
:goto_10
:cond_10
return v0
:catch_11
move-exception v1
goto :goto_10
.end method