.class public final Lcom/google/android/gms/internal/ag;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/internal/cd;
.field private final b:Lcom/google/android/gms/internal/as;
.field private final c:Landroid/content/Context;
.field private final d:Ljava/lang/Object;
.field private final e:Lcom/google/android/gms/internal/ai;
.field private f:Z
.field private g:Lcom/google/android/gms/internal/an;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/ai;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ag;->d:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/ag;->f:Z
iput-object p1, p0, Lcom/google/android/gms/internal/ag;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/cd;
iput-object p3, p0, Lcom/google/android/gms/internal/ag;->b:Lcom/google/android/gms/internal/as;
iput-object p4, p0, Lcom/google/android/gms/internal/ag;->e:Lcom/google/android/gms/internal/ai;
return-void
.end method
.method public a(JJ)Lcom/google/android/gms/internal/ao;
.registers 21
const-string v4, "Starting mediation."
invoke-static {v4}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/android/gms/internal/ag;->e:Lcom/google/android/gms/internal/ai;
iget-object v4, v4, Lcom/google/android/gms/internal/ai;->a:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v13
:cond_f
invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_aa
invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/google/android/gms/internal/ah;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Trying mediation network: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, v9, Lcom/google/android/gms/internal/ah;->b:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/google/android/gms/internal/ea;->c(Ljava/lang/String;)V
iget-object v4, v9, Lcom/google/android/gms/internal/ah;->c:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v14
:cond_39
:goto_39
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_f
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/google/android/gms/internal/ag;->d:Ljava/lang/Object;
monitor-enter v15
:try_start_4a
move-object/from16 v0, p0
iget-boolean v4, v0, Lcom/google/android/gms/internal/ag;->f:Z
if-eqz v4, :cond_58
new-instance v4, Lcom/google/android/gms/internal/ao;
const/4 v5, -0x1
invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ao;-><init>(I)V
monitor-exit v15
:goto_57
return-object v4
:cond_58
new-instance v4, Lcom/google/android/gms/internal/an;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/google/android/gms/internal/ag;->c:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v7, v0, Lcom/google/android/gms/internal/ag;->b:Lcom/google/android/gms/internal/as;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/google/android/gms/internal/ag;->e:Lcom/google/android/gms/internal/ai;
move-object/from16 v0, p0
iget-object v10, v0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/cd;
iget-object v10, v10, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;
move-object/from16 v0, p0
iget-object v11, v0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/cd;
iget-object v11, v11, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;
move-object/from16 v0, p0
iget-object v12, v0, Lcom/google/android/gms/internal/ag;->a:Lcom/google/android/gms/internal/cd;
iget-object v12, v12, Lcom/google/android/gms/internal/cd;->k:Lcom/google/android/gms/internal/db;
invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/an;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/db;)V
move-object/from16 v0, p0
iput-object v4, v0, Lcom/google/android/gms/internal/ag;->g:Lcom/google/android/gms/internal/an;
monitor-exit v15
:try_end_80
.catchall {:try_start_4a .. :try_end_80} :catchall_96
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/android/gms/internal/ag;->g:Lcom/google/android/gms/internal/an;
move-wide/from16 v0, p1
move-wide/from16 v2, p3
invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/an;->a(JJ)Lcom/google/android/gms/internal/ao;
move-result-object v4
iget v5, v4, Lcom/google/android/gms/internal/ao;->a:I
if-nez v5, :cond_99
const-string v5, "Adapter succeeded."
invoke-static {v5}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V
goto :goto_57
:catchall_96
move-exception v4
:try_start_97
monitor-exit v15
:try_end_98
.catchall {:try_start_97 .. :try_end_98} :catchall_96
throw v4
:cond_99
iget-object v5, v4, Lcom/google/android/gms/internal/ao;->c:Lcom/google/android/gms/internal/av;
if-eqz v5, :cond_39
sget-object v5, Lcom/google/android/gms/internal/dx;->a:Landroid/os/Handler;
new-instance v6, Lcom/google/android/gms/internal/ag$1;
move-object/from16 v0, p0
invoke-direct {v6, v0, v4}, Lcom/google/android/gms/internal/ag$1;-><init>(Lcom/google/android/gms/internal/ag;Lcom/google/android/gms/internal/ao;)V
invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_39
:cond_aa
new-instance v4, Lcom/google/android/gms/internal/ao;
const/4 v5, 0x1
invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ao;-><init>(I)V
goto :goto_57
.end method
.method public a()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/ag;->d:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x1
:try_start_4
iput-boolean v0, p0, Lcom/google/android/gms/internal/ag;->f:Z
iget-object v0, p0, Lcom/google/android/gms/internal/ag;->g:Lcom/google/android/gms/internal/an;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/ag;->g:Lcom/google/android/gms/internal/an;
invoke-virtual {v0}, Lcom/google/android/gms/internal/an;->a()V
:cond_f
monitor-exit v1
return-void
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_4 .. :try_end_13} :catchall_11
throw v0
.end method