.class public Lco/vine/android/provider/VineSuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "VineSuggestionsProvider.java"
.field public static final AUTHORITY:Ljava/lang/String; = null
.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = null
.field private static final LOGGABLE:Z = false
.field public static final PATH_TAGS:Ljava/lang/String; = "tags"
.field public static final PATH_USERS:Ljava/lang/String; = "users"
.field public static final SCHEME:Ljava/lang/String; = "content"
.field private static final SUGGEST_TAGS:I = 0x2
.field private static final SUGGEST_USERS:I = 0x1
.field private static final TAG:Ljava/lang/String; = "VineSuggestProvider"
.field public static final TAGS_URI:Landroid/net/Uri;
.field public static final USERS_URI:Landroid/net/Uri;
.field private static final sTagsTypeAhead:Ljava/util/HashMap;
.field private static final sUriMatcher:Landroid/content/UriMatcher;
.field private static final sUsersTypeAhead:Ljava/util/HashMap;
.field private mAppController:Lco/vine/android/client/AppController;
.method static constructor <clinit>()V
.registers 4
const/4 v1, 0x1
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v0
if-nez v0, :cond_10
const-string v0, "VineSuggestProvider"
const/4 v2, 0x3
invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_98
:cond_10
move v0, v1
:goto_11
sput-boolean v0, Lco/vine/android/provider/VineSuggestionsProvider;->LOGGABLE:Z
const-string v0, ".provider.VineSuggestionsProvider"
invoke-static {v0}, Lco/vine/android/util/BuildUtil;->getAuthority(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->AUTHORITY:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "content://"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v2, Lco/vine/android/provider/VineSuggestionsProvider;->AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->CONTENT_AUTHORITY:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lco/vine/android/provider/VineSuggestionsProvider;->CONTENT_AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "users"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->USERS_URI:Landroid/net/Uri;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lco/vine/android/provider/VineSuggestionsProvider;->CONTENT_AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "tags"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->TAGS_URI:Landroid/net/Uri;
new-instance v0, Landroid/content/UriMatcher;
const/4 v2, -0x1
invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V
sput-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sUriMatcher:Landroid/content/UriMatcher;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sUsersTypeAhead:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sTagsTypeAhead:Ljava/util/HashMap;
sget-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v2, Lco/vine/android/provider/VineSuggestionsProvider;->AUTHORITY:Ljava/lang/String;
const-string v3, "users/#"
invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/VineSuggestionsProvider;->AUTHORITY:Ljava/lang/String;
const-string v2, "tags"
const/4 v3, 0x2
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
return-void
:cond_98
const/4 v0, 0x0
goto/16 :goto_11
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method public static addRealtimeTagSuggestions(Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 4
sget-object v1, Lco/vine/android/provider/VineSuggestionsProvider;->sTagsTypeAhead:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sTagsTypeAhead:Ljava/util/HashMap;
invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public static addRealtimeUserSuggestions(Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 4
sget-object v1, Lco/vine/android/provider/VineSuggestionsProvider;->sUsersTypeAhead:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sUsersTypeAhead:Ljava/util/HashMap;
invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public static clearRealtimeTagSuggestions()V
.registers 2
sget-object v1, Lco/vine/android/provider/VineSuggestionsProvider;->sTagsTypeAhead:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sTagsTypeAhead:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method public static clearRealtimeUserSuggestions()V
.registers 2
sget-object v1, Lco/vine/android/provider/VineSuggestionsProvider;->sUsersTypeAhead:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sUsersTypeAhead:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method private getComposeTagSuggestions(Ljava/lang/String;Landroid/database/MatrixCursor;)Landroid/database/Cursor;
.registers 23
const/4 v11, 0x0
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/provider/VineSuggestionsProvider;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v4}, Lco/vine/android/client/AppController;->getTypeaheadMaxCompose()I
move-result v13
invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_91
const/4 v9, 0x1
:goto_10
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineSuggestionsProvider;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
sget-object v3, Lco/vine/android/provider/Vine$TagsRecentlyUsed;->CONTENT_URI:Landroid/net/Uri;
if-eqz v9, :cond_94
const-string v5, "tag_name LIKE ?"
const/4 v4, 0x1
new-array v6, v4, [Ljava/lang/String;
const/4 v4, 0x0
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p1
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v18, "%"
move-object/from16 v0, v18
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
aput-object v7, v6, v4
:goto_3b
sget-object v4, Lco/vine/android/provider/VineDatabaseSQL$TagsRecentlyUsedQuery;->PROJECTION:[Ljava/lang/String;
const-string v7, "last_used_timestamp DESC"
invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v8
new-instance v14, Ljava/util/HashSet;
invoke-direct {v14}, Ljava/util/HashSet;-><init>()V
if-eqz v8, :cond_64
:goto_4a
:cond_4a
invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
move-result v4
if-eqz v4, :cond_61
const/4 v4, 0x1
invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v18
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_4a
if-le v11, v13, :cond_97
:cond_61
invoke-interface {v8}, Landroid/database/Cursor;->close()V
:cond_64
if-eqz v9, :cond_90
if-gt v11, v13, :cond_90
invoke-static/range {p1 .. p1}, Lco/vine/android/provider/VineSuggestionsProvider;->getRealtimeTagSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v17
if-eqz v17, :cond_90
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_72
:goto_72
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_90
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Lco/vine/android/api/VineTag;
move-object/from16 v0, v16
iget-wide v0, v0, Lco/vine/android/api/VineTag;->tagId:J
move-wide/from16 v18, v0
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_72
if-le v11, v13, :cond_c6
:cond_90
return-object p2
:cond_91
const/4 v9, 0x0
goto/16 :goto_10
:cond_94
const/4 v5, 0x0
const/4 v6, 0x0
goto :goto_3b
:cond_97
invoke-virtual/range {p2 .. p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;
move-result-object v15
add-int/lit8 v12, v11, 0x1
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
const/4 v4, 0x1
invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v18
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
const/4 v4, 0x2
invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
const/4 v4, 0x1
invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v18
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v14, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
move v11, v12
goto :goto_4a
:cond_c6
invoke-virtual/range {p2 .. p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;
move-result-object v15
add-int/lit8 v12, v11, 0x1
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
move-object/from16 v0, v16
iget-wide v0, v0, Lco/vine/android/api/VineTag;->tagId:J
move-wide/from16 v18, v0
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
move-object/from16 v0, v16
iget-object v4, v0, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
move v11, v12
goto :goto_72
.end method
.method private getComposeUserSuggestions(Ljava/lang/String;Landroid/database/MatrixCursor;J)Landroid/database/Cursor;
.registers 25
const/4 v11, 0x0
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/provider/VineSuggestionsProvider;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v4}, Lco/vine/android/client/AppController;->getTypeaheadMaxCompose()I
move-result v13
invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_97
const/4 v9, 0x1
:goto_10
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineSuggestionsProvider;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
sget-object v4, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_ALL_FOLLOW:Landroid/net/Uri;
move-wide/from16 v0, p3
invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v3
if-eqz v9, :cond_9a
const-string v5, "username LIKE ?"
const/4 v4, 0x1
new-array v6, v4, [Ljava/lang/String;
const/4 v4, 0x0
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p1
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v18, "%"
move-object/from16 v0, v18
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
aput-object v7, v6, v4
:goto_41
sget-object v4, Lco/vine/android/provider/VineSuggestionsProvider$UsersQuery;->PROJECTION:[Ljava/lang/String;
const-string v7, "order_id DESC"
invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v8
new-instance v14, Ljava/util/HashSet;
invoke-direct {v14}, Ljava/util/HashSet;-><init>()V
if-eqz v8, :cond_6a
:goto_50
:cond_50
invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
move-result v4
if-eqz v4, :cond_67
const/4 v4, 0x1
invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v18
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_50
if-le v11, v13, :cond_9d
:cond_67
invoke-interface {v8}, Landroid/database/Cursor;->close()V
:cond_6a
if-eqz v9, :cond_96
if-gt v11, v13, :cond_96
invoke-static/range {p1 .. p1}, Lco/vine/android/provider/VineSuggestionsProvider;->getRealtimeUserSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v17
if-eqz v17, :cond_96
invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_78
:goto_78
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_96
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v16
check-cast v16, Lco/vine/android/api/VineUser;
move-object/from16 v0, v16
iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J
move-wide/from16 v18, v0
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_78
if-le v11, v13, :cond_d5
:cond_96
return-object p2
:cond_97
const/4 v9, 0x0
goto/16 :goto_10
:cond_9a
const/4 v5, 0x0
const/4 v6, 0x0
goto :goto_41
:cond_9d
invoke-virtual/range {p2 .. p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;
move-result-object v15
add-int/lit8 v12, v11, 0x1
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
const/4 v4, 0x1
invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v18
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
const/4 v4, 0x2
invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
const/4 v4, 0x3
invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
const/4 v4, 0x1
invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v18
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v14, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
move v11, v12
goto/16 :goto_50
:cond_d5
invoke-virtual/range {p2 .. p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;
move-result-object v15
add-int/lit8 v12, v11, 0x1
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
move-object/from16 v0, v16
iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J
move-wide/from16 v18, v0
invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
move-object/from16 v0, v16
iget-object v4, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
move-object/from16 v0, v16
iget-object v4, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;
invoke-virtual {v15, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
move v11, v12
goto/16 :goto_78
.end method
.method public static getRealtimeTagSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
.registers 3
sget-object v1, Lco/vine/android/provider/VineSuggestionsProvider;->sTagsTypeAhead:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sTagsTypeAhead:Ljava/util/HashMap;
invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
monitor-exit v1
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_d
throw v0
.end method
.method public static getRealtimeUserSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
.registers 3
sget-object v1, Lco/vine/android/provider/VineSuggestionsProvider;->sUsersTypeAhead:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
sget-object v0, Lco/vine/android/provider/VineSuggestionsProvider;->sUsersTypeAhead:Ljava/util/HashMap;
invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
monitor-exit v1
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_d
throw v0
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 5
const/4 v0, 0x0
return v0
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public onCreate()Z
.registers 4
const-string v1, " + Lco/vine/android/provider/VineSuggestionsProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lco/vine/android/provider/VineSuggestionsProvider;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v0
iput-object v0, p0, Lco/vine/android/provider/VineSuggestionsProvider;->mAppController:Lco/vine/android/client/AppController;
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lco/vine/android/provider/VineSuggestionsProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 20
const/4 v6, 0x0
:try_start_1
invoke-virtual {p0}, Lco/vine/android/provider/VineSuggestionsProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
:try_end_c
.catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_c} :catch_65
move-result-object v2
:goto_d
new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
sget-boolean v3, Lco/vine/android/provider/VineSuggestionsProvider;->LOGGABLE:Z
if-eqz v3, :cond_3e
const-string v3, "VineSuggestProvider"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "QUERY: uri "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " -> "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
sget-object v5, Lco/vine/android/provider/VineSuggestionsProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_3e
sget-object v3, Lco/vine/android/provider/VineSuggestionsProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v11
packed-switch v11, :pswitch_data_ca
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const/4 v7, 0x0
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
move-object/from16 v8, p5
:try_start_55
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v9
invoke-virtual {p0}, Lco/vine/android/provider/VineSuggestionsProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
invoke-interface {v9, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
:try_end_64
.catch Ljava/lang/Exception; {:try_start_55 .. :try_end_64} :catch_9f
:goto_64
return-object v9
:catch_65
move-exception v10
const-string v3, "Failed to get a readable database on query."
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v10, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lco/vine/android/provider/VineSuggestionsProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
goto :goto_d
:pswitch_7b
invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v12
new-instance v3, Landroid/database/MatrixCursor;
sget-object v4, Lco/vine/android/provider/VineSuggestionsProvider$UsersQuery;->PROJECTION:[Ljava/lang/String;
invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
move-object/from16 v0, p3
invoke-direct {p0, v0, v3, v12, v13}, Lco/vine/android/provider/VineSuggestionsProvider;->getComposeUserSuggestions(Ljava/lang/String;Landroid/database/MatrixCursor;J)Landroid/database/Cursor;
move-result-object v9
goto :goto_64
:pswitch_91
new-instance v3, Landroid/database/MatrixCursor;
sget-object v4, Lco/vine/android/provider/VineSuggestionsProvider$TagsQuery;->PROJECTION:[Ljava/lang/String;
invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
move-object/from16 v0, p3
invoke-direct {p0, v0, v3}, Lco/vine/android/provider/VineSuggestionsProvider;->getComposeTagSuggestions(Ljava/lang/String;Landroid/database/MatrixCursor;)Landroid/database/Cursor;
move-result-object v9
goto :goto_64
:catch_9f
move-exception v10
sget-boolean v3, Lco/vine/android/provider/VineSuggestionsProvider;->LOGGABLE:Z
if-eqz v3, :cond_c3
const-string v3, "Cannot execute {} {}  {} {} {} {}"
const/4 v4, 0x5
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;
move-result-object v7
aput-object v7, v4, v5
const/4 v5, 0x1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;
move-result-object v7
aput-object v7, v4, v5
const/4 v5, 0x2
aput-object p3, v4, v5
const/4 v5, 0x3
aput-object v6, v4, v5
const/4 v5, 0x4
aput-object p5, v4, v5
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_c3
new-instance v3, Ljava/lang/RuntimeException;
invoke-direct {v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v3
nop
:pswitch_data_ca
.packed-switch 0x1
:pswitch_7b
:pswitch_91
.end packed-switch
.end method
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 6
const/4 v0, 0x0
return v0
.end method