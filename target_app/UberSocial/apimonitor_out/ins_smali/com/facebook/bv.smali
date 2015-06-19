.class public abstract Lcom/facebook/bv;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Token"
.field public static final b:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ExpirationDate"
.field public static final c:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.LastRefreshDate"
.field public static final d:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.UserFBID"
.field public static final e:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.AccessTokenSource"
.field public static final f:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Permissions"
.field private static final g:J = -0x8000000000000000L
.field private static final h:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.IsSSO"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/os/Bundle;J)V
.registers 4
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method public static a(Landroid/os/Bundle;Lcom/facebook/c;)V
.registers 3
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"
invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
return-void
.end method
.method public static a(Landroid/os/Bundle;Ljava/lang/String;)V
.registers 3
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "value"
invoke-static {p1, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.Token"
invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
.registers 5
invoke-virtual {p2}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method public static a(Landroid/os/Bundle;Ljava/util/Date;)V
.registers 3
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "value"
invoke-static {p1, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-static {p0, v0, p1}, Lcom/facebook/bv;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
return-void
.end method
.method public static a(Landroid/os/Bundle;Ljava/util/List;)V
.registers 3
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "value"
invoke-static {p1, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
instance-of v0, p1, Ljava/util/ArrayList;
if-eqz v0, :cond_16
check-cast p1, Ljava/util/ArrayList;
:goto_10
const-string v0, "com.facebook.TokenCachingStrategy.Permissions"
invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
return-void
:cond_16
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
move-object p1, v0
goto :goto_10
.end method
.method static b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
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
.method public static b(Landroid/os/Bundle;J)V
.registers 4
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"
invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method public static b(Landroid/os/Bundle;Ljava/util/Date;)V
.registers 3
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "value"
invoke-static {p1, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"
invoke-static {p0, v0, p1}, Lcom/facebook/bv;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
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
.method public static c(Landroid/os/Bundle;)Ljava/lang/String;
.registers 2
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.Token"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static d(Landroid/os/Bundle;)Ljava/util/Date;
.registers 2
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-static {p0, v0}, Lcom/facebook/bv;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public static e(Landroid/os/Bundle;)J
.registers 3
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public static f(Landroid/os/Bundle;)Ljava/util/List;
.registers 2
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.Permissions"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method public static g(Landroid/os/Bundle;)Lcom/facebook/c;
.registers 2
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/facebook/c;
:goto_15
return-object v0
:cond_16
const-string v0, "com.facebook.TokenCachingStrategy.IsSSO"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/facebook/c;->b:Lcom/facebook/c;
goto :goto_15
:cond_21
sget-object v0, Lcom/facebook/c;->e:Lcom/facebook/c;
goto :goto_15
.end method
.method public static h(Landroid/os/Bundle;)Ljava/util/Date;
.registers 2
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"
invoke-static {p0, v0}, Lcom/facebook/bv;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public static i(Landroid/os/Bundle;)J
.registers 3
const-string v0, "bundle"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public abstract a()Landroid/os/Bundle;
.end method
.method public abstract a(Landroid/os/Bundle;)V
.end method
.method public abstract b()V
.end method