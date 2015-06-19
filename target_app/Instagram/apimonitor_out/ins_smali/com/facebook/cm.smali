.class public abstract Lcom/facebook/cm;
.super Ljava/lang/Object;
.source "TokenCachingStrategy.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
.registers 7
const-wide/high16 v3, -0x8000
const/4 v0, 0x0
if-nez p0, :cond_6
:cond_5
:goto_5
return-object v0
:cond_6
invoke-virtual {p0, p1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v1
cmp-long v3, v1, v3
if-eqz v3, :cond_5
new-instance v0, Ljava/util/Date;
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
goto :goto_5
.end method
.method static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
.registers 5
invoke-virtual {p2}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method public static b(Landroid/os/Bundle;)Z
.registers 6
const-wide/16 v3, 0x0
const/4 v0, 0x0
if-nez p0, :cond_6
:cond_5
:goto_5
return v0
:cond_6
const-string v1, "com.facebook.TokenCachingStrategy.Token"
invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_5
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_5
const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-virtual {p0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v1
cmp-long v1, v1, v3
if-eqz v1, :cond_5
const/4 v0, 0x1
goto :goto_5
.end method
.method public static c(Landroid/os/Bundle;)Lcom/facebook/b;
.registers 2
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/facebook/b;
:goto_15
return-object v0
:cond_16
const-string v0, "com.facebook.TokenCachingStrategy.IsSSO"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/facebook/b;->b:Lcom/facebook/b;
goto :goto_15
:cond_21
sget-object v0, Lcom/facebook/b;->e:Lcom/facebook/b;
goto :goto_15
.end method
.method public abstract a()Landroid/os/Bundle;
.end method
.method public abstract a(Landroid/os/Bundle;)V
.end method
.method public abstract b()V
.end method