.class public Lco/vine/android/provider/HybridPostCursorExplore;
.super Lco/vine/android/provider/HybridPostCursor;
.source "HybridPostCursorExplore.java"
.method public constructor <init>(Landroid/database/Cursor;)V
.registers 3
const/16 v0, 0x14
invoke-direct {p0, p1, v0}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
return-void
.end method
.method public constructor <init>(Landroid/database/Cursor;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
return-void
.end method
.method public constructor <init>(Ljava/util/ArrayList;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lco/vine/android/provider/HybridPostCursor;-><init>(Ljava/util/ArrayList;I)V
return-void
.end method
.method public onPrepare()V
.registers 16
const/4 v14, 0x1
iget-object v3, p0, Lco/vine/android/provider/HybridPostCursorExplore;->mCursor:Landroid/database/Cursor;
const/4 v0, 0x0
const/4 v5, 0x0
if-eqz v3, :cond_6f
invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
move-result v9
if-eqz v9, :cond_6f
const-wide/16 v6, 0x0
const/4 v8, 0x0
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
iput-object v9, p0, Lco/vine/android/provider/HybridPostCursorExplore;->mList:Ljava/util/List;
:cond_17
invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
cmp-long v9, v1, v6
if-eqz v9, :cond_2d
if-eqz v8, :cond_28
iget-object v9, p0, Lco/vine/android/provider/HybridPostCursorExplore;->mList:Ljava/util/List;
invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
:cond_28
move-wide v6, v1
invoke-static {v3}, Lco/vine/android/api/VinePost;->fromExplore(Landroid/database/Cursor;)Lco/vine/android/api/VinePost;
move-result-object v8
:try_start_2d
:cond_2d
invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
:try_end_30
.catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_30} :catch_3f
move-result v5
:goto_31
if-eqz v5, :cond_37
iget v9, p0, Lco/vine/android/provider/HybridPostCursorExplore;->mLimit:I
if-lt v0, v9, :cond_17
:cond_37
if-eqz v8, :cond_3e
iget-object v9, p0, Lco/vine/android/provider/HybridPostCursorExplore;->mList:Ljava/util/List;
invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_3e
:cond_3e
return-void
:catch_3f
move-exception v4
new-instance v9, Lco/vine/android/VineLoggingException;
invoke-direct {v9}, Lco/vine/android/VineLoggingException;-><init>()V
const-string v10, "Failed to get cursor\'s row id. total: {}, current: {}, limit: {}, postId: {}."
const/4 v11, 0x4
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
move-result v13
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v12
aput-object v12, v11, v14
const/4 v12, 0x2
iget v13, p0, Lco/vine/android/provider/HybridPostCursorExplore;->mLimit:I
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x3
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
aput-object v13, v11, v12
invoke-static {v9, v10, v11}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_31
:cond_6f
const/4 v9, 0x0
iput-object v9, p0, Lco/vine/android/provider/HybridPostCursorExplore;->mList:Ljava/util/List;
goto :goto_3e
.end method