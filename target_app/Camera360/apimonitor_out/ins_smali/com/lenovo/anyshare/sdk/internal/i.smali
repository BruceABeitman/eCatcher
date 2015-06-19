.class public final Lcom/lenovo/anyshare/sdk/internal/i;
.super Ljava/lang/Object;
.source "UserManager.java"
.field protected static final a:Lcom/lenovo/channel/base/UserInfo;
.field protected static final b:Ljava/util/Map;
.field protected static final c:Ljava/util/Map;
.field protected static final d:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/lenovo/channel/base/UserInfo;
invoke-direct {v0}, Lcom/lenovo/channel/base/UserInfo;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->b:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->d:Ljava/util/List;
return-void
.end method
.method public static a()Lcom/lenovo/channel/base/UserInfo;
.registers 1
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
return-object v0
.end method
.method public static a(Landroid/content/Context;)Ljava/lang/String;
.registers 6
new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bc;
invoke-direct {v2, p0}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;)V
const-string/jumbo v3, "DEVICE-ID"
invoke-virtual {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_14
move-object v1, v0
:goto_13
return-object v1
:cond_14
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_45
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
const-string/jumbo v4, "android_id"
invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_45
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_45
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "S."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_45
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_70
const-string/jumbo v3, "Helper"
const-string/jumbo v4, "can\'t get real device id, generate one by random instead"
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "G."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v4
invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_70
const-string/jumbo v3, "DEVICE-ID"
invoke-virtual {v2, v3, v0}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;Ljava/lang/String;)V
move-object v1, v0
goto :goto_13
.end method
.method public static a(I)V
.registers 3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput p0, v0, Lcom/lenovo/channel/base/UserInfo;->icon:I
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
const-string/jumbo v1, ""
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/r$b;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(I)V
return-void
.end method
.method public static a(Lcom/lenovo/anyshare/sdk/internal/r$a;)V
.registers 7
const/4 v5, 0x0
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$a;->a()Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iget-object v3, v3, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1f
const-string/jumbo v2, "UserManager"
const-string/jumbo v3, "local user was kicked"
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->d()V
:goto_1e
:cond_1e
return-void
:cond_1f
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->b:Ljava/util/Map;
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$a;->a()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/UserInfo;
if-eqz v1, :cond_1e
const-string/jumbo v2, "UserManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "remote user was kicked: user = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Lcom/lenovo/channel/base/UserInfo;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, v1, Lcom/lenovo/channel/base/UserInfo;->online:Z
if-eqz v0, :cond_1e
iput-boolean v5, v1, Lcom/lenovo/channel/base/UserInfo;->online:Z
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
iget-object v3, v1, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/r$b;
invoke-virtual {v2, v5}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(Z)V
const/4 v2, 0x1
iput-boolean v2, v1, Lcom/lenovo/channel/base/UserInfo;->kicked:Z
sget-object v2, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-static {v2, v1}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
goto :goto_1e
.end method
.method public static a(Lcom/lenovo/anyshare/sdk/internal/r$b;Z)V
.registers 8
const/4 v0, 0x0
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->b()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iget-object v4, v4, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Z)V
const-string/jumbo v3, "UserManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "remote user presence: user = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->c()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ", online = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->b:Ljava/util/Map;
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->b()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/channel/base/UserInfo;
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z
move-result v3
if-eqz v3, :cond_80
:cond_52
:goto_52
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z
move-result v1
if-nez v2, :cond_85
new-instance v2, Lcom/lenovo/channel/base/UserInfo;
invoke-direct {v2}, Lcom/lenovo/channel/base/UserInfo;-><init>()V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->b()Ljava/lang/String;
move-result-object v3
iput-object v3, v2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-static {v2, p0}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/UserInfo;Lcom/lenovo/anyshare/sdk/internal/r$b;)V
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
iget-object v4, v2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->b:Ljava/util/Map;
iget-object v4, v2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_74
iput-boolean p1, v2, Lcom/lenovo/channel/base/UserInfo;->pending:Z
if-eqz v0, :cond_90
if-eqz v1, :cond_90
sget-object v3, Lcom/lenovo/channel/base/IUserListener$UserEventType;->CHANGED:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-static {v3, v2}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
:goto_7f
:cond_7f
return-void
:cond_80
if-eqz v2, :cond_52
iget-boolean v0, v2, Lcom/lenovo/channel/base/UserInfo;->online:Z
goto :goto_52
:cond_85
invoke-static {v2, p0}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/UserInfo;Lcom/lenovo/anyshare/sdk/internal/r$b;)V
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
iget-object v4, v2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_74
:cond_90
if-nez v0, :cond_9a
if-eqz v1, :cond_9a
sget-object v3, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-static {v3, v2}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
goto :goto_7f
:cond_9a
if-eqz v0, :cond_7f
if-nez v1, :cond_7f
sget-object v3, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-static {v3, v2}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
goto :goto_7f
.end method
.method protected static a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
.registers 8
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iget-object v3, v3, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
iget-object v4, p1, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_42
const-string/jumbo v3, "UserManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "local user changed: type = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Lcom/lenovo/channel/base/IUserListener$UserEventType;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->d:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_30
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_87
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/channel/base/IUserListener;
:try_start_3c
invoke-interface {v2, p0, p1}, Lcom/lenovo/channel/base/IUserListener;->onLocalUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
:try_end_3f
.catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40
goto :goto_30
:catch_40
move-exception v3
goto :goto_30
:cond_42
const-string/jumbo v3, "UserManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "remote user changed: type = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Lcom/lenovo/channel/base/IUserListener$UserEventType;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ", user = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p1}, Lcom/lenovo/channel/base/UserInfo;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->d:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_75
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_87
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/channel/base/IUserListener;
:try_start_81
invoke-interface {v2, p0, p1}, Lcom/lenovo/channel/base/IUserListener;->onRemoteUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
:try_end_84
.catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85
goto :goto_75
:catch_85
move-exception v3
goto :goto_75
:cond_87
return-void
.end method
.method public static a(Lcom/lenovo/channel/base/IUserListener;)V
.registers 6
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/i;->d:Ljava/util/List;
invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->c()Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_27
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/channel/base/UserInfo;
:try_start_19
sget-object v4, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-interface {p0, v4, v2}, Lcom/lenovo/channel/base/IUserListener;->onRemoteUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1f
goto :goto_d
:catch_1f
move-exception v0
const-string/jumbo v4, "UserManager"
invoke-static {v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d
:cond_27
return-void
.end method
.method private static final a(Lcom/lenovo/channel/base/UserInfo;Lcom/lenovo/anyshare/sdk/internal/r$b;)V
.registers 4
const/4 v1, 0x0
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->l()I
move-result v0
iput v0, p0, Lcom/lenovo/channel/base/UserInfo;->appVer:I
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z
move-result v0
iput-boolean v0, p0, Lcom/lenovo/channel/base/UserInfo;->online:Z
iget-boolean v0, p0, Lcom/lenovo/channel/base/UserInfo;->online:Z
if-eqz v0, :cond_62
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->c()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->e()I
move-result v0
iput v0, p0, Lcom/lenovo/channel/base/UserInfo;->icon:I
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->i()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->j()I
move-result v0
iput v0, p0, Lcom/lenovo/channel/base/UserInfo;->port:I
iput-boolean v1, p0, Lcom/lenovo/channel/base/UserInfo;->kicked:Z
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->k()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->appId:Ljava/lang/String;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->l()I
move-result v0
iput v0, p0, Lcom/lenovo/channel/base/UserInfo;->appVer:I
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->m()I
move-result v0
iput v0, p0, Lcom/lenovo/channel/base/UserInfo;->osVer:I
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->n()I
move-result v0
iput v0, p0, Lcom/lenovo/channel/base/UserInfo;->screenWidth:I
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->o()I
move-result v0
iput v0, p0, Lcom/lenovo/channel/base/UserInfo;->screenHeight:I
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->p()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->deviceType:Ljava/lang/String;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->q()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->deviceModel:Ljava/lang/String;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->r()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->releaseChannel:Ljava/lang/String;
:goto_61
return-void
:cond_62
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;
iput v1, p0, Lcom/lenovo/channel/base/UserInfo;->port:I
goto :goto_61
.end method
.method public static a(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput-object p0, v0, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
const-string/jumbo v1, ""
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/r$b;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->c(Ljava/lang/String;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 21
const-string/jumbo v2, "UserManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "LocalUser: ver = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", id = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", name = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", model = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p9
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", channel = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p10
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput-object p0, v2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput-object p1, v2, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput p2, v2, Lcom/lenovo/channel/base/UserInfo;->icon:I
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
const/4 v3, 0x0
iput-boolean v3, v2, Lcom/lenovo/channel/base/UserInfo;->online:Z
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput-object p3, v2, Lcom/lenovo/channel/base/UserInfo;->appId:Ljava/lang/String;
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput p4, v2, Lcom/lenovo/channel/base/UserInfo;->appVer:I
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput p5, v2, Lcom/lenovo/channel/base/UserInfo;->osVer:I
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
move/from16 v0, p6
iput v0, v2, Lcom/lenovo/channel/base/UserInfo;->screenWidth:I
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
move/from16 v0, p7
iput v0, v2, Lcom/lenovo/channel/base/UserInfo;->screenHeight:I
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
move-object/from16 v0, p8
iput-object v0, v2, Lcom/lenovo/channel/base/UserInfo;->deviceType:Ljava/lang/String;
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
move-object/from16 v0, p9
iput-object v0, v2, Lcom/lenovo/channel/base/UserInfo;->deviceModel:Ljava/lang/String;
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
move-object/from16 v0, p10
iput-object v0, v2, Lcom/lenovo/channel/base/UserInfo;->releaseChannel:Ljava/lang/String;
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/r$b;
invoke-direct {v1}, Lcom/lenovo/anyshare/sdk/internal/r$b;-><init>()V
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(Z)V
invoke-virtual {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/r$b;->c(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(I)V
move-object v2, p3
move v3, p4
move v4, p5
move/from16 v5, p6
move/from16 v6, p7
move-object/from16 v7, p8
move-object/from16 v8, p9
move-object/from16 v9, p10
invoke-virtual/range {v1 .. v9}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
const-string/jumbo v3, ""
invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public static a(Ljava/lang/String;Z)V
.registers 9
const/4 v4, 0x1
const/4 v3, 0x0
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->b:Ljava/util/Map;
invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/UserInfo;
if-nez v1, :cond_d
:cond_c
:goto_c
return-void
:cond_d
const-string/jumbo v2, "UserManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "remote user accepted: accept = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", user = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v1}, Lcom/lenovo/channel/base/UserInfo;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v2, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v2, v1, Lcom/lenovo/channel/base/UserInfo;->pending:Z
if-nez v2, :cond_3c
if-nez p1, :cond_62
:cond_3c
move v2, v4
:goto_3d
const-string/jumbo v5, "remote user explicitly accepted more than once"
invoke-static {v2, v5}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(ZLjava/lang/String;)V
iput-boolean v3, v1, Lcom/lenovo/channel/base/UserInfo;->pending:Z
if-nez p1, :cond_64
iget-boolean v0, v1, Lcom/lenovo/channel/base/UserInfo;->online:Z
iput-boolean v3, v1, Lcom/lenovo/channel/base/UserInfo;->online:Z
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
iget-object v5, v1, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/r$b;
invoke-virtual {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(Z)V
iput-boolean v4, v1, Lcom/lenovo/channel/base/UserInfo;->kicked:Z
if-eqz v0, :cond_c
sget-object v2, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-static {v2, v1}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
goto :goto_c
:cond_62
move v2, v3
goto :goto_3d
:cond_64
sget-object v2, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-static {v2, v1}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
goto :goto_c
.end method
.method public static b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
.registers 2
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->b:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/channel/base/UserInfo;
return-object v0
.end method
.method public static b()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iget-object v0, v0, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
return-object v0
.end method
.method public static b(I)V
.registers 3
const/4 v1, 0x0
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/i;->h(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/r$b;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->b(I)V
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput p0, v1, Lcom/lenovo/channel/base/UserInfo;->port:I
return-void
.end method
.method public static b(Lcom/lenovo/channel/base/IUserListener;)V
.registers 2
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->d:Ljava/util/List;
invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public static c(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
.registers 5
const/4 v2, 0x0
if-nez p0, :cond_5
move-object v1, v2
:goto_4
return-object v1
:cond_5
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->b:Ljava/util/Map;
invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_24
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/UserInfo;
iget-object v3, v1, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;
invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_f
goto :goto_4
:cond_24
move-object v1, v2
goto :goto_4
.end method
.method public static c()Ljava/util/List;
.registers 4
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->b:Ljava/util/Map;
invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_f
:cond_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_23
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/UserInfo;
iget-boolean v3, v1, Lcom/lenovo/channel/base/UserInfo;->online:Z
if-eqz v3, :cond_f
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_23
return-object v2
.end method
.method public static d()V
.registers 7
const/4 v6, 0x0
const-string/jumbo v4, "UserManager"
const-string/jumbo v5, "local connection closed"
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iget-boolean v1, v4, Lcom/lenovo/channel/base/UserInfo;->online:Z
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput-boolean v6, v4, Lcom/lenovo/channel/base/UserInfo;->online:Z
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
const-string/jumbo v5, ""
invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/lenovo/anyshare/sdk/internal/r$b;
invoke-virtual {v4, v6}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(Z)V
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
const-string/jumbo v5, ""
iput-object v5, v4, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;
if-eqz v1, :cond_30
sget-object v4, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
:cond_30
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->c()Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_38
:goto_38
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_64
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/channel/base/UserInfo;
iget-boolean v1, v2, Lcom/lenovo/channel/base/UserInfo;->online:Z
iput-boolean v6, v2, Lcom/lenovo/channel/base/UserInfo;->online:Z
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
iget-object v5, v2, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/lenovo/anyshare/sdk/internal/r$b;
invoke-virtual {v4, v6}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(Z)V
const-string/jumbo v4, ""
iput-object v4, v2, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;
iput v6, v2, Lcom/lenovo/channel/base/UserInfo;->port:I
if-eqz v1, :cond_38
sget-object v4, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-static {v4, v2}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
goto :goto_38
:cond_64
return-void
.end method
.method public static d(Ljava/lang/String;)V
.registers 8
const/4 v6, 0x1
const-string/jumbo v2, "UserManager"
const-string/jumbo v3, "onLocalConnectionOpen(%s)"
new-array v4, v6, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p0, v4, v5
invoke-static {v2, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/String;)V
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iget-boolean v0, v2, Lcom/lenovo/channel/base/UserInfo;->online:Z
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->h(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/r$b;
move-result-object v1
invoke-virtual {v1, v6}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(Z)V
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput-boolean v6, v2, Lcom/lenovo/channel/base/UserInfo;->online:Z
if-nez v0, :cond_2a
sget-object v2, Lcom/lenovo/channel/base/IUserListener$UserEventType;->ONLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
:cond_2a
return-void
.end method
.method public static e(Ljava/lang/String;)V
.registers 7
const/4 v5, 0x0
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->c(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
move-result-object v1
if-nez v1, :cond_b
:cond_a
:goto_a
return-void
:cond_b
const-string/jumbo v2, "UserManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "remote connection closed: user = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Lcom/lenovo/channel/base/UserInfo;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, v1, Lcom/lenovo/channel/base/UserInfo;->online:Z
iput-boolean v5, v1, Lcom/lenovo/channel/base/UserInfo;->online:Z
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
iget-object v3, v1, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/r$b;
invoke-virtual {v2, v5}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a(Z)V
const-string/jumbo v2, ""
iput-object v2, v1, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;
iput v5, v1, Lcom/lenovo/channel/base/UserInfo;->port:I
if-eqz v0, :cond_a
sget-object v2, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-static {v2, v1}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
goto :goto_a
.end method
.method public static f(Ljava/lang/String;)Ljava/util/Collection;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->c()Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_d
:cond_d
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_3f
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/lenovo/channel/base/UserInfo;
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
iget-object v6, v3, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/r$b;
if-eqz v2, :cond_3d
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/r$b;->a()Z
move-result v5
if-eqz v5, :cond_3d
const/4 v5, 0x1
:goto_2c
invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/r$b;->b()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_d
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_3d
const/4 v5, 0x0
goto :goto_2c
:cond_3f
return-object v1
.end method
.method public static g(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/r$b;
.registers 2
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/r$b;
return-object v0
.end method
.method public static h(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/r$b;
.registers 4
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/i;->c:Ljava/util/Map;
const-string/jumbo v2, ""
invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/r$b;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1b
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/i;->a:Lcom/lenovo/channel/base/UserInfo;
iput-object p0, v1, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/r$b;->d(Ljava/lang/String;)V
:cond_1b
return-object v0
.end method
.method public static i(Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
move-result-object v0
if-nez v0, :cond_b
const/4 v1, 0x0
:goto_a
return-object v1
:cond_b
const-string/jumbo v1, "http://%s:%s/download"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, v0, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x1
iget v4, v0, Lcom/lenovo/channel/base/UserInfo;->port:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_a
.end method