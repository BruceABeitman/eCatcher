.class public Lcom/glympse/android/hal/Reflection$_CalendarContract;
.super Ljava/lang/Object;
.source "Reflection.java"
.field private static cR:Z
.field private static cS:Ljava/lang/Class;
.field private static dk:Landroid/net/Uri;
.field private static dm:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x0
sput-boolean v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->cR:Z
sput-object v1, Lcom/glympse/android/hal/Reflection$_CalendarContract;->cS:Ljava/lang/Class;
sput-object v1, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
sput-object v1, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dm:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static CONTENT_URI(Landroid/content/ContentResolver;)Landroid/net/Uri;
.registers 2
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_CalendarContract;->a(Landroid/content/ContentResolver;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
return-object v0
.end method
.method public static GetAccountNames(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
.registers 10
const/4 v6, 0x1
const/4 v3, 0x0
const/4 v7, 0x0
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
invoke-static {p0}, Lcom/glympse/android/hal/Reflection$_CalendarContract;->a(Landroid/content/ContentResolver;)V
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
if-eqz v0, :cond_62
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_62
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
const-string v1, "calendars"
invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
new-array v2, v6, [Ljava/lang/String;
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dm:Ljava/lang/String;
aput-object v0, v2, v7
move-object v0, p0
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
if-eqz v1, :cond_62
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
:goto_32
if-eqz v0, :cond_5f
invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_5a
invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_42
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_42
move v0, v6
:goto_55
if-nez v0, :cond_5a
invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_5a
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
goto :goto_32
:cond_5f
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_62
return-object v8
:cond_63
move v0, v7
goto :goto_55
.end method
.method private static a(Landroid/content/ContentResolver;)V
.registers 12
const/4 v10, 0x2
const/4 v1, 0x1
const/4 v6, 0x0
const/4 v5, 0x0
sget-boolean v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->cR:Z
if-nez v0, :cond_ac
sput-boolean v1, Lcom/glympse/android/hal/Reflection$_CalendarContract;->cR:Z
:try_start_a
const-string v0, "android.provider.CalendarContract"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->cS:Ljava/lang/Class;
:goto_12
:try_end_12
.catch Ljava/lang/Throwable; {:try_start_a .. :try_end_12} :catch_d3
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->cS:Ljava/lang/Class;
if-eqz v0, :cond_38
:try_start_16
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->cS:Ljava/lang/Class;
const-string v2, "CONTENT_URI"
invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
sput-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
:goto_27
:try_start_27
:try_end_27
.catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_27} :catch_d0
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->cS:Ljava/lang/Class;
const-string v2, "ACCOUNT_NAME"
invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
sput-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dm:Ljava/lang/String;
:cond_38
:goto_38
:try_end_38
.catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_38} :catch_cd
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
if-eqz v0, :cond_44
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ac
:cond_44
sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->parseInt(Ljava/lang/String;)I
move-result v0
const/16 v2, 0x8
if-lt v0, v2, :cond_ad
move v0, v1
:goto_4f
const-string v2, "content://calendar"
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
const-string v2, "content://com.android.calendar"
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
new-array v8, v10, [Landroid/net/Uri;
sget-object v2, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
if-nez v2, :cond_b1
if-eqz v0, :cond_af
move-object v2, v3
:goto_64
aput-object v2, v8, v6
sget-object v2, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
if-nez v2, :cond_b6
if-eqz v0, :cond_b4
:goto_6c
aput-object v4, v8, v1
move v7, v6
:goto_6f
if-ge v7, v10, :cond_ac
aget-object v9, v8, v7
if-eqz v9, :cond_c9
:try_start_75
const-string v0, "calendars"
invoke-static {v9, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
if-eqz v1, :cond_c9
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
if-nez v0, :cond_8c
sput-object v9, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
:cond_8c
sget-object v0, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dm:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a9
invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I
move-result v2
move v0, v6
:goto_99
if-ge v0, v2, :cond_a9
invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
move-result-object v3
const-string v4, "account_name"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_b8
sput-object v3, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dm:Ljava/lang/String;
:cond_a9
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_ac
:try_end_ac
.catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_ac} :catch_c5
return-void
:cond_ad
move v0, v6
goto :goto_4f
:cond_af
move-object v2, v4
goto :goto_64
:cond_b1
sget-object v2, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dk:Landroid/net/Uri;
goto :goto_64
:cond_b4
move-object v4, v3
goto :goto_6c
:cond_b6
move-object v4, v5
goto :goto_6c
:cond_b8
:try_start_b8
const-string v4, "_sync_account"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_c2
sput-object v3, Lcom/glympse/android/hal/Reflection$_CalendarContract;->dm:Ljava/lang/String;
:try_end_c2
.catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_c2} :catch_c5
:cond_c2
add-int/lit8 v0, v0, 0x1
goto :goto_99
:catch_c5
move-exception v0
invoke-static {v0, v6}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
:cond_c9
add-int/lit8 v0, v7, 0x1
move v7, v0
goto :goto_6f
:catch_cd
move-exception v0
goto/16 :goto_38
:catch_d0
move-exception v0
goto/16 :goto_27
:catch_d3
move-exception v0
goto/16 :goto_12
.end method