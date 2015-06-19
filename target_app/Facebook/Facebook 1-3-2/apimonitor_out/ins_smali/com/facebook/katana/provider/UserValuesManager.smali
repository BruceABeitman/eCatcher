.class public Lcom/facebook/katana/provider/UserValuesManager;
.super Ljava/lang/Object;
.source "UserValuesManager.java"
.field private static final ACTIVE_SESSION_INFO_KEY:Ljava/lang/String; = "active_session_info"
.field private static final CONTACTS_SYNC_DISPLAYED_KEY:Ljava/lang/String; = "sync"
.field private static final CURRENT_ACCOUNT_KEY:Ljava/lang/String; = "current_account"
.field private static final EULA_DISPLAYED_KEY:Ljava/lang/String; = "eula"
.field private static final FALSE_VALUE:Ljava/lang/String; = "false"
.field private static final HINTS_DISPLAYED_KEY:Ljava/lang/String; = "hints"
.field private static final ID_PROJECTION:[Ljava/lang/String; = null
.field private static final LAST_CONTACTS_SYNC_ID:Ljava/lang/String; = "last_contacts_sync"
.field private static final LAST_SEEN_ID:Ljava/lang/String; = "last_seen_id"
.field private static final REGISTER_RINGTONEKEY:Ljava/lang/String; = "ringtone"
.field private static final VALUE_PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v3, [Ljava/lang/String;
const-string v1, "value"
aput-object v1, v0, v2
sput-object v0, Lcom/facebook/katana/provider/UserValuesManager;->VALUE_PROJECTION:[Ljava/lang/String;
new-array v0, v3, [Ljava/lang/String;
const-string v1, "_id"
aput-object v1, v0, v2
sput-object v0, Lcom/facebook/katana/provider/UserValuesManager;->ID_PROJECTION:[Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static clearUserValues(Landroid/content/Context;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
invoke-static {p0, v1, v1}, Lcom/facebook/katana/provider/UserValuesManager;->delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->setRegisterRingtone(Landroid/content/Context;Z)V
invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->setEULAAgreed(Landroid/content/Context;Z)V
return-void
.end method
.method public static delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/facebook/katana/provider/UserValuesProvider;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
return-void
.end method
.method public static getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
.registers 3
const-string v0, "false"
invoke-static {p0, p1, v0}, Lcom/facebook/katana/provider/UserValuesManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static getContactsSyncSetupDisplayed(Landroid/content/Context;)Z
.registers 2
const-string v0, "sync"
invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static getCurrentAccount(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const-string v0, "current_account"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getEULAAgreed(Landroid/content/Context;)Z
.registers 2
const-string v0, "eula"
invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static getHintsDisplayed(Landroid/content/Context;)Z
.registers 2
const-string v0, "hints"
invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static getLastContactsSync(Landroid/content/Context;)J
.registers 3
const-string v0, "last_contacts_sync"
const-string v1, "0"
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public static getLastSeenId(Landroid/content/Context;Ljava/lang/String;)J
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "last_seen_id_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "0"
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public static getRegisterRingtone(Landroid/content/Context;)Z
.registers 3
const-string v0, "ringtone"
const-string v1, "false"
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/4 v3, 0x0
sget-object v0, Lcom/facebook/katana/provider/UserValuesProvider;->NAME_CONTENT_URI:Landroid/net/Uri;
invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v2, Lcom/facebook/katana/provider/UserValuesManager;->VALUE_PROJECTION:[Ljava/lang/String;
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
move-object v7, p2
if-eqz v6, :cond_24
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_21
const/4 v0, 0x0
invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
:cond_21
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_24
return-object v7
.end method
.method public static loadActiveSessionInfo(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const-string v0, "active_session_info"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static saveActiveSessionInfo(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
const-string v0, "active_session_info"
invoke-static {p0, v0, p1}, Lcom/facebook/katana/provider/UserValuesManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public static setContactsSyncSetupDisplayed(Landroid/content/Context;Z)V
.registers 4
const-string v0, "sync"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public static setCurrentAccount(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
const-string v0, "current_account"
invoke-static {p0, v0, p1}, Lcom/facebook/katana/provider/UserValuesManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public static setEULAAgreed(Landroid/content/Context;Z)V
.registers 4
const-string v0, "eula"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public static setHintsDisplayed(Landroid/content/Context;Z)V
.registers 4
const-string v0, "hints"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public static setLastContactsSync(Landroid/content/Context;)V
.registers 4
const-string v0, "last_contacts_sync"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public static setLastSeenId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "last_seen_id_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, p2}, Lcom/facebook/katana/provider/UserValuesManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public static setRegisterRingtone(Landroid/content/Context;Z)V
.registers 4
const-string v0, "ringtone"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method private static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
.registers 12
const/4 v3, 0x0
sget-object v2, Lcom/facebook/katana/provider/UserValuesProvider;->NAME_CONTENT_URI:Landroid/net/Uri;
invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v2, Lcom/facebook/katana/provider/UserValuesManager;->ID_PROJECTION:[Ljava/lang/String;
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_2e
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v7
invoke-interface {v6}, Landroid/database/Cursor;->close()V
new-instance v8, Landroid/content/ContentValues;
invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V
const-string v2, "value"
if-nez p2, :cond_2f
move-object v4, v3
:goto_26
invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v7, :cond_34
invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:goto_2e
:cond_2e
return-void
:cond_2f
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
goto :goto_26
:cond_34
const-string v2, "name"
invoke-virtual {v8, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/facebook/katana/provider/UserValuesProvider;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
goto :goto_2e
.end method