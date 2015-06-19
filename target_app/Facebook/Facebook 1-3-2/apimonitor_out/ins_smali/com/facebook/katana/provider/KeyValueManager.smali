.class public Lcom/facebook/katana/provider/KeyValueManager;
.super Ljava/lang/Object;
.source "KeyValueManager.java"
.field public static final FACEBOOK_EMPLOYEE_EVER_KEY:Ljava/lang/String; = "seen_employee"
.field public static final FACEBOOK_EMPLOYEE_KEY:Ljava/lang/String; = "is_employee"
.field private static final FALSE_VALUE:Ljava/lang/String; = "false"
.field private static final ID_PROJECTION:[Ljava/lang/String; = null
.field public static final INDEX_PROP_KEY:I = 0x0
.field public static final INDEX_PROP_VALUE:I = 0x1
.field public static final LAST_RUN_BUILD:Ljava/lang/String; = "last_run_build"
.field public static final PROJECTION:[Ljava/lang/String;
.field private static final VALUE_PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
const-string v4, "value"
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const-string v1, "key"
aput-object v1, v0, v2
const-string v1, "value"
aput-object v4, v0, v3
sput-object v0, Lcom/facebook/katana/provider/KeyValueManager;->PROJECTION:[Ljava/lang/String;
new-array v0, v3, [Ljava/lang/String;
const-string v1, "value"
aput-object v4, v0, v2
sput-object v0, Lcom/facebook/katana/provider/KeyValueManager;->VALUE_PROJECTION:[Ljava/lang/String;
new-array v0, v3, [Ljava/lang/String;
const-string v1, "_id"
aput-object v1, v0, v2
sput-object v0, Lcom/facebook/katana/provider/KeyValueManager;->ID_PROJECTION:[Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static delete(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/facebook/katana/provider/KeyValueProvider;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
return-void
.end method
.method public static getBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
.registers 3
const-string v0, "false"
invoke-static {p0, p1, v0}, Lcom/facebook/katana/provider/KeyValueManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static getLongValue(Landroid/content/Context;Ljava/lang/String;J)J
.registers 6
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-static {p0, p1, v0}, Lcom/facebook/katana/provider/KeyValueManager;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method private static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/4 v3, 0x0
sget-object v0, Lcom/facebook/katana/provider/KeyValueProvider;->KEY_CONTENT_URI:Landroid/net/Uri;
invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v2, Lcom/facebook/katana/provider/KeyValueManager;->VALUE_PROJECTION:[Ljava/lang/String;
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
.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
.registers 12
const/4 v3, 0x0
sget-object v2, Lcom/facebook/katana/provider/KeyValueProvider;->KEY_CONTENT_URI:Landroid/net/Uri;
invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v2, Lcom/facebook/katana/provider/KeyValueManager;->ID_PROJECTION:[Ljava/lang/String;
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
const-string v2, "key"
invoke-virtual {v8, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/facebook/katana/provider/KeyValueProvider;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
goto :goto_2e
.end method