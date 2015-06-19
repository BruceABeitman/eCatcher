.class public Lcom/glympse/android/hal/PhoneFavoriteProvider;
.super Ljava/lang/Object;
.source "PhoneFavoriteProvider.java"
.implements Lcom/glympse/android/hal/GPhoneFavoriteProvider;
.field private static final cC:Ljava/lang/String; = "data1"
.field private R:Ljava/util/concurrent/Future;
.field protected _handler:Lcom/glympse/android/core/GHandler;
.field private cA:Lcom/glympse/android/hal/ba;
.field private cB:Lcom/glympse/android/core/GArray;
.field protected cz:Lcom/glympse/android/hal/GPhoneFavoriteListener;
.field protected e:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->e:Landroid/content/Context;
return-void
.end method
.method private static d(Landroid/content/Context;)Lcom/glympse/android/hal/GVector;
.registers 15
const/4 v13, 0x2
const/4 v5, 0x0
const/4 v8, 0x1
const/4 v9, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v1, 0x4
new-array v2, v1, [Ljava/lang/String;
const-string v1, "_id"
aput-object v1, v2, v9
const-string v1, "display_name"
aput-object v1, v2, v8
const-string v1, "starred"
aput-object v1, v2, v13
const/4 v1, 0x3
const-string v3, "has_phone_number"
aput-object v3, v2, v1
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v1
if-nez v1, :cond_db
sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
const-string v3, "starred=?"
new-array v4, v8, [Ljava/lang/String;
const-string v6, "1"
aput-object v6, v4, v9
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
move-object v10, v1
:goto_31
if-eqz v10, :cond_cf
new-instance v6, Lcom/glympse/android/hal/GVector;
invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
move-result v1
invoke-direct {v6, v1}, Lcom/glympse/android/hal/GVector;-><init>(I)V
invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
:goto_40
if-eqz v1, :cond_ce
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v1
if-nez v1, :cond_ce
const-string v1, "_id"
invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v11
const-string v1, "display_name"
invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v12
const-string v1, "has_phone_number"
invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-ne v1, v8, :cond_cc
move v1, v8
:goto_69
if-eqz v1, :cond_d9
new-array v2, v13, [Ljava/lang/String;
const-string v1, "contact_id"
aput-object v1, v2, v9
const-string v1, "data1"
aput-object v1, v2, v8
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v1
if-nez v1, :cond_d7
sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;
const-string v3, "contact_id=?"
new-array v4, v8, [Ljava/lang/String;
aput-object v11, v4, v9
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
move-object v2, v1
:goto_88
if-eqz v2, :cond_d5
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_d5
const-string v1, "data1"
invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
:goto_9a
if-eqz v2, :cond_9f
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_9f
move-object v7, v1
:goto_a0
if-nez v7, :cond_bd
new-array v2, v13, [Ljava/lang/String;
const-string v1, "contact_id"
aput-object v1, v2, v9
const-string v1, "data1"
aput-object v1, v2, v8
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v1
if-nez v1, :cond_bd
sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;
const-string v3, "contact_id=?"
new-array v4, v8, [Ljava/lang/String;
aput-object v11, v4, v9
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:cond_bd
if-eqz v7, :cond_c6
invoke-static {v12, v7, v9}, Lcom/glympse/android/lib/LibFactory;->createPhoneFavorite(Ljava/lang/String;Ljava/lang/String;I)Lcom/glympse/android/lib/GPhoneFavorite;
move-result-object v1
invoke-virtual {v6, v1}, Lcom/glympse/android/hal/GVector;->add(Ljava/lang/Object;)Z
:cond_c6
invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
goto/16 :goto_40
:cond_cc
move v1, v9
goto :goto_69
:cond_ce
move-object v5, v6
:cond_cf
if-eqz v10, :cond_d4
invoke-interface {v10}, Landroid/database/Cursor;->close()V
:cond_d4
return-object v5
:cond_d5
move-object v1, v5
goto :goto_9a
:cond_d7
move-object v2, v5
goto :goto_88
:cond_d9
move-object v7, v5
goto :goto_a0
:cond_db
move-object v10, v5
goto/16 :goto_31
.end method
.method static synthetic e(Landroid/content/Context;)Lcom/glympse/android/hal/GVector;
.registers 2
invoke-static {p0}, Lcom/glympse/android/hal/PhoneFavoriteProvider;->d(Landroid/content/Context;)Lcom/glympse/android/hal/GVector;
move-result-object v0
return-object v0
.end method
.method public complete(Lcom/glympse/android/hal/GVector;)V
.registers 3
const/4 v0, 0x0
iput-object p1, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cB:Lcom/glympse/android/core/GArray;
iput-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cA:Lcom/glympse/android/hal/ba;
iput-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->R:Ljava/util/concurrent/Future;
iget-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cz:Lcom/glympse/android/hal/GPhoneFavoriteListener;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cz:Lcom/glympse/android/hal/GPhoneFavoriteListener;
invoke-interface {v0, p0}, Lcom/glympse/android/hal/GPhoneFavoriteListener;->phoneFavoritesReady(Lcom/glympse/android/hal/GPhoneFavoriteProvider;)V
:cond_10
return-void
.end method
.method public getPhoneFavorites()Lcom/glympse/android/core/GArray;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cB:Lcom/glympse/android/core/GArray;
return-object v0
.end method
.method public refresh(Z)V
.registers 4
if-eqz p1, :cond_b
iget-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->e:Landroid/content/Context;
invoke-static {v0}, Lcom/glympse/android/hal/PhoneFavoriteProvider;->d(Landroid/content/Context;)Lcom/glympse/android/hal/GVector;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cB:Lcom/glympse/android/core/GArray;
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cA:Lcom/glympse/android/hal/ba;
if-nez v0, :cond_a
new-instance v0, Lcom/glympse/android/hal/ba;
iget-object v1, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->e:Landroid/content/Context;
invoke-direct {v0, p0, v1}, Lcom/glympse/android/hal/ba;-><init>(Lcom/glympse/android/hal/PhoneFavoriteProvider;Landroid/content/Context;)V
iput-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cA:Lcom/glympse/android/hal/ba;
invoke-static {}, Lcom/glympse/android/hal/GlympseThreadPool;->instance()Lcom/glympse/android/hal/GlympseThreadPool;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cA:Lcom/glympse/android/hal/ba;
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GlympseThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->R:Ljava/util/concurrent/Future;
goto :goto_a
.end method
.method public start(Lcom/glympse/android/hal/GPhoneFavoriteListener;Lcom/glympse/android/core/GHandler;)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cz:Lcom/glympse/android/hal/GPhoneFavoriteListener;
iput-object p2, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->_handler:Lcom/glympse/android/core/GHandler;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/glympse/android/hal/PhoneFavoriteProvider;->refresh(Z)V
return-void
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cA:Lcom/glympse/android/hal/ba;
if-eqz v0, :cond_f
:try_start_5
iget-object v0, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->R:Ljava/util/concurrent/Future;
const/4 v1, 0x1
invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
:goto_b
:try_end_b
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_b} :catch_14
iput-object v2, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cA:Lcom/glympse/android/hal/ba;
iput-object v2, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->R:Ljava/util/concurrent/Future;
:cond_f
iput-object v2, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->cz:Lcom/glympse/android/hal/GPhoneFavoriteListener;
iput-object v2, p0, Lcom/glympse/android/hal/PhoneFavoriteProvider;->_handler:Lcom/glympse/android/core/GHandler;
return-void
:catch_14
move-exception v0
goto :goto_b
.end method