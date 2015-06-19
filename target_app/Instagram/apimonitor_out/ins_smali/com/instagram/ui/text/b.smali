.class final Lcom/instagram/ui/text/b;
.super Ljava/lang/Object;
.source "FreightSanBoldSCUtil.java"
.method public static a(Landroid/content/Context;)Z
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v0
const-string v1, "TR"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_2e
const-string v1, "CZ"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_2e
const-string v1, "SK"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_2e
const-string v1, "PL"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
:cond_2e
const/4 v0, 0x1
:goto_2f
return v0
:cond_30
const/4 v0, 0x0
goto :goto_2f
.end method