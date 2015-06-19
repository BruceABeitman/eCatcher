.class  Lcom/glympse/android/hal/n;
.super Ljava/lang/Object;
.source "CalendarProvider.java"
.implements Ljava/lang/Runnable;
.field private S:Lcom/glympse/android/hal/GVector;
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private ae:Lcom/glympse/android/hal/l;
.field private af:Lcom/glympse/android/hal/GCalendarListener;
.field private ag:Landroid/content/Context;
.method public constructor <init>(Lcom/glympse/android/hal/l;Lcom/glympse/android/hal/GCalendarListener;Landroid/content/Context;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/n;->ae:Lcom/glympse/android/hal/l;
iput-object v0, p0, Lcom/glympse/android/hal/n;->af:Lcom/glympse/android/hal/GCalendarListener;
iput-object v0, p0, Lcom/glympse/android/hal/n;->ag:Landroid/content/Context;
iput-object v0, p0, Lcom/glympse/android/hal/n;->_handler:Lcom/glympse/android/core/GHandler;
iput-object v0, p0, Lcom/glympse/android/hal/n;->S:Lcom/glympse/android/hal/GVector;
iput-object p1, p0, Lcom/glympse/android/hal/n;->ae:Lcom/glympse/android/hal/l;
iput-object p2, p0, Lcom/glympse/android/hal/n;->af:Lcom/glympse/android/hal/GCalendarListener;
iput-object p3, p0, Lcom/glympse/android/hal/n;->ag:Landroid/content/Context;
iget-object v0, p1, Lcom/glympse/android/hal/l;->_handler:Lcom/glympse/android/core/GHandler;
iput-object v0, p0, Lcom/glympse/android/hal/n;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V
iput-object v0, p0, Lcom/glympse/android/hal/n;->S:Lcom/glympse/android/hal/GVector;
return-void
.end method
.method private i()V
.registers 22
const/4 v9, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Lcom/glympse/android/hal/n;->ag:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
invoke-static {v3}, Lcom/glympse/android/hal/Reflection$_CalendarContract;->GetAccountNames(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
move-result-object v16
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
move-object/from16 v0, p0
iget-object v4, v0, Lcom/glympse/android/hal/n;->af:Lcom/glympse/android/hal/GCalendarListener;
invoke-interface {v4}, Lcom/glympse/android/hal/GCalendarListener;->getSnapshotLookback()J
move-result-wide v5
move-object/from16 v0, p0
iget-object v4, v0, Lcom/glympse/android/hal/n;->af:Lcom/glympse/android/hal/GCalendarListener;
invoke-interface {v4}, Lcom/glympse/android/hal/GCalendarListener;->getSnapshotDuration()J
move-result-wide v10
const/4 v4, 0x0
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v12
if-nez v12, :cond_156
invoke-static {}, Lcom/glympse/android/hal/l;->g()[Ljava/lang/String;
move-result-object v4
sub-long v5, v7, v5
add-long/2addr v7, v10
invoke-static/range {v3 .. v8}, Lcom/glympse/android/hal/Reflection$_Instances;->query(Landroid/content/ContentResolver;[Ljava/lang/String;JJ)Landroid/database/Cursor;
move-result-object v4
move-object v15, v4
:goto_34
if-eqz v15, :cond_154
new-instance v13, Lcom/glympse/android/hal/GVector;
invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
move-result v4
invoke-direct {v13, v4}, Lcom/glympse/android/hal/GVector;-><init>(I)V
invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
move-result v4
:goto_43
if-eqz v4, :cond_146
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v4
if-nez v4, :cond_146
const/4 v4, 0x0
invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v17
const/4 v4, 0x2
invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v6
const/4 v4, 0x1
invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->safeTrim(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x4
invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->safeTrim(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const/4 v5, 0x5
invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v5
const/4 v9, 0x1
if-ne v5, v9, :cond_11e
const/4 v5, 0x1
:goto_70
const/4 v9, 0x6
invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/glympse/android/hal/Helpers;->safeTrim(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
const/4 v9, 0x3
invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/glympse/android/hal/Helpers;->safeTrim(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-static {v6, v7, v9}, Lcom/glympse/android/hal/l;->b(JLjava/lang/String;)J
move-result-wide v6
const/4 v9, 0x0
invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v11
const-string v12, "calendar.google.com"
invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v11
if-nez v11, :cond_9b
invoke-static {v10}, Lcom/glympse/android/lib/LibFactory;->guessInviteType(Ljava/lang/String;)I
move-result v9
invoke-static {v9, v10, v10}, Lcom/glympse/android/lib/LibFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v9
:cond_9b
const/4 v10, 0x0
const/4 v11, 0x0
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v12
if-nez v12, :cond_151
invoke-static {}, Lcom/glympse/android/hal/l;->h()[Ljava/lang/String;
move-result-object v11
move-wide/from16 v0, v17
invoke-static {v3, v0, v1, v11}, Lcom/glympse/android/hal/Reflection$_Attendees;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v11
move-object v14, v11
:goto_ae
if-eqz v14, :cond_139
new-instance v12, Lcom/glympse/android/hal/GVector;
invoke-interface {v14}, Landroid/database/Cursor;->getCount()I
move-result v10
invoke-direct {v12, v10}, Lcom/glympse/android/hal/GVector;-><init>(I)V
invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
move-result v10
:goto_bd
if-eqz v10, :cond_135
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v10
if-nez v10, :cond_135
const/4 v10, 0x0
invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeTrim(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
const/4 v10, 0x1
invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeTrim(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
invoke-static/range {v18 .. v18}, Lcom/glympse/android/lib/LibFactory;->guessInviteType(Ljava/lang/String;)I
move-result v19
move-object/from16 v0, p0
iget-object v10, v0, Lcom/glympse/android/hal/n;->ag:Landroid/content/Context;
invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v10
invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v10
iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
const/4 v11, 0x2
move/from16 v0, v19
if-eq v11, v0, :cond_f3
const/4 v11, 0x3
move/from16 v0, v19
if-ne v11, v0, :cond_130
:cond_f3
move-object/from16 v0, v18
invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v10
const-string v11, "calendar.google.com"
invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v10
if-nez v10, :cond_130
const/4 v10, 0x0
invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v20
move v11, v10
:goto_107
invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_121
invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
move-object/from16 v0, v18
invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_14f
const/4 v10, 0x1
:goto_11c
move v11, v10
goto :goto_107
:cond_11e
const/4 v5, 0x0
goto/16 :goto_70
:cond_121
if-nez v11, :cond_130
move/from16 v0, v19
move-object/from16 v1, v17
move-object/from16 v2, v18
invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/LibFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v10
invoke-virtual {v12, v10}, Lcom/glympse/android/hal/GVector;->add(Ljava/lang/Object;)Z
:cond_130
invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
move-result v10
goto :goto_bd
:cond_135
invoke-interface {v14}, Landroid/database/Cursor;->close()V
move-object v10, v12
:cond_139
invoke-static/range {v4 .. v10}, Lcom/glympse/android/lib/LibFactory;->createCalendarEvent(Ljava/lang/String;ZJLjava/lang/String;Lcom/glympse/android/api/GInvite;Lcom/glympse/android/core/GArray;)Lcom/glympse/android/lib/GCalendarEvent;
move-result-object v4
invoke-virtual {v13, v4}, Lcom/glympse/android/hal/GVector;->add(Ljava/lang/Object;)Z
invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
move-result v4
goto/16 :goto_43
:cond_146
invoke-interface {v15}, Landroid/database/Cursor;->close()V
move-object v3, v13
:goto_14a
move-object/from16 v0, p0
iput-object v3, v0, Lcom/glympse/android/hal/n;->S:Lcom/glympse/android/hal/GVector;
return-void
:cond_14f
move v10, v11
goto :goto_11c
:cond_151
move-object v14, v11
goto/16 :goto_ae
:cond_154
move-object v3, v9
goto :goto_14a
:cond_156
move-object v15, v4
goto/16 :goto_34
.end method
.method public run()V
.registers 5
:try_start_0
invoke-direct {p0}, Lcom/glympse/android/hal/n;->i()V
iget-object v0, p0, Lcom/glympse/android/hal/n;->_handler:Lcom/glympse/android/core/GHandler;
new-instance v1, Lcom/glympse/android/hal/m;
iget-object v2, p0, Lcom/glympse/android/hal/n;->ae:Lcom/glympse/android/hal/l;
iget-object v3, p0, Lcom/glympse/android/hal/n;->S:Lcom/glympse/android/hal/GVector;
invoke-direct {v1, v2, v3}, Lcom/glympse/android/hal/m;-><init>(Lcom/glympse/android/hal/l;Lcom/glympse/android/hal/GVector;)V
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V
:try_end_11
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12
:goto_11
return-void
:catch_12
move-exception v0
goto :goto_11
.end method