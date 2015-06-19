.class public Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlGetUsersProfile.java"
.field static final synthetic $assertionsDisabled:Z = false
.field private static final TAG:Ljava/lang/String; = "FqlGetUsersProfile"
.field private final mCls:Ljava/lang/Class;
.field private final mContext:Landroid/content/Context;
.field private final mOpaque:Ljava/lang/Object;
.field private final mProfiles:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/lang/String;Ljava/lang/Class;)V
.registers 8
invoke-static {p6}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getQueryFields(Ljava/lang/Class;)Ljava/util/List;
move-result-object v0
invoke-static {p5, v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->buildQuery(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mContext:Landroid/content/Context;
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mOpaque:Ljava/lang/Object;
iput-object p6, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mCls:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Class;)V
.registers 8
invoke-static {p6}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getQueryFields(Ljava/lang/Class;)Ljava/util/List;
move-result-object v0
invoke-static {p5, v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->buildQuery(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mContext:Landroid/content/Context;
iput-object p5, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mOpaque:Ljava/lang/Object;
iput-object p6, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mCls:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Object;)V
.registers 8
const/4 v0, 0x0
invoke-static {p5, v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->buildQuery(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mContext:Landroid/content/Context;
iput-object p5, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;
iput-object p6, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mOpaque:Ljava/lang/Object;
const-class v0, Lcom/facebook/katana/service/api/FacebookUser;
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mCls:Ljava/lang/Class;
return-void
.end method
.method private static buildQuery(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.registers 7
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "SELECT "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p1, :cond_1b
const-string v3, "uid,first_name,last_name,name,pic_square"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_e
const-string v3, " FROM user WHERE "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
:cond_1b
const/4 v1, 0x1
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_20
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v1, :cond_37
const-string v4, ","
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_33
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_20
:cond_37
const/4 v1, 0x0
goto :goto_33
.end method
.method private static buildQuery(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
.registers 3
invoke-static {p0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getFilterString(Ljava/util/Map;)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->buildQuery(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getFilterString(Ljava/util/Map;)Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "uid IN("
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_10
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_20
const-string v3, ")"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
:cond_20
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Long;
if-nez v0, :cond_31
const-string v4, ","
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_2d
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
goto :goto_10
:cond_31
const/4 v0, 0x0
goto :goto_2d
.end method
.method private static getQueryFields(Ljava/lang/Class;)Ljava/util/List;
.registers 9
const/4 v7, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
:try_start_3
const-string v5, "getQueryFields"
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/Class;
invoke-virtual {p0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v4
const/4 v5, 0x0
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/Object;
invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
move-object v0, v5
check-cast v0, Ljava/util/List;
move-object v3, v0
:goto_18
:try_end_18
.catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_18} :catch_23
.catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_18} :catch_27
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_18} :catch_2b
if-eqz v2, :cond_2f
const-string v5, "FqlGetUsersProfile"
const-string v6, "a subclass of FacebookUser doesn\'t implement getQueryFields"
invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-object v5, v7
:goto_22
return-object v5
:catch_23
move-exception v5
move-object v1, v5
const/4 v2, 0x1
goto :goto_18
:catch_27
move-exception v5
move-object v1, v5
const/4 v2, 0x1
goto :goto_18
:catch_2b
move-exception v5
move-object v1, v5
const/4 v2, 0x1
goto :goto_18
:cond_2f
move-object v5, v3
goto :goto_22
.end method
.method public getOpaque()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mOpaque:Ljava/lang/Object;
return-object v0
.end method
.method public getUsers()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 10
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v4, :cond_3a
:goto_8
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v4, :cond_1e
:cond_c
const/4 v0, 0x0
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;
invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_17
:goto_17
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_50
return-void
:cond_1e
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v4, :cond_35
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mCls:Ljava/lang/Class;
invoke-static {v4, p1}, Lcom/facebook/katana/service/api/FacebookUser;->parseFromJSON(Ljava/lang/Class;Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v1
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_35
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
goto :goto_8
:cond_3a
sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v2, v4, :cond_c
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v2
sget-boolean v4, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->$assertionsDisabled:Z
if-nez v4, :cond_c
sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v2, v4, :cond_c
new-instance v4, Ljava/lang/AssertionError;
invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V
throw v4
:cond_50
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Long;
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;
invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
if-nez v5, :cond_17
const-string v5, "FqlGetUsersProfile"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "User not found: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
if-nez v0, :cond_83
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mCls:Ljava/lang/Class;
iget-object v6, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mContext:Landroid/content/Context;
const v7, 0x7f080053
invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/facebook/katana/service/api/FacebookUser;->newInstance(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v0
:cond_83
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;
invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_17
.end method