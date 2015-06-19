.class public Lco/vine/android/SortContactsTask;
.super Landroid/os/AsyncTask;
.source "SortContactsTask.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Landroid/database/Cursor;
invoke-virtual {p0, p1}, Lco/vine/android/SortContactsTask;->doInBackground([Landroid/database/Cursor;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method protected final varargs doInBackground([Landroid/database/Cursor;)Ljava/util/ArrayList;
.registers 5
const/4 v2, 0x0
aget-object v0, p1, v2
:try_start_3
invoke-virtual {p0, v0}, Lco/vine/android/SortContactsTask;->prepareEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;
:try_end_6
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8
move-result-object v2
:goto_7
return-object v2
:catch_8
move-exception v1
const-string v2, "Failed to prepare entries, cursor closed?"
invoke-static {v2, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
goto :goto_7
.end method
.method protected prepareEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;
.registers 14
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v7, 0x0
const-string v4, "Sorting contacts."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
move-result v4
invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V
:goto_11
invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
move-result v4
if-eqz v4, :cond_7b
const/4 v2, 0x0
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v4
if-nez v4, :cond_2a
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/ContactEntry;
:cond_2a
const/4 v4, 0x3
invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
if-eqz v2, :cond_6e
iget-wide v8, v2, Lco/vine/android/ContactEntry;->contactId:J
invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v10
cmp-long v4, v8, v10
if-nez v4, :cond_6e
move-object v1, v2
iget v8, v1, Lco/vine/android/ContactEntry;->typeFlag:I
const-string v4, "vnd.android.cursor.item/email_v2"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6c
move v4, v5
:goto_47
or-int/2addr v4, v8
iput v4, v1, Lco/vine/android/ContactEntry;->typeFlag:I
:goto_4a
iget-object v9, v1, Lco/vine/android/ContactEntry;->valueMimeMap:Ljava/util/HashMap;
const/4 v4, 0x4
invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
const-string v4, "vnd.android.cursor.item/email_v2"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_77
move v4, v5
:goto_5a
const-string v8, "vnd.android.cursor.item/phone_v2"
invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_79
move v8, v6
:goto_63
or-int/2addr v4, v8
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_11
:cond_6c
move v4, v6
goto :goto_47
:cond_6e
new-instance v1, Lco/vine/android/ContactEntry;
invoke-direct {v1, p1}, Lco/vine/android/ContactEntry;-><init>(Landroid/database/Cursor;)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_4a
:cond_77
move v4, v7
goto :goto_5a
:cond_79
move v8, v7
goto :goto_63
:cond_7b
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
const-string v4, "Sorting contacts complete."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
return-object v0
.end method