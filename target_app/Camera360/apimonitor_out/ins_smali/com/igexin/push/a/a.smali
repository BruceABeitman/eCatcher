.class public Lcom/igexin/push/a/a;
.super Ljava/lang/Object;
.implements Lcom/igexin/push/core/c/a;
.field private static a:Lcom/igexin/push/a/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/igexin/push/a/a;
.registers 1
sget-object v0, Lcom/igexin/push/a/a;->a:Lcom/igexin/push/a/a;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/push/a/a;
invoke-direct {v0}, Lcom/igexin/push/a/a;-><init>()V
sput-object v0, Lcom/igexin/push/a/a;->a:Lcom/igexin/push/a/a;
:cond_b
sget-object v0, Lcom/igexin/push/a/a;->a:Lcom/igexin/push/a/a;
return-object v0
.end method
.method private a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
.registers 7
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v1, "id"
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v1, "value"
invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "config"
const/4 v2, 0x0
invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
return-void
.end method
.method private a(Landroid/database/sqlite/SQLiteDatabase;I[B)V
.registers 7
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v1, "id"
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v1, "value"
invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
const-string/jumbo v1, "config"
const/4 v2, 0x0
invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
return-void
.end method
.method static synthetic a(Lcom/igexin/push/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/igexin/push/a/a;Landroid/database/sqlite/SQLiteDatabase;I[B)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;I[B)V
return-void
.end method
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 2
return-void
.end method
.method public b()V
.registers 5
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
new-instance v1, Lcom/igexin/push/a/b;
invoke-direct {v1, p0}, Lcom/igexin/push/a/b;-><init>(Lcom/igexin/push/a/a;)V
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z
return-void
.end method
.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 8
const/4 v1, 0x0
:try_start_1
const-string/jumbo v0, "select id, value from config order by id"
const/4 v2, 0x0
invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_2a7
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_2aa
move-result-object v0
if-eqz v0, :cond_28c
:try_start_b
:cond_b
:goto_b
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v2
if-eqz v2, :cond_28c
const/4 v2, 0x0
const/4 v3, 0x1
invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v4
const/16 v2, 0x14
if-ne v4, v2, :cond_c0
invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v2
move-object v3, v1
:goto_20
packed-switch v4, :pswitch_data_2ae
goto :goto_b
:pswitch_24
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_c8
move-object v2, v1
:goto_2e
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
sput v2, Lcom/igexin/push/a/j;->e:I
:try_end_34
.catchall {:try_start_b .. :try_end_34} :catchall_e0
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_34} :catch_35
goto :goto_b
:catch_35
move-exception v1
:goto_36
if-eqz v0, :cond_3b
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:goto_3b
:cond_3b
const-string/jumbo v0, "2.2.5.7"
sget-object v1, Lcom/igexin/push/core/g;->P:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2a6
sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;
if-eqz v0, :cond_293
sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;
invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_293
sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;
invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_64
:goto_64
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_293
sget-object v0, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;
invoke-virtual {v0}, Lcom/igexin/push/core/bean/f;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/bean/e;
invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/igexin/push/core/g;->ac:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "delete ext path = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
new-instance v2, Ljava/io/File;
invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_64
invoke-virtual {v2}, Ljava/io/File;->delete()Z
goto :goto_64
:try_start_c0
:cond_c0
invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
move-object v3, v2
move-object v2, v1
goto/16 :goto_20
:cond_c8
invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v2
goto/16 :goto_2e
:pswitch_ce
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_ea
move-object v2, v1
:goto_d8
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
sput v2, Lcom/igexin/push/a/j;->f:I
:try_end_de
.catchall {:try_start_c0 .. :try_end_de} :catchall_e0
.catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_de} :catch_35
goto/16 :goto_b
:catchall_e0
move-exception v1
move-object v5, v1
move-object v1, v0
move-object v0, v5
:goto_e4
if-eqz v1, :cond_e9
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_e9
throw v0
:cond_ea
:try_start_ea
invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v2
goto :goto_d8
:pswitch_ef
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_101
move-object v2, v1
:goto_f9
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
sput-wide v2, Lcom/igexin/push/a/j;->g:J
goto/16 :goto_b
:cond_101
invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v2
goto :goto_f9
:pswitch_106
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->j:Z
goto/16 :goto_b
:pswitch_11b
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->k:Z
goto/16 :goto_b
:pswitch_130
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->l:Z
goto/16 :goto_b
:pswitch_145
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->m:Z
goto/16 :goto_b
:pswitch_15a
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->n:Z
goto/16 :goto_b
:pswitch_16f
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->o:Z
goto/16 :goto_b
:pswitch_184
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->r:Z
goto/16 :goto_b
:pswitch_199
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->s:Z
goto/16 :goto_b
:pswitch_1ae
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
sput-wide v2, Lcom/igexin/push/a/j;->t:J
goto/16 :goto_b
:pswitch_1c3
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->p:Z
goto/16 :goto_b
:pswitch_1d8
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->q:Z
goto/16 :goto_b
:pswitch_1ed
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_208
move-object v2, v1
:goto_200
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
sput v2, Lcom/igexin/push/a/j;->h:I
goto/16 :goto_b
:cond_208
invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v2
goto :goto_200
:pswitch_20d
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_228
move-object v2, v1
:goto_220
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
sput v2, Lcom/igexin/push/a/j;->i:I
goto/16 :goto_b
:cond_228
invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v2
goto :goto_220
:pswitch_22d
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->u:Z
goto/16 :goto_b
:pswitch_242
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->v:Z
goto/16 :goto_b
:pswitch_257
const-string/jumbo v2, "null"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
sput-boolean v2, Lcom/igexin/push/a/j;->w:Z
goto/16 :goto_b
:pswitch_26c
if-eqz v2, :cond_b
new-instance v3, Ljava/lang/String;
sget-object v4, Lcom/igexin/push/core/g;->D:Ljava/lang/String;
invoke-static {v2, v4}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B
move-result-object v2
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
if-eqz v3, :cond_b
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v2
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v4}, Lcom/igexin/push/core/a/f;->a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/f;
move-result-object v2
sput-object v2, Lcom/igexin/push/a/j;->x:Lcom/igexin/push/core/bean/f;
:try_end_28a
.catchall {:try_start_ea .. :try_end_28a} :catchall_e0
.catch Ljava/lang/Exception; {:try_start_ea .. :try_end_28a} :catch_35
goto/16 :goto_b
:cond_28c
if-eqz v0, :cond_3b
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto/16 :goto_3b
:cond_293
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v0
const-string/jumbo v1, "2.2.5.7"
invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/f;->a(Ljava/lang/String;)Z
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v0
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/c/f;->f(J)Z
:cond_2a6
return-void
:catchall_2a7
move-exception v0
goto/16 :goto_e4
:catch_2aa
move-exception v0
move-object v0, v1
goto/16 :goto_36
:pswitch_data_2ae
.packed-switch 0x1
:pswitch_24
:pswitch_ce
:pswitch_ef
:pswitch_106
:pswitch_11b
:pswitch_130
:pswitch_145
:pswitch_15a
:pswitch_16f
:pswitch_184
:pswitch_199
:pswitch_1ae
:pswitch_1c3
:pswitch_1d8
:pswitch_1ed
:pswitch_20d
:pswitch_22d
:pswitch_242
:pswitch_257
:pswitch_26c
.end packed-switch
.end method
.method public c()V
.registers 5
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
new-instance v1, Lcom/igexin/push/a/c;
invoke-direct {v1, p0}, Lcom/igexin/push/a/c;-><init>(Lcom/igexin/push/a/a;)V
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z
return-void
.end method
.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 6
const/4 v3, 0x3
const/4 v0, 0x1
sget v1, Lcom/igexin/push/a/j;->e:I
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/4 v0, 0x2
sget v1, Lcom/igexin/push/a/j;->f:I
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
sget-wide v0, Lcom/igexin/push/a/j;->g:J
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v3, v0}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/4 v0, 0x4
sget-boolean v1, Lcom/igexin/push/a/j;->j:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/4 v0, 0x5
sget-boolean v1, Lcom/igexin/push/a/j;->k:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/4 v0, 0x6
sget-boolean v1, Lcom/igexin/push/a/j;->l:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/4 v0, 0x7
sget-boolean v1, Lcom/igexin/push/a/j;->m:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0x8
sget-boolean v1, Lcom/igexin/push/a/j;->n:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0x9
sget-boolean v1, Lcom/igexin/push/a/j;->o:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0xa
sget-boolean v1, Lcom/igexin/push/a/j;->r:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0xb
sget-boolean v1, Lcom/igexin/push/a/j;->s:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0xc
sget-wide v1, Lcom/igexin/push/a/j;->t:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0xd
sget-boolean v1, Lcom/igexin/push/a/j;->p:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0xe
sget-boolean v1, Lcom/igexin/push/a/j;->q:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0xf
sget v1, Lcom/igexin/push/a/j;->h:I
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
sget-wide v0, Lcom/igexin/push/a/j;->g:J
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, v3, v0}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0x11
sget-boolean v1, Lcom/igexin/push/a/j;->u:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0x12
sget-boolean v1, Lcom/igexin/push/a/j;->v:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
const/16 v0, 0x13
sget-boolean v1, Lcom/igexin/push/a/j;->w:Z
invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1}, Lcom/igexin/push/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
return-void
.end method
.method public d()V
.registers 5
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
new-instance v1, Lcom/igexin/push/a/d;
invoke-direct {v1, p0}, Lcom/igexin/push/a/d;-><init>(Lcom/igexin/push/a/a;)V
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z
return-void
.end method
.method public e()V
.registers 5
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
new-instance v1, Lcom/igexin/push/a/e;
invoke-direct {v1, p0}, Lcom/igexin/push/a/e;-><init>(Lcom/igexin/push/a/a;)V
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z
return-void
.end method
.method public f()V
.registers 5
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
new-instance v1, Lcom/igexin/push/a/f;
invoke-direct {v1, p0}, Lcom/igexin/push/a/f;-><init>(Lcom/igexin/push/a/a;)V
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z
return-void
.end method
.method public g()V
.registers 5
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
new-instance v1, Lcom/igexin/push/a/g;
invoke-direct {v1, p0}, Lcom/igexin/push/a/g;-><init>(Lcom/igexin/push/a/a;)V
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z
return-void
.end method