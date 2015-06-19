.class public final Lcom/instagram/android/l/e/a;
.super Ljava/lang/Object;
.source "ContactHelper.java"
.method private static a(Ljava/util/HashMap;I)Lcom/instagram/android/l/e/b;
.registers 4
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/l/e/b;
:goto_14
return-object v0
:cond_15
new-instance v0, Lcom/instagram/android/l/e/b;
invoke-direct {v0}, Lcom/instagram/android/l/e/b;-><init>()V
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_14
.end method
.method public static a(Ljava/util/HashMap;)Ljava/lang/String;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
new-instance v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;
const-string v2, "ContactModule"
invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/w;)V
const-class v2, Lcom/instagram/android/l/e/b;
new-instance v3, Lcom/instagram/android/l/e/c;
invoke-direct {v3}, Lcom/instagram/android/l/e/c;-><init>()V
invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
:try_start_1d
invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
:try_end_24
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_26
move-result-object v0
return-object v0
:catch_26
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Error creating json string"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static a(Landroid/content/Context;)Ljava/util/HashMap;
.registers 2
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-static {p0, v0}, Lcom/instagram/android/l/e/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V
invoke-static {p0, v0}, Lcom/instagram/android/l/e/a;->b(Landroid/content/Context;Ljava/util/HashMap;)V
invoke-static {p0, v0}, Lcom/instagram/android/l/e/a;->c(Landroid/content/Context;Ljava/util/HashMap;)V
return-object v0
.end method
.method private static a(Landroid/content/Context;Ljava/util/HashMap;)V
.registers 9
const/4 v6, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;
:try_start_7
sget-object v2, Lcom/instagram/android/l/e/d;->a:[Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_f
.catchall {:try_start_7 .. :try_end_f} :catchall_47
move-result-object v1
:try_start_10
:goto_10
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_41
const/4 v0, 0x0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
const/4 v2, 0x1
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v0}, Lcom/instagram/android/l/e/a;->a(Ljava/util/HashMap;I)Lcom/instagram/android/l/e/b;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/l/e/b;->a(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
move-result-object v3
if-nez v3, :cond_32
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-static {v0, v3}, Lcom/instagram/android/l/e/b;->a(Lcom/instagram/android/l/e/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
:cond_32
invoke-static {v0}, Lcom/instagram/android/l/e/b;->a(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_39
.catchall {:try_start_10 .. :try_end_39} :catchall_3a
goto :goto_10
:catchall_3a
move-exception v0
:goto_3b
if-eqz v1, :cond_40
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_40
throw v0
:cond_41
if-eqz v1, :cond_46
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_46
return-void
:catchall_47
move-exception v0
move-object v1, v6
goto :goto_3b
.end method
.method private static b(Landroid/content/Context;Ljava/util/HashMap;)V
.registers 9
const/4 v6, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;
:try_start_7
sget-object v2, Lcom/instagram/android/l/e/f;->a:[Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_f
.catchall {:try_start_7 .. :try_end_f} :catchall_47
move-result-object v1
:try_start_10
:goto_10
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_41
const/4 v0, 0x0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
const/4 v2, 0x1
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v0}, Lcom/instagram/android/l/e/a;->a(Ljava/util/HashMap;I)Lcom/instagram/android/l/e/b;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/l/e/b;->b(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
move-result-object v3
if-nez v3, :cond_32
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-static {v0, v3}, Lcom/instagram/android/l/e/b;->b(Lcom/instagram/android/l/e/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
:cond_32
invoke-static {v0}, Lcom/instagram/android/l/e/b;->b(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_39
.catchall {:try_start_10 .. :try_end_39} :catchall_3a
goto :goto_10
:catchall_3a
move-exception v0
:goto_3b
if-eqz v1, :cond_40
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_40
throw v0
:cond_41
if-eqz v1, :cond_46
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_46
return-void
:catchall_47
move-exception v0
move-object v1, v6
goto :goto_3b
.end method
.method private static c(Landroid/content/Context;Ljava/util/HashMap;)V
.registers 10
const/4 v6, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;
:try_start_7
sget-object v2, Lcom/instagram/android/l/e/e;->a:[Ljava/lang/String;
const-string v3, "mimetype = ? AND data1 IS NOT NULL"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
const-string v7, "vnd.android.cursor.item/name"
aput-object v7, v4, v5
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_17
.catchall {:try_start_7 .. :try_end_17} :catchall_45
move-result-object v1
:goto_18
:try_start_18
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_3f
const/4 v0, 0x0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
invoke-static {p1, v0}, Lcom/instagram/android/l/e/a;->a(Ljava/util/HashMap;I)Lcom/instagram/android/l/e/b;
move-result-object v0
const/4 v2, 0x1
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/instagram/android/l/e/b;->a(Lcom/instagram/android/l/e/b;Ljava/lang/String;)Ljava/lang/String;
const/4 v2, 0x2
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/instagram/android/l/e/b;->b(Lcom/instagram/android/l/e/b;Ljava/lang/String;)Ljava/lang/String;
:try_end_37
.catchall {:try_start_18 .. :try_end_37} :catchall_38
goto :goto_18
:catchall_38
move-exception v0
:goto_39
if-eqz v1, :cond_3e
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_3e
throw v0
:cond_3f
if-eqz v1, :cond_44
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_44
return-void
:catchall_45
move-exception v0
move-object v1, v6
goto :goto_39
.end method