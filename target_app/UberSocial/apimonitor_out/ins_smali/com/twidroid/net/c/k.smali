.class public Lcom/twidroid/net/c/k;
.super Lcom/twidroid/net/c/a/e;
.source "SourceFile"
.field private static final a:I = 0x64
.field public static final d:J = 0x5265c00L
.field static g:Z
.field private final b:I
.field final c:Ljava/lang/String;
.field  e:I
.field  f:I
.field private i:Ljava/util/HashSet;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/net/c/k;->g:Z
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/net/c/a/e;-><init>()V
const-string v0, "UpdateFollowersTask"
iput-object v0, p0, Lcom/twidroid/net/c/k;->c:Ljava/lang/String;
const/4 v0, 0x3
iput v0, p0, Lcom/twidroid/net/c/k;->b:I
const/4 v0, 0x0
iput v0, p0, Lcom/twidroid/net/c/k;->e:I
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/net/c/k;->f:I
return-void
.end method
.method private a(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;)V
.registers 6
if-eqz p2, :cond_b
invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
const-wide/16 v1, 0x0
invoke-virtual {v0, p2, v1, v2}, Lcom/twidroid/d/v;->a(Lcom/twidroid/model/twitter/c;J)V
:cond_b
return-void
.end method
.method private a(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;IZ)V
.registers 23
invoke-virtual/range {p1 .. p1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v4
invoke-virtual/range {p1 .. p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
move-object/from16 v0, p2
invoke-virtual {v2, v0}, Lcom/twidroid/d/v;->a(Lcom/twidroid/model/twitter/c;)J
move-result-wide v2
const/16 v5, 0x64
div-int v5, v5, p3
int-to-float v14, v5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long/2addr v5, v2
const-wide/32 v7, 0x5265c00
cmp-long v5, v5, v7
if-gez v5, :cond_6f
const-string v4, "UpdateFollowersTask"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Last sync was: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long v2, v6, v2
invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " this is less than: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-wide/32 v5, 0x5265c00
invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " NOT SYNC PERFORMED NOW"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v4, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget v2, v0, Lcom/twidroid/net/c/k;->e:I
int-to-float v2, v2
add-float/2addr v2, v14
float-to-int v2, v2
move-object/from16 v0, p0
iput v2, v0, Lcom/twidroid/net/c/k;->e:I
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Integer;
const/4 v3, 0x0
move-object/from16 v0, p0
iget v4, v0, Lcom/twidroid/net/c/k;->e:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
:goto_6e
return-void
:cond_6f
invoke-virtual/range {p1 .. p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
move-object/from16 v0, p2
invoke-virtual {v2, v0, v5, v6}, Lcom/twidroid/d/v;->a(Lcom/twidroid/model/twitter/c;J)V
:try_start_7c
invoke-virtual/range {p1 .. p1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->r()Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_f3
move-object/from16 v0, p0
iget-object v3, v0, Lcom/twidroid/net/c/k;->i:Ljava/util/HashSet;
if-nez v3, :cond_eb
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
move-object/from16 v0, p0
iput-object v3, v0, Lcom/twidroid/net/c/k;->i:Ljava/util/HashSet;
:goto_95
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_99
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_f3
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/twidroid/model/twitter/User;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/twidroid/net/c/k;->i:Ljava/util/HashSet;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->e()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:try_end_b4
.catch Ljava/lang/Exception; {:try_start_7c .. :try_end_b4} :catch_b5
goto :goto_99
:catch_b5
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
if-eqz v2, :cond_cd
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
const v3, 0x7f0c0027
const v4, 0x7f0c0028
const/4 v5, 0x0
invoke-interface {v2, v3, v4, v5}, Lcom/twidroid/net/c/a/f;->a(IILjava/lang/String;)V
:cond_cd
:goto_cd
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Integer;
const/4 v3, 0x0
float-to-int v4, v14
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
invoke-virtual/range {p1 .. p1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
move-object/from16 v0, p2
invoke-virtual {v2, v0, v3, v4}, Lcom/twidroid/d/v;->a(Lcom/twidroid/model/twitter/c;J)V
goto :goto_6e
:cond_eb
:try_start_eb
move-object/from16 v0, p0
iget-object v3, v0, Lcom/twidroid/net/c/k;->i:Ljava/util/HashSet;
invoke-virtual {v3}, Ljava/util/HashSet;->clear()V
goto :goto_95
:cond_f3
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "update followers set dirty=1 where account="
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p2 .. p2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, " and "
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "is_inner_circle"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "=0;"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v15
invoke-virtual {v15}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v16
move-object/from16 v0, p2
invoke-virtual {v15, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:try_end_13a
.catch Ljava/lang/Exception; {:try_start_eb .. :try_end_13a} :catch_b5
const-wide/16 v5, -0x1
:try_start_13c
invoke-virtual {v15}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v15, v5, v6, v2}, Lcom/twidroid/net/a/c/c;->c(JLjava/lang/String;)Lcom/twidroid/net/a/c/i;
move-result-object v5
const/4 v2, 0x0
if-eqz p4, :cond_3fb
const-wide/16 v6, -0x1
invoke-virtual {v15}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
const/4 v9, 0x1
invoke-virtual {v15, v6, v7, v2, v9}, Lcom/twidroid/net/a/c/c;->a(JLjava/lang/String;Z)Lcom/twidroid/net/a/c/i;
move-result-object v2
move-object v7, v2
:goto_15b
if-eqz v5, :cond_174
invoke-virtual {v5}, Lcom/twidroid/net/a/c/i;->a()[J
move-result-object v2
move-object v5, v2
:goto_162
if-eqz v5, :cond_177
const/4 v2, 0x0
:goto_165
array-length v6, v5
if-ge v2, v6, :cond_177
aget-wide v9, v5, v2
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_165
:cond_174
const/4 v2, 0x0
move-object v5, v2
goto :goto_162
:cond_177
if-eqz p4, :cond_29c
const/16 v2, 0x64
invoke-virtual {v7, v2}, Lcom/twidroid/net/a/c/i;->a(I)[J
move-result-object v6
array-length v5, v6
const/4 v2, 0x0
:goto_181
if-lez v5, :cond_1d1
invoke-virtual/range {p0 .. p0}, Lcom/twidroid/net/c/k;->h()Z
move-result v9
if-nez v9, :cond_1d1
const-wide/16 v9, -0x1
invoke-virtual {v15, v6, v9, v10}, Lcom/twidroid/net/a/c/c;->a([JJ)Ljava/util/List;
move-result-object v6
invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
const/16 v6, 0x64
invoke-virtual {v7, v6}, Lcom/twidroid/net/a/c/i;->a(I)[J
move-result-object v6
move-object/from16 v0, p0
iget v9, v0, Lcom/twidroid/net/c/k;->f:I
add-int/2addr v5, v9
move-object/from16 v0, p0
iput v5, v0, Lcom/twidroid/net/c/k;->f:I
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Integer;
const/4 v9, 0x0
move-object/from16 v0, p0
iget v10, v0, Lcom/twidroid/net/c/k;->e:I
int-to-double v10, v10
move-object/from16 v0, p0
iget v12, v0, Lcom/twidroid/net/c/k;->f:I
int-to-float v12, v12
invoke-virtual {v7}, Lcom/twidroid/net/a/c/i;->h()I
move-result v13
int-to-float v13, v13
div-float/2addr v12, v13
const/high16 v13, 0x4040
div-float v13, v14, v13
mul-float/2addr v12, v13
float-to-double v12, v12
invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D
move-result-wide v12
add-double/2addr v10, v12
double-to-int v10, v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v5, v9
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
array-length v5, v6
const/16 v9, 0x32
if-le v2, v9, :cond_22b
:cond_1d1
move-object/from16 v0, p0
iget v2, v0, Lcom/twidroid/net/c/k;->e:I
int-to-float v2, v2
const/high16 v5, 0x4040
div-float v5, v14, v5
add-float/2addr v2, v5
float-to-int v2, v2
move-object/from16 v0, p0
iput v2, v0, Lcom/twidroid/net/c/k;->e:I
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Integer;
const/4 v5, 0x0
move-object/from16 v0, p0
iget v6, v0, Lcom/twidroid/net/c/k;->e:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v2, v5
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
const/4 v2, 0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/twidroid/net/c/k;->f:I
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_203
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_28e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/twidroid/model/twitter/User;
:try_start_20f
:try_end_20f
.catchall {:try_start_13c .. :try_end_20f} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_13c .. :try_end_20f} :catch_25c
invoke-virtual/range {p0 .. p0}, Lcom/twidroid/net/c/k;->h()Z
move-result v6
if-eqz v6, :cond_22f
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_start_21c
:try_end_21c
.catchall {:try_start_20f .. :try_end_21c} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_20f .. :try_end_21c} :catch_257
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_223
.catch Ljava/lang/Exception; {:try_start_21c .. :try_end_223} :catch_225
goto/16 :goto_6e
:catch_225
move-exception v2
:try_start_226
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_end_229
.catch Ljava/lang/Exception; {:try_start_226 .. :try_end_229} :catch_b5
goto/16 :goto_6e
:cond_22b
add-int/lit8 v2, v2, 0x1
goto/16 :goto_181
:cond_22f
:try_start_22f
invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->e()J
move-result-wide v6
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_248
invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->e()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
invoke-interface {v3, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:cond_248
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v4, v1, v2, v6}, Lcom/twidroid/net/c/k;->a(Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/User;Z)V
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z
:try_end_256
.catchall {:try_start_22f .. :try_end_256} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_22f .. :try_end_256} :catch_257
goto :goto_203
:catch_257
move-exception v2
:try_start_258
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_end_25b
.catchall {:try_start_258 .. :try_end_25b} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_258 .. :try_end_25b} :catch_25c
goto :goto_203
:catch_25c
move-exception v2
:try_start_25d
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_start_260
:try_end_260
.catchall {:try_start_25d .. :try_end_260} :catchall_3e0
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_start_267
:try_end_267
.catch Ljava/lang/Exception; {:try_start_260 .. :try_end_267} :catch_3ee
:goto_267
invoke-virtual/range {v15 .. v16}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
const-string v2, "UpdateFollowersTask"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Followers Database After Cleanup: "
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v4
const-string v5, "followers"
invoke-static {v4, v5}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_28c
.catch Ljava/lang/Exception; {:try_start_267 .. :try_end_28c} :catch_b5
goto/16 :goto_cd
:try_start_28e
:cond_28e
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:cond_29c
move-object/from16 v0, p0
iget v2, v0, Lcom/twidroid/net/c/k;->e:I
int-to-float v2, v2
const/high16 v5, 0x4040
div-float v5, v14, v5
add-float/2addr v2, v5
float-to-int v2, v2
move-object/from16 v0, p0
iput v2, v0, Lcom/twidroid/net/c/k;->e:I
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Integer;
const/4 v5, 0x0
move-object/from16 v0, p0
iget v6, v0, Lcom/twidroid/net/c/k;->e:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v2, v5
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
const/4 v2, 0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/twidroid/net/c/k;->f:I
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v2
const/16 v5, 0x64
if-gt v2, v5, :cond_2ec
new-instance v6, Lcom/twidroid/net/c/k$1;
move-object/from16 v0, p0
invoke-direct {v6, v0}, Lcom/twidroid/net/c/k$1;-><init>(Lcom/twidroid/net/c/k;)V
float-to-int v7, v14
move-object/from16 v2, p0
move-object/from16 v5, p2
invoke-direct/range {v2 .. v7}, Lcom/twidroid/net/c/k;->a(Ljava/util/List;Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/l;I)Z
:try_end_2da
.catchall {:try_start_28e .. :try_end_2da} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_28e .. :try_end_2da} :catch_25c
move-result v2
if-nez v2, :cond_335
:try_start_2dd
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_2e4
.catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2e4} :catch_2e6
goto/16 :goto_6e
:catch_2e6
move-exception v2
:try_start_2e7
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_end_2ea
.catch Ljava/lang/Exception; {:try_start_2e7 .. :try_end_2ea} :catch_b5
goto/16 :goto_6e
:try_start_2ec
:cond_2ec
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v2
div-int/lit8 v2, v2, 0x64
int-to-double v5, v2
invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D
:try_end_2f6
.catchall {:try_start_2ec .. :try_end_2f6} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_2ec .. :try_end_2f6} :catch_25c
move-result-wide v5
double-to-int v0, v5
move/from16 v17, v0
const/4 v12, 0x0
const/16 v11, 0x63
const/4 v2, 0x0
move v13, v2
:goto_2ff
move/from16 v0, v17
if-ge v13, v0, :cond_335
:try_start_303
const-string v2, "UpdateFollowersTask"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Update FriendsTask: start:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " stop:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " listsize: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v2, v5}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_333
.catchall {:try_start_303 .. :try_end_333} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_303 .. :try_end_333} :catch_3d8
if-le v12, v11, :cond_391
:cond_335
:try_start_335
move-object/from16 v0, p0
iget v2, v0, Lcom/twidroid/net/c/k;->e:I
int-to-float v2, v2
const/high16 v3, 0x4040
div-float v3, v14, v3
add-float/2addr v2, v3
float-to-int v2, v2
move-object/from16 v0, p0
iput v2, v0, Lcom/twidroid/net/c/k;->e:I
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Integer;
const/4 v3, 0x0
move-object/from16 v0, p0
iget v5, v0, Lcom/twidroid/net/c/k;->e:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v2, v3
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
const-string v2, "UpdateFollowersTask"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Followers Database: "
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v5
const-string v6, "followers"
invoke-static {v5, v6}, Lcom/twidroid/d/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
move-result v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_start_379
:try_end_379
.catchall {:try_start_335 .. :try_end_379} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_335 .. :try_end_379} :catch_25c
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
const-string v3, "delete from followers where dirty=1;"
invoke-static {v2, v3}, Lcom/twidroid/d/i;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
:try_end_382
.catchall {:try_start_379 .. :try_end_382} :catchall_3e0
.catch Landroid/database/sqlite/SQLiteException; {:try_start_379 .. :try_end_382} :catch_3e9
.catch Ljava/lang/Exception; {:try_start_379 .. :try_end_382} :catch_25c
:goto_382
:try_start_382
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_389
.catch Ljava/lang/Exception; {:try_start_382 .. :try_end_389} :catch_38b
goto/16 :goto_267
:catch_38b
move-exception v2
:try_start_38c
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_end_38f
.catch Ljava/lang/Exception; {:try_start_38c .. :try_end_38f} :catch_b5
goto/16 :goto_267
:try_start_391
:cond_391
invoke-interface {v3, v12, v11}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v6
new-instance v9, Lcom/twidroid/net/c/k$2;
move-object/from16 v0, p0
invoke-direct {v9, v0}, Lcom/twidroid/net/c/k$2;-><init>(Lcom/twidroid/net/c/k;)V
float-to-int v10, v14
move-object/from16 v5, p0
move-object v7, v4
move-object/from16 v8, p2
invoke-direct/range {v5 .. v10}, Lcom/twidroid/net/c/k;->a(Ljava/util/List;Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/l;I)Z
:try_end_3a5
.catchall {:try_start_391 .. :try_end_3a5} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_391 .. :try_end_3a5} :catch_3d8
move-result v2
if-nez v2, :cond_3b7
:try_start_3a8
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_3af
.catch Ljava/lang/Exception; {:try_start_3a8 .. :try_end_3af} :catch_3b1
goto/16 :goto_6e
:catch_3b1
move-exception v2
:try_start_3b2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
:try_end_3b5
.catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_3b5} :catch_b5
goto/16 :goto_6e
:cond_3b7
:try_start_3b7
move-object/from16 v0, p0
iget v2, v0, Lcom/twidroid/net/c/k;->f:I
add-int/lit8 v2, v2, 0x64
move-object/from16 v0, p0
iput v2, v0, Lcom/twidroid/net/c/k;->f:I
:try_end_3c1
.catchall {:try_start_3b7 .. :try_end_3c1} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_3b7 .. :try_end_3c1} :catch_3d8
add-int/lit8 v5, v11, 0x1
add-int/lit8 v2, v11, 0x64
:try_start_3c5
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v6
if-lt v2, v6, :cond_3d1
invoke-interface {v3}, Ljava/util/List;->size()I
:try_end_3ce
.catchall {:try_start_3c5 .. :try_end_3ce} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_3c5 .. :try_end_3ce} :catch_3f9
move-result v2
add-int/lit8 v2, v2, -0x1
:goto_3d1
:cond_3d1
add-int/lit8 v6, v13, 0x1
move v13, v6
move v11, v2
move v12, v5
goto/16 :goto_2ff
:catch_3d8
move-exception v2
move-object v6, v2
move v5, v12
move v2, v11
:goto_3dc
:try_start_3dc
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
:try_end_3df
.catchall {:try_start_3dc .. :try_end_3df} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_3dc .. :try_end_3df} :catch_25c
goto :goto_3d1
:catchall_3e0
move-exception v2
:try_start_3e1
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v3
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:goto_3e8
:try_start_3e8
:try_end_3e8
.catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_3e8} :catch_3f4
throw v2
:try_end_3e9
.catch Ljava/lang/Exception; {:try_start_3e8 .. :try_end_3e9} :catch_b5
:catch_3e9
move-exception v2
:try_start_3ea
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
:try_end_3ed
.catchall {:try_start_3ea .. :try_end_3ed} :catchall_3e0
.catch Ljava/lang/Exception; {:try_start_3ea .. :try_end_3ed} :catch_25c
goto :goto_382
:catch_3ee
move-exception v2
:try_start_3ef
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_267
:catch_3f4
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
:try_end_3f8
.catch Ljava/lang/Exception; {:try_start_3ef .. :try_end_3f8} :catch_b5
goto :goto_3e8
:catch_3f9
move-exception v6
goto :goto_3dc
:cond_3fb
move-object v7, v2
goto/16 :goto_15b
.end method
.method private a(Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/User;Z)V
.registers 8
iget-object v0, p0, Lcom/twidroid/net/c/k;->i:Ljava/util/HashSet;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/twidroid/net/c/k;->i:Ljava/util/HashSet;
invoke-virtual {p3}, Lcom/twidroid/model/twitter/User;->e()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
const/4 v0, 0x1
:goto_15
invoke-virtual {p2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-virtual {p1, p3, v1, p4, v0}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/User;IZZ)Z
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_15
.end method
.method static synthetic a(Lcom/twidroid/net/c/k;[Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
return-void
.end method
.method private a(Ljava/lang/Exception;)V
.registers 2
return-void
.end method
.method private a(Ljava/util/List;Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/c/l;I)Z
.registers 10
const/4 v1, 0x1
invoke-virtual {p2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
const-wide/16 v2, -0x1
invoke-virtual {v0, p1, v2, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/util/List;J)Ljava/util/List;
move-result-object v0
invoke-virtual {p2}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
invoke-virtual {p0}, Lcom/twidroid/net/c/k;->h()Z
move-result v3
if-eqz v3, :cond_31
invoke-virtual {p2}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
const/4 v0, 0x0
:goto_30
return v0
:cond_31
invoke-direct {p0, p2, p3, v0, v1}, Lcom/twidroid/net/c/k;->a(Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/User;Z)V
invoke-virtual {p2}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z
goto :goto_16
:cond_3c
invoke-virtual {p2}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {p2}, Lcom/twidroid/b/a/b;->p()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
iget v0, p0, Lcom/twidroid/net/c/k;->f:I
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
if-ge v0, v2, :cond_5f
iget v0, p0, Lcom/twidroid/net/c/k;->f:I
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
div-int/2addr v0, v2
div-int/lit8 v2, p5, 0x3
mul-int/2addr v0, v2
invoke-virtual {p4, v0}, Lcom/twidroid/net/c/l;->a(I)V
:cond_5f
move v0, v1
goto :goto_30
.end method
.method static synthetic b(Lcom/twidroid/net/c/k;[Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/net/c/a/b;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/k;->a([Lcom/twidroid/net/c/a/b;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Lcom/twidroid/net/c/a/b;)Ljava/lang/String;
.registers 10
const/4 v3, 0x1
const/4 v7, 0x0
const/4 v2, 0x0
const-string v0, "UpdateFollowersTask"
const-string v1, "Start UpdateFriendsTask"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "UpdateFollowersTask"
const-string v1, "Sync TWITTERGETURL started"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-boolean v0, Lcom/twidroid/net/c/k;->g:Z
if-eqz v0, :cond_1d
const-string v0, "UpdateFollowersTask"
const-string v1, "Sync TWITTERGETURL Friends Task Cancelled, because it is already running"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_1c
:cond_1c
return-object v7
:cond_1d
sput-boolean v3, Lcom/twidroid/net/c/k;->g:Z
if-eqz p1, :cond_1c
array-length v0, p1
if-eqz v0, :cond_1c
aget-object v1, p1, v2
iget-object v0, v1, Lcom/twidroid/net/c/a/b;->b:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v2
if-eqz v2, :cond_1c
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
if-eqz v3, :cond_1c
iget-boolean v0, v1, Lcom/twidroid/net/c/a/b;->c:Z
if-eqz v0, :cond_5b
iget-object v0, v1, Lcom/twidroid/net/c/a/b;->a:Lcom/twidroid/model/twitter/c;
if-nez v0, :cond_85
monitor-enter v2
:try_start_41
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_45
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
iget-object v5, v1, Lcom/twidroid/net/c/a/b;->b:Lcom/twidroid/UberSocialApplication;
invoke-direct {p0, v5, v0}, Lcom/twidroid/net/c/k;->a(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;)V
goto :goto_45
:catchall_57
move-exception v0
monitor-exit v2
:try_end_59
.catchall {:try_start_41 .. :try_end_59} :catchall_57
throw v0
:cond_5a
:try_start_5a
monitor-exit v2
:goto_5b
:try_end_5b
.catchall {:try_start_5a .. :try_end_5b} :catchall_57
:cond_5b
monitor-enter v2
const/4 v0, 0x1
:try_start_5d
new-array v0, v0, [Ljava/lang/Integer;
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v0, v4
invoke-virtual {p0, v0}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_6e
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
iget-object v5, v1, Lcom/twidroid/net/c/a/b;->b:Lcom/twidroid/UberSocialApplication;
iget-boolean v6, v1, Lcom/twidroid/net/c/a/b;->d:Z
invoke-direct {p0, v5, v0, v3, v6}, Lcom/twidroid/net/c/k;->a(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;IZ)V
goto :goto_6e
:catchall_82
move-exception v0
monitor-exit v2
:try_end_84
.catchall {:try_start_5d .. :try_end_84} :catchall_82
throw v0
:cond_85
iget-object v4, v1, Lcom/twidroid/net/c/a/b;->b:Lcom/twidroid/UberSocialApplication;
invoke-direct {p0, v4, v0}, Lcom/twidroid/net/c/k;->a(Lcom/twidroid/UberSocialApplication;Lcom/twidroid/model/twitter/c;)V
goto :goto_5b
:cond_8b
const/4 v0, 0x1
:try_start_8c
new-array v0, v0, [Ljava/lang/Integer;
const/4 v1, 0x0
const/16 v3, 0x64
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v0, v1
invoke-virtual {p0, v0}, Lcom/twidroid/net/c/k;->e([Ljava/lang/Object;)V
monitor-exit v2
:try_end_9b
.catchall {:try_start_8c .. :try_end_9b} :catchall_82
goto :goto_1c
.end method
.method protected a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
const v1, 0x7f0c0325
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Lcom/twidroid/net/c/a/f;->a(ILjava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->d(I)V
:cond_13
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/k;->a(Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->o()V
:cond_9
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/net/c/k;->g:Z
return-void
.end method
.method protected varargs a([Ljava/lang/Integer;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
const/4 v1, 0x0
aget-object v1, p1, v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->d(I)V
:cond_10
return-void
.end method
.method protected synthetic a_([Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/twidroid/net/c/k;->a([Ljava/lang/Integer;)V
return-void
.end method
.method protected b()V
.registers 2
iget-object v0, p0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/twidroid/net/c/k;->h:Lcom/twidroid/net/c/a/f;
invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->o()V
:cond_9
return-void
.end method