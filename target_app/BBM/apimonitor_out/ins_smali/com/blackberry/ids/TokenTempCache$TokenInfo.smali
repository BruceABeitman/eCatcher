.class  Lcom/blackberry/ids/TokenTempCache$TokenInfo;
.super Ljava/lang/Object;
.source "TokenTempCache.java"
.field final a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/lang/String;
.field  d:J
.method public constructor <init>(Ljava/lang/String;)V
.registers 12
const/4 v9, 0x1
const/4 v8, 0x0
const-wide/16 v2, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->a:Ljava/lang/String;
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
iget-object v4, v1, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v4, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/blackberry/ids/BBIDStorage;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_87
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
iget-object v4, v1, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v6, "_SECRET"
invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/blackberry/ids/BBIDStorage;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_71
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
iget-object v6, v1, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v7, "_LOCAL_EXPIRY"
invoke-virtual {p1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/blackberry/ids/BBIDStorage;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:try_start_44
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_47
.catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_47} :catch_60
move-result-wide v0
:goto_48
if-eqz v5, :cond_73
if-eqz v4, :cond_73
cmp-long v6, v0, v2
if-eqz v6, :cond_73
const-string v2, "TokenTempCache - TokenInfo [%s] Found in Storage -- Loading up"
new-array v3, v9, [Ljava/lang/Object;
aput-object p1, v3, v8
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-object v5, p0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->b:Ljava/lang/String;
iput-object v4, p0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->c:Ljava/lang/String;
iput-wide v0, p0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->d:J
:goto_5f
return-void
:catch_60
move-exception v0
const-string v0, "TokenTempCache - TokenInfo [%s]- Invalid time stamp in Storage"
new-array v1, v9, [Ljava/lang/Object;
aput-object p1, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;)V
:cond_71
move-wide v0, v2
goto :goto_48
:cond_73
const-string v0, "TokenTempCache - TokenInfo [%s] NOT Found in Storage"
new-array v1, v9, [Ljava/lang/Object;
aput-object p1, v1, v8
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, ""
iput-object v0, p0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->b:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->c:Ljava/lang/String;
iput-wide v2, p0, Lcom/blackberry/ids/TokenTempCache$TokenInfo;->d:J
goto :goto_5f
:cond_87
move-object v4, v0
move-wide v0, v2
goto :goto_48
.end method