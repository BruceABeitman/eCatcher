.class public final Lcom/spotify/mobile/android/service/ao;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Lcom/spotify/mobile/android/util/cz;
.field static final b:Lcom/spotify/mobile/android/util/cz;
.field static final c:Lcom/spotify/mobile/android/util/cz;
.field static final d:Lcom/spotify/mobile/android/util/cz;
.field private final e:Landroid/content/Context;
.field private f:Ljava/lang/String;
.field private g:Z
.field private h:Z
.field private i:Ljava/lang/String;
.field private final j:Lcom/spotify/mobile/android/util/cx;
.field private final k:Lcom/spotify/mobile/android/service/ap;
.field private l:Ljava/util/List;
.field private m:Lcom/spotify/mobile/android/b/b;
.method static constructor <clinit>()V
.registers 1
const-string v0, "cache_location_v4"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "cache_location"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/service/ao;->b:Lcom/spotify/mobile/android/util/cz;
const-string v0, "settings_location"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/service/ao;->c:Lcom/spotify/mobile/android/util/cz;
const-string v0, "storage_location"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/service/ao;->d:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
new-instance v0, Lcom/spotify/mobile/android/service/ap;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/service/ap;-><init>(Landroid/content/Context;)V
invoke-static {p1}, Lcom/spotify/mobile/android/util/cx;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/b/b;
invoke-direct {v2}, Lcom/spotify/mobile/android/b/b;-><init>()V
invoke-direct {p0, p1, v0, v1, v2}, Lcom/spotify/mobile/android/service/ao;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/ap;Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/b/b;)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/ap;Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/b/b;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/ao;->l:Ljava/util/List;
iput-object p1, p0, Lcom/spotify/mobile/android/service/ao;->e:Landroid/content/Context;
iput-object p3, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
iput-object p2, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
iput-object p4, p0, Lcom/spotify/mobile/android/service/ao;->m:Lcom/spotify/mobile/android/b/b;
return-void
.end method
.method private a(Landroid/content/Context;)Ljava/lang/String;
.registers 16
const/4 v7, 0x2
const/4 v2, 0x0
const/4 v3, 0x1
const/4 v4, 0x0
:cond_4
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-static {}, Lcom/spotify/mobile/android/service/ap;->e()Z
move-result v5
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->g()Z
move-result v0
if-eqz v0, :cond_ee
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->b(Lcom/spotify/mobile/android/util/cz;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_ee
iget-object v1, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/ap;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ee
move v0, v3
:goto_27
if-eqz v0, :cond_f1
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->b(Lcom/spotify/mobile/android/util/cz;)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ap;->a()Ljava/lang/String;
move-result-object v0
iget-object v6, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v6}, Lcom/spotify/mobile/android/service/ap;->d()Ljava/lang/String;
move-result-object v6
invoke-static {v1, v0, v6}, Lcom/spotify/mobile/android/service/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_56
iget-object v1, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v6, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v6, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cy;->b()V
:goto_56
:cond_56
iget-object v1, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-static {}, Lcom/spotify/mobile/android/service/ap;->e()Z
move-result v1
if-ne v5, v1, :cond_4
if-nez v0, :cond_2c4
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->h:Z
if-eqz v0, :cond_67
invoke-static {p1}, Lcom/spotify/mobile/android/service/ao;->b(Landroid/content/Context;)V
:cond_67
const-string v0, "No cache location set"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->m:Lcom/spotify/mobile/android/b/b;
invoke-static {}, Lcom/spotify/mobile/android/b/b;->a()Ljava/util/Set;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "Choosing cache volume between %d candidate(s): "
new-array v5, v3, [Ljava/lang/Object;
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v4
invoke-static {v0, v5}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_8e
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25f
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_9a
new-instance v6, Lcom/spotify/mobile/android/util/db;
invoke-direct {v6, v0}, Lcom/spotify/mobile/android/util/db;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Lcom/spotify/mobile/android/util/db;->d()J
move-result-wide v7
invoke-virtual {v6}, Lcom/spotify/mobile/android/util/db;->c()J
move-result-wide v9
invoke-virtual {v6}, Lcom/spotify/mobile/android/util/db;->a()J
move-result-wide v11
mul-long/2addr v9, v11
const-string v6, "%s %d %d;"
const/4 v11, 0x3
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
aput-object v0, v11, v12
const/4 v12, 0x1
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x2
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
aput-object v13, v11, v12
invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v6, "%s (%d/%d bytes free/total)"
const/4 v11, 0x3
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
aput-object v0, v11, v12
const/4 v12, 0x1
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v11, v12
const/4 v7, 0x2
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
aput-object v8, v11, v7
invoke-static {v6, v11}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_e2
.catch Ljava/io/IOException; {:try_start_9a .. :try_end_e2} :catch_e3
goto :goto_8e
:catch_e3
move-exception v6
const-string v6, "cannot stat %s"
new-array v7, v3, [Ljava/lang/Object;
aput-object v0, v7, v4
invoke-static {v6, v7}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_8e
:cond_ee
move v0, v4
goto/16 :goto_27
:cond_f1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->g()Z
move-result v0
if-eqz v0, :cond_101
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->b(Lcom/spotify/mobile/android/util/cz;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_56
:cond_101
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_14f
move v0, v4
:goto_10c
if-eqz v0, :cond_171
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->b(Lcom/spotify/mobile/android/util/cz;)Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ap;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_159
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ap;->c()Ljava/lang/String;
move-result-object v0
iget-object v6, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v6}, Lcom/spotify/mobile/android/service/ap;->d()Ljava/lang/String;
move-result-object v6
invoke-static {v1, v0, v6}, Lcom/spotify/mobile/android/service/ao;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_16e
iget-object v1, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v6, Lcom/spotify/mobile/android/service/ao;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v6, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v6, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v6, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cy;->b()V
goto/16 :goto_56
:cond_14f
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v0
goto :goto_10c
:cond_159
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v6, Lcom/spotify/mobile/android/service/ao;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v6, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v6, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v6, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
:cond_16e
move-object v0, v1
goto/16 :goto_56
:cond_171
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_188
move v0, v4
:goto_17c
if-eqz v0, :cond_1bf
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->b(Lcom/spotify/mobile/android/util/cz;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_56
:cond_188
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_1bd
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
move-result v0
if-eqz v0, :cond_1bb
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v6, Lcom/spotify/mobile/android/service/ao;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v6, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v0
const-string v1, "Deleted temporary cache dir: %b"
new-array v6, v3, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
aput-object v0, v6, v4
invoke-static {v1, v6}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
move v0, v4
goto :goto_17c
:cond_1bb
move v0, v3
goto :goto_17c
:cond_1bd
move v0, v3
goto :goto_17c
:cond_1bf
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->l:Ljava/util/List;
if-nez v0, :cond_1e2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->m:Lcom/spotify/mobile/android/b/b;
invoke-static {}, Lcom/spotify/mobile/android/b/b;->a()Ljava/util/Set;
move-result-object v0
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iget-object v6, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v6}, Lcom/spotify/mobile/android/service/ap;->d()Ljava/lang/String;
move-result-object v6
invoke-static {v0, v6, v1}, Lcom/spotify/mobile/android/service/ao;->a(Ljava/util/Set;Ljava/lang/String;Ljava/util/List;)V
iget-object v6, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v6}, Lcom/spotify/mobile/android/service/ap;->c()Ljava/lang/String;
move-result-object v6
invoke-static {v0, v6, v1}, Lcom/spotify/mobile/android/service/ao;->a(Ljava/util/Set;Ljava/lang/String;Ljava/util/List;)V
iput-object v1, p0, Lcom/spotify/mobile/android/service/ao;->l:Ljava/util/List;
:cond_1e2
const-string v0, "Found %d volume(s) containing a pre-existing cache"
new-array v1, v3, [Ljava/lang/Object;
iget-object v6, p0, Lcom/spotify/mobile/android/service/ao;->l:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v1, v4
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->l:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_21b
move v0, v3
:goto_1fe
if-eqz v0, :cond_21d
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->l:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/File;
const-string v1, "Using orphan cache stored on %s"
new-array v6, v3, [Ljava/lang/Object;
aput-object v0, v6, v4
invoke-static {v1, v6}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {v0}, Lcom/spotify/mobile/android/service/ao;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_56
:cond_21b
move v0, v4
goto :goto_1fe
:cond_21d
new-instance v0, Ljava/io/File;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->h()Ljava/lang/String;
move-result-object v1
iget-object v6, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v6}, Lcom/spotify/mobile/android/service/ap;->a()Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_239
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->i()Z
move-result v1
if-nez v1, :cond_239
move v0, v3
:cond_239
if-eqz v0, :cond_250
new-instance v0, Ljava/io/File;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->h()Ljava/lang/String;
move-result-object v1
iget-object v6, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v6}, Lcom/spotify/mobile/android/service/ap;->a()Ljava/lang/String;
move-result-object v6
invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
goto/16 :goto_56
:cond_250
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->f()Z
move-result v0
if-eqz v0, :cond_25c
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
const-string v0, "/sdcard/spotify2/"
goto/16 :goto_56
:cond_25c
move-object v0, v2
goto/16 :goto_56
:cond_25f
invoke-static {v1}, Lcom/spotify/mobile/android/b/a;->a(Ljava/util/Set;)Ljava/lang/String;
move-result-object v0
const-string v1, "Chose cache volume: %s"
new-array v5, v3, [Ljava/lang/Object;
aput-object v0, v5, v4
invoke-static {v1, v5}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
if-nez v0, :cond_27f
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
const-string v1, "Falling back to volume: %s"
new-array v3, v3, [Ljava/lang/Object;
aput-object v0, v3, v4
invoke-static {v1, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_27f
new-instance v1, Ljava/io/File;
iget-object v3, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v3}, Lcom/spotify/mobile/android/service/ap;->d()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v1}, Lcom/spotify/mobile/android/service/ao;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v1
new-instance v3, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->L:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
const-string v4, "cache-volume"
invoke-virtual {v3, v4, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v0, "candidate-volumes"
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v0, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->Q:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
move-object v0, v1
:cond_2b0
:goto_2b0
if-eqz v0, :cond_2c3
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_2c3
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-nez v1, :cond_32a
:goto_2c3
:cond_2c3
return-object v0
:cond_2c4
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_2d5
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v2
if-nez v2, :cond_2e8
:cond_2d5
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
move-result v2
const-string v5, "Recreating cache directory %s, success: %b"
new-array v6, v7, [Ljava/lang/Object;
aput-object v1, v6, v4
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v6, v3
invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_2e8
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_2b0
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_2b0
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v1
const-wide v3, 0x3f50624dd2f1a9fcL
cmpg-double v1, v1, v3
if-gez v1, :cond_2b0
const-string v1, "/sdcard/spotify2"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_311
const-string v1, "/cache"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2b0
:cond_311
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Using legacy path "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " (throttled 1/1000)"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_2b0
:cond_32a
iget-object v1, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cy;->b()V
goto :goto_2c3
.end method
.method private static a(Ljava/io/File;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_e
invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
goto :goto_d
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
sub-int/2addr v2, v3
invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/io/File;
invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_30
const/4 v0, 0x1
:goto_23
if-eqz v0, :cond_2f
invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v0
if-eqz v0, :cond_35
invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object p0
:goto_2f
:cond_2f
return-object p0
:cond_30
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v0
goto :goto_23
:cond_35
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Could not move cache location from "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " to "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_2f
.end method
.method private static a(Ljava/util/Set;Ljava/lang/String;Ljava/util/List;)V
.registers 6
if-eqz p0, :cond_21
invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v2, Ljava/io/File;
invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_6
invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_6
:cond_21
return-void
.end method
.method private static b(Landroid/content/Context;)V
.registers 8
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;
move-result-object v2
array-length v3, v2
move v0, v1
:goto_7
if-ge v0, v3, :cond_1e
aget-object v4, v2, v0
if-eqz v4, :cond_1b
const-string v5, "Cache dir=%s"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
aput-object v4, v6, v1
invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1e
return-void
.end method
.method private f()Z
.registers 3
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
const-string v1, "/sdcard/spotify2/"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v0
return v0
.end method
.method private g()Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z
move-result v0
return v0
.end method
.method private h()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->d:Lcom/spotify/mobile/android/util/cz;
iget-object v2, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private i()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-static {}, Lcom/spotify/mobile/android/service/ap;->e()Z
move-result v0
return v0
.end method
.method public final a()Ljava/lang/String;
.registers 6
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ao;->g:Z
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->e:Landroid/content/Context;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/ao;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/ao;->f:Ljava/lang/String;
const-string v0, "Using cache location %s"
new-array v1, v4, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/service/ao;->f:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iput-boolean v4, p0, Lcom/spotify/mobile/android/service/ao;->g:Z
:cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->f:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 8
const/4 v5, 0x0
const/4 v3, 0x1
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ao;->h:Z
if-nez v0, :cond_62
:cond_6
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-static {}, Lcom/spotify/mobile/android/service/ap;->e()Z
move-result v1
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v2, Lcom/spotify/mobile/android/service/ao;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z
move-result v0
if-eqz v0, :cond_65
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v2, Lcom/spotify/mobile/android/service/ao;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/cx;->b(Lcom/spotify/mobile/android/util/cz;)Ljava/lang/String;
move-result-object v0
:goto_1e
iget-object v2, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-static {}, Lcom/spotify/mobile/android/service/ap;->e()Z
move-result v2
if-ne v1, v2, :cond_6
const-string v1, ""
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a7
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/spotify/mobile/android/service/ao;->e:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
const-string v2, "settings"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
:goto_41
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v2
if-eqz v2, :cond_b0
move v2, v3
:goto_48
if-nez v2, :cond_b5
const-string v2, "Failed to create settings directory, possibly because of full file system: %s"
new-array v4, v3, [Ljava/lang/Object;
aput-object v0, v4, v5
invoke-static {v2, v4}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_53
:cond_53
iput-object v1, p0, Lcom/spotify/mobile/android/service/ao;->i:Ljava/lang/String;
const-string v0, "Using settings location %s"
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/spotify/mobile/android/service/ao;->i:Ljava/lang/String;
aput-object v2, v1, v5
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iput-boolean v3, p0, Lcom/spotify/mobile/android/service/ao;->h:Z
:cond_62
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->i:Ljava/lang/String;
return-object v0
:cond_65
new-instance v0, Ljava/io/File;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->h()Ljava/lang/String;
move-result-object v2
iget-object v4, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v4}, Lcom/spotify/mobile/android/service/ap;->b()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_81
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->i()Z
move-result v2
if-nez v2, :cond_81
move v0, v3
:cond_81
if-eqz v0, :cond_97
new-instance v0, Ljava/io/File;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->h()Ljava/lang/String;
move-result-object v2
iget-object v4, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
invoke-virtual {v4}, Lcom/spotify/mobile/android/service/ap;->b()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
goto :goto_1e
:cond_97
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ao;->f()Z
move-result v0
if-eqz v0, :cond_a3
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->k:Lcom/spotify/mobile/android/service/ap;
const-string v0, "/sdcard/spotify2/"
goto/16 :goto_1e
:cond_a3
const-string v0, ""
goto/16 :goto_1e
:cond_a7
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto :goto_41
:cond_b0
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v2
goto :goto_48
:cond_b5
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v2, Lcom/spotify/mobile/android/service/ao;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z
move-result v0
if-nez v0, :cond_53
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/service/ao;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v2, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
goto :goto_53
.end method
.method public final c()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/ao;->c:Lcom/spotify/mobile/android/util/cz;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final e()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/ao;->j:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/ao;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/ao;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/ao;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/ao;->d:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
return-void
.end method