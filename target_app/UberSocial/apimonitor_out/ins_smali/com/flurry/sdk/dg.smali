.class public Lcom/flurry/sdk/dg;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/flurry/sdk/dj$b;
.implements Lcom/flurry/sdk/dn$a;
.field static a:I
.field static b:I
.field static c:I
.field static d:I
.field static e:I
.field static f:I
.field private static final g:Ljava/lang/String;
.field private A:Ljava/lang/String;
.field private B:Ljava/lang/String;
.field private C:B
.field private D:Landroid/location/Location;
.field private E:Z
.field private F:Ljava/lang/String;
.field private G:B
.field private H:J
.field private I:J
.field private final J:Ljava/util/Map;
.field private final K:Ljava/util/List;
.field private L:Z
.field private M:I
.field private final N:Ljava/util/List;
.field private O:I
.field private P:I
.field private final Q:Lcom/flurry/sdk/cv;
.field private R:Ljava/util/Map;
.field private S:Lcom/flurry/sdk/dj;
.field private T:I
.field private U:Z
.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/ref/WeakReference;
.field private n:Ljava/io/File;
.field private o:Ljava/util/List;
.field private final p:Ljava/util/Map;
.field private q:Z
.field private r:J
.field private s:Ljava/util/List;
.field private t:Lcom/google/android/gms/ads/a/b;
.field private u:[B
.field private v:Ljava/lang/String;
.field private w:J
.field private x:J
.field private y:J
.field private z:J
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/dg;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const/16 v0, 0x64
sput v0, Lcom/flurry/sdk/dg;->a:I
const/16 v0, 0xa
sput v0, Lcom/flurry/sdk/dg;->b:I
const/16 v0, 0x3e8
sput v0, Lcom/flurry/sdk/dg;->c:I
const v0, 0x27100
sput v0, Lcom/flurry/sdk/dg;->d:I
const/16 v0, 0x32
sput v0, Lcom/flurry/sdk/dg;->e:I
const/16 v0, 0x14
sput v0, Lcom/flurry/sdk/dg;->f:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
iput-object v0, p0, Lcom/flurry/sdk/dg;->h:Ljava/util/concurrent/atomic/AtomicInteger;
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
iput-object v0, p0, Lcom/flurry/sdk/dg;->i:Ljava/util/concurrent/atomic/AtomicInteger;
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
iput-object v0, p0, Lcom/flurry/sdk/dg;->j:Ljava/util/concurrent/atomic/AtomicInteger;
iput-object v3, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/dg;->p:Ljava/util/Map;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
const-string v0, ""
iput-object v0, p0, Lcom/flurry/sdk/dg;->A:Ljava/lang/String;
const-string v0, ""
iput-object v0, p0, Lcom/flurry/sdk/dg;->B:Ljava/lang/String;
const/4 v0, -0x1
iput-byte v0, p0, Lcom/flurry/sdk/dg;->C:B
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;
new-instance v0, Lcom/flurry/sdk/cv;
invoke-direct {v0}, Lcom/flurry/sdk/cv;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/dg;->Q:Lcom/flurry/sdk/cv;
iput-boolean v1, p0, Lcom/flurry/sdk/dg;->U:Z
const/4 v0, 0x4
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v2, "Creating new Flurry session"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/flurry/sdk/dg;->m:Ljava/lang/ref/WeakReference;
return-void
.end method
.method private A()V
.registers 18
const/4 v1, 0x3
:try_start_1
sget-object v2, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v3, "generating agent report"
invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/flurry/sdk/cz;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/flurry/sdk/dg;->l:Ljava/lang/String;
move-object/from16 v0, p0
iget-boolean v4, v0, Lcom/flurry/sdk/dg;->q:Z
invoke-virtual/range {p0 .. p0}, Lcom/flurry/sdk/dg;->o()Z
move-result v5
move-object/from16 v0, p0
iget-wide v6, v0, Lcom/flurry/sdk/dg;->r:J
move-object/from16 v0, p0
iget-wide v8, v0, Lcom/flurry/sdk/dg;->w:J
move-object/from16 v0, p0
iget-object v10, v0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
invoke-virtual/range {p0 .. p0}, Lcom/flurry/sdk/dg;->p()Ljava/util/Map;
move-result-object v11
move-object/from16 v0, p0
iget-object v12, v0, Lcom/flurry/sdk/dg;->Q:Lcom/flurry/sdk/cv;
const/4 v13, 0x0
invoke-virtual {v12, v13}, Lcom/flurry/sdk/cv;->a(Z)Ljava/util/Map;
move-result-object v12
invoke-virtual/range {p0 .. p0}, Lcom/flurry/sdk/dg;->a()Ljava/util/Map;
move-result-object v13
invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;
move-result-object v14
invoke-virtual {v14}, Lcom/flurry/sdk/cu;->b()Ljava/util/HashMap;
move-result-object v14
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v15
invoke-direct/range {v1 .. v16}, Lcom/flurry/sdk/cz;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V
new-instance v2, Ljava/util/ArrayList;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/flurry/sdk/dg;->o:Ljava/util/List;
if-eqz v1, :cond_ae
invoke-virtual {v1}, Lcom/flurry/sdk/cz;->a()[B
move-result-object v2
if-eqz v2, :cond_ae
const/4 v2, 0x3
sget-object v3, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "generated report of size "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Lcom/flurry/sdk/cz;->a()[B
move-result-object v5
array-length v5, v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " with "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " reports."
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v3, v4}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/flurry/sdk/cz;->a()[B
move-result-object v1
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/flurry/sdk/dg;->a([B)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/flurry/sdk/dg;->o:Ljava/util/List;
invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
const/4 v1, 0x0
move-object/from16 v0, p0
iput-object v1, v0, Lcom/flurry/sdk/dg;->o:Ljava/util/List;
invoke-direct/range {p0 .. p0}, Lcom/flurry/sdk/dg;->B()V
:goto_ad
return-void
:cond_ae
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v2, "Error generating report"
invoke-static {v1, v2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_b5
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b5} :catch_b6
goto :goto_ad
:catch_b6
move-exception v1
const/4 v2, 0x6
sget-object v3, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v4, ""
invoke-static {v2, v3, v4, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_ad
.end method
.method private declared-synchronized B()V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;
invoke-static {v0}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_12
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v1, "Error persisting report: could not create directory"
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_10
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_45
monitor-exit p0
return-void
:cond_12
:try_start_12
new-instance v0, Ljava/io/FileOutputStream;
iget-object v1, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
new-instance v1, Ljava/io/DataOutputStream;
invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
new-instance v0, Lcom/flurry/sdk/dh;
invoke-direct {v0}, Lcom/flurry/sdk/dh;-><init>()V
iget-boolean v2, p0, Lcom/flurry/sdk/dg;->q:Z
invoke-virtual {v0, v2}, Lcom/flurry/sdk/dh;->a(Z)V
iget-wide v2, p0, Lcom/flurry/sdk/dg;->r:J
invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/dh;->a(J)V
iget-object v2, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
invoke-virtual {v0, v2}, Lcom/flurry/sdk/dh;->a(Ljava/util/List;)V
iget-object v2, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->i()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dh;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
:try_end_3b
.catchall {:try_start_12 .. :try_end_3b} :catchall_45
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3b} :catch_3c
goto :goto_10
:catch_3c
move-exception v0
:try_start_3d
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v2, "Error saving persistent data"
invoke-static {v1, v2, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_44
.catchall {:try_start_3d .. :try_end_44} :catchall_45
goto :goto_10
:catchall_45
move-exception v0
monitor-exit p0
throw v0
.end method
.method private declared-synchronized C()V
.registers 8
const/4 v2, 0x0
const/4 v4, 0x0
monitor-enter p0
const/4 v0, 0x4
:try_start_4
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Loading persistent data: "
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v5, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;
invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
:try_end_27
.catchall {:try_start_4 .. :try_end_27} :catchall_8e
move-result v0
if-eqz v0, :cond_91
:try_start_2a
new-instance v3, Ljava/io/FileInputStream;
iget-object v0, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;
invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_31
:try_end_31
.catchall {:try_start_2a .. :try_end_31} :catchall_84
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_73
new-instance v1, Ljava/io/DataInputStream;
invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_36
:try_end_36
.catchall {:try_start_31 .. :try_end_36} :catchall_9b
.catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_a3
new-instance v0, Lcom/flurry/sdk/dh;
invoke-direct {v0}, Lcom/flurry/sdk/dh;-><init>()V
iget-object v2, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dh;->a(Ljava/io/DataInputStream;Ljava/lang/String;)Z
invoke-virtual {v0}, Lcom/flurry/sdk/dh;->a()Z
move-result v2
iput-boolean v2, p0, Lcom/flurry/sdk/dg;->q:Z
invoke-virtual {v0}, Lcom/flurry/sdk/dh;->c()J
move-result-wide v5
iput-wide v5, p0, Lcom/flurry/sdk/dg;->r:J
invoke-virtual {v0}, Lcom/flurry/sdk/dh;->b()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
:try_end_52
.catchall {:try_start_36 .. :try_end_52} :catchall_9e
.catch Ljava/lang/Exception; {:try_start_36 .. :try_end_52} :catch_a7
const/4 v0, 0x1
:try_start_53
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
:goto_59
if-nez v0, :cond_68
const/4 v1, 0x3
sget-object v2, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v3, "Deleting agent cache file"
invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_68
:goto_68
if-nez v0, :cond_71
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/flurry/sdk/dg;->q:Z
iget-wide v0, p0, Lcom/flurry/sdk/dg;->w:J
iput-wide v0, p0, Lcom/flurry/sdk/dg;->r:J
:cond_71
:try_end_71
.catchall {:try_start_53 .. :try_end_71} :catchall_8e
monitor-exit p0
return-void
:catch_73
move-exception v0
move-object v1, v2
:goto_75
:try_start_75
sget-object v3, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v5, "Error loading persistent data"
invoke-static {v3, v5, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_7c
.catchall {:try_start_75 .. :try_end_7c} :catchall_a0
:try_start_7c
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
move v0, v4
goto :goto_59
:catchall_84
move-exception v0
move-object v1, v2
move-object v3, v2
:goto_87
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
:try_end_8e
.catchall {:try_start_7c .. :try_end_8e} :catchall_8e
:catchall_8e
move-exception v0
monitor-exit p0
throw v0
:cond_91
const/4 v0, 0x4
:try_start_92
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v2, "Agent cache file doesn\'t exist."
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:try_end_99
.catchall {:try_start_92 .. :try_end_99} :catchall_8e
move v0, v4
goto :goto_68
:catchall_9b
move-exception v0
move-object v1, v2
goto :goto_87
:catchall_9e
move-exception v0
goto :goto_87
:catchall_a0
move-exception v0
move-object v3, v2
goto :goto_87
:catch_a3
move-exception v0
move-object v1, v2
move-object v2, v3
goto :goto_75
:catch_a7
move-exception v0
move-object v2, v3
goto :goto_75
.end method
.method private D()V
.registers 2
iget v0, p0, Lcom/flurry/sdk/dg;->T:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/flurry/sdk/dg;->T:I
return-void
.end method
.method private E()V
.registers 2
iget v0, p0, Lcom/flurry/sdk/dg;->T:I
if-lez v0, :cond_a
iget v0, p0, Lcom/flurry/sdk/dg;->T:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/flurry/sdk/dg;->T:I
:cond_a
return-void
.end method
.method private F()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, ".flurryagent."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
const/16 v2, 0x10
invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private G()I
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->h:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
move-result v0
return v0
.end method
.method private H()I
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->i:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
move-result v0
return v0
.end method
.method static synthetic a(Lcom/flurry/sdk/dg;Lcom/google/android/gms/ads/a/b;)Lcom/google/android/gms/ads/a/b;
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/dg;->t:Lcom/google/android/gms/ads/a/b;
return-object p1
.end method
.method static synthetic a(Lcom/flurry/sdk/dg;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/dg;->v:Ljava/lang/String;
return-object p1
.end method
.method private declared-synchronized a(J)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_7
:cond_7
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/cy;
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->a()Z
move-result v2
if-eqz v2, :cond_7
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->b()Z
move-result v2
if-nez v2, :cond_7
invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/cy;->a(J)V
:try_end_22
.catchall {:try_start_1 .. :try_end_22} :catchall_23
goto :goto_7
:catchall_23
move-exception v0
monitor-exit p0
throw v0
:cond_26
monitor-exit p0
return-void
.end method
.method static synthetic a(Lcom/flurry/sdk/dg;)V
.registers 1
invoke-direct {p0}, Lcom/flurry/sdk/dg;->C()V
return-void
.end method
.method private a(Lcom/flurry/sdk/do;Ljava/nio/ByteBuffer;)V
.registers 5
iget-object v1, p0, Lcom/flurry/sdk/dg;->p:Ljava/util/Map;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/flurry/sdk/dg;->p:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method
.method private a([B)V
.registers 5
invoke-static {}, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->getInstance()Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->a()Lcom/flurry/sdk/da;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Lcom/flurry/sdk/dk;->a()Lcom/flurry/sdk/dk;
move-result-object v2
invoke-virtual {v2}, Lcom/flurry/sdk/dk;->b()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;
invoke-virtual {v0, p1, v2, v1}, Lcom/flurry/sdk/da;->b([BLjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/flurry/sdk/dg;[B)[B
.registers 2
iput-object p1, p0, Lcom/flurry/sdk/dg;->u:[B
return-object p1
.end method
.method static synthetic b(Lcom/flurry/sdk/dg;)V
.registers 1
invoke-direct {p0}, Lcom/flurry/sdk/dg;->v()V
return-void
.end method
.method static synthetic c(Lcom/flurry/sdk/dg;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
return-object v0
.end method
.method private d(Landroid/content/Context;)Ljava/util/Map;
.registers 11
const/4 v8, 0x3
const/4 v0, 0x0
instance-of v1, p1, Landroid/app/Activity;
if-eqz v1, :cond_8c
check-cast p1, Landroid/app/Activity;
invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v3
if-eqz v3, :cond_8c
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Launch Options Bundle is present "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v8, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_3b
:cond_3b
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_3b
invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_88
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
:goto_53
new-instance v5, Ljava/util/ArrayList;
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v1, v6, v7
invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v6
invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v5, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Launch options Key: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v6, ". Its value: "
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v8, v5, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_3b
:cond_88
const-string v1, "null"
goto :goto_53
:cond_8b
move-object v0, v2
:cond_8c
return-object v0
.end method
.method static synthetic d(Lcom/flurry/sdk/dg;)V
.registers 1
invoke-direct {p0}, Lcom/flurry/sdk/dg;->B()V
return-void
.end method
.method static synthetic e(Lcom/flurry/sdk/dg;)V
.registers 1
invoke-direct {p0}, Lcom/flurry/sdk/dg;->y()V
return-void
.end method
.method private u()V
.registers 7
const/4 v5, 0x4
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v1
const-string v0, "Gender"
invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Byte;
invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B
move-result v0
iput-byte v0, p0, Lcom/flurry/sdk/dg;->G:B
const-string v0, "Gender"
invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "initSettings, Gender = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-byte v3, p0, Lcom/flurry/sdk/dg;->G:B
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v5, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
const-string v0, "UserId"
invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;
const-string v0, "UserId"
invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "initSettings, UserId = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v5, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
const-string v0, "LogEvents"
invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/flurry/sdk/dg;->E:Z
const-string v0, "LogEvents"
invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "initSettings, LogEvents = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-boolean v3, p0, Lcom/flurry/sdk/dg;->E:Z
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v5, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
const-string v0, "Age"
invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v2
iput-wide v2, p0, Lcom/flurry/sdk/dg;->H:J
const-string v0, "Age"
invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "initSettings, BirthDate = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-wide v3, p0, Lcom/flurry/sdk/dg;->H:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v5, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
const-string v0, "ContinueSessionMillis"
invoke-virtual {v1, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v2
iput-wide v2, p0, Lcom/flurry/sdk/dg;->I:J
const-string v0, "ContinueSessionMillis"
invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "initSettings, ContinueSessionMillis = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/flurry/sdk/dg;->I:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v5, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private v()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/flurry/sdk/dg;->v:Ljava/lang/String;
if-eqz v0, :cond_1b
const/4 v0, 0x3
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v2, "Fetched phone id"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/flurry/sdk/do;->a:Lcom/flurry/sdk/do;
iget-object v1, p0, Lcom/flurry/sdk/dg;->v:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/do;Ljava/nio/ByteBuffer;)V
:cond_1b
iget-object v0, p0, Lcom/flurry/sdk/dg;->u:[B
if-eqz v0, :cond_32
const/4 v0, 0x3
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v2, "Fetched hashed IMEI"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/flurry/sdk/do;->b:Lcom/flurry/sdk/do;
iget-object v1, p0, Lcom/flurry/sdk/dg;->u:[B
invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/do;Ljava/nio/ByteBuffer;)V
:cond_32
iget-object v0, p0, Lcom/flurry/sdk/dg;->t:Lcom/google/android/gms/ads/a/b;
if-eqz v0, :cond_51
const/4 v0, 0x3
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v2, "Fetched advertising id"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/flurry/sdk/do;->c:Lcom/flurry/sdk/do;
iget-object v1, p0, Lcom/flurry/sdk/dg;->t:Lcom/google/android/gms/ads/a/b;
invoke-virtual {v1}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/do;Ljava/nio/ByteBuffer;)V
:cond_51
invoke-direct {p0}, Lcom/flurry/sdk/dg;->A()V
:goto_54
:try_end_54
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_54} :catch_55
return-void
:catch_55
move-exception v0
const/4 v1, 0x6
sget-object v2, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v3, ""
invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_54
.end method
.method private w()V
.registers 2
new-instance v0, Lcom/flurry/sdk/dg$7;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$7;-><init>(Lcom/flurry/sdk/dg;)V
invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V
return-void
.end method
.method private x()V
.registers 2
new-instance v0, Lcom/flurry/sdk/dg$8;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$8;-><init>(Lcom/flurry/sdk/dg;)V
invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V
return-void
.end method
.method private y()V
.registers 5
:try_start_0
monitor-enter p0
:try_start_1
:try_end_1
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_16
iget-object v0, p0, Lcom/flurry/sdk/dg;->s:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_11
const/4 v0, 0x1
:goto_a
monitor-exit p0
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_13
if-eqz v0, :cond_10
:try_start_d
invoke-direct {p0}, Lcom/flurry/sdk/dg;->A()V
:cond_10
:goto_10
:try_end_10
.catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_16
return-void
:cond_11
const/4 v0, 0x0
goto :goto_a
:catchall_13
move-exception v0
:try_start_14
monitor-exit p0
:try_start_15
:try_end_15
.catchall {:try_start_14 .. :try_end_15} :catchall_13
throw v0
:try_end_16
.catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_16} :catch_16
:catch_16
move-exception v0
const/4 v1, 0x6
sget-object v2, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v3, ""
invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_10
.end method
.method private z()V
.registers 2
new-instance v0, Lcom/flurry/sdk/dg$9;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$9;-><init>(Lcom/flurry/sdk/dg;)V
invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V
return-void
.end method
.method  a()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->R:Ljava/util/Map;
return-object v0
.end method
.method public declared-synchronized a(Landroid/content/Context;)V
.registers 6
monitor-enter p0
const/4 v0, 0x4
:try_start_2
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Initializing new Flurry session with context:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/flurry/sdk/dg;->m:Ljava/lang/ref/WeakReference;
new-instance v0, Lcom/flurry/sdk/dj;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dj;-><init>(Lcom/flurry/sdk/dj$b;)V
iput-object v0, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;
invoke-direct {p0}, Lcom/flurry/sdk/dg;->F()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/dg;->n:Ljava/io/File;
invoke-static {}, Lcom/flurry/sdk/dy;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/dg;->l:Ljava/lang/String;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/flurry/sdk/dg;->y:J
const/4 v0, 0x0
iput v0, p0, Lcom/flurry/sdk/dg;->O:I
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v0
invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/dg;->B:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/dg;->A:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/dg;->L:Z
const/4 v0, 0x0
iput v0, p0, Lcom/flurry/sdk/dg;->M:I
const/4 v0, 0x0
iput v0, p0, Lcom/flurry/sdk/dg;->P:I
invoke-direct {p0, p1}, Lcom/flurry/sdk/dg;->d(Landroid/content/Context;)Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/dg;->R:Ljava/util/Map;
invoke-direct {p0}, Lcom/flurry/sdk/dg;->u()V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lcom/flurry/sdk/dg;->w:J
iput-wide v0, p0, Lcom/flurry/sdk/dg;->x:J
new-instance v0, Lcom/flurry/sdk/dg$1;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$1;-><init>(Lcom/flurry/sdk/dg;)V
invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V
new-instance v0, Lcom/flurry/sdk/dg$2;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$2;-><init>(Lcom/flurry/sdk/dg;)V
invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V
new-instance v0, Lcom/flurry/sdk/dg$3;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$3;-><init>(Lcom/flurry/sdk/dg;)V
invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V
new-instance v0, Lcom/flurry/sdk/dg$4;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$4;-><init>(Lcom/flurry/sdk/dg;)V
invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V
new-instance v0, Lcom/flurry/sdk/dg$5;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$5;-><init>(Lcom/flurry/sdk/dg;)V
invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V
invoke-static {}, Lcom/flurry/sdk/em;->a()Lcom/flurry/sdk/em;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/em;->a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/dg;->U:Z
:try_end_c2
.catchall {:try_start_2 .. :try_end_c2} :catchall_c4
monitor-exit p0
return-void
:catchall_c4
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Lcom/flurry/sdk/fc;)V
.registers 3
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/flurry/sdk/dl;->c(Ljava/lang/Runnable;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 8
const/4 v4, 0x4
const-string v0, "Gender"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
check-cast p2, Ljava/lang/Byte;
invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B
move-result v0
iput-byte v0, p0, Lcom/flurry/sdk/dg;->G:B
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onSettingUpdate, Gender = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-byte v2, p0, Lcom/flurry/sdk/dg;->G:B
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:goto_2b
return-void
:cond_2c
const-string v0, "UserId"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_53
check-cast p2, Ljava/lang/String;
iput-object p2, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onSettingUpdate, UserId = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_2b
:cond_53
const-string v0, "LogEvents"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7e
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/flurry/sdk/dg;->E:Z
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onSettingUpdate, LogEvents = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/flurry/sdk/dg;->E:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_2b
:cond_7e
const-string v0, "Age"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a9
check-cast p2, Ljava/lang/Long;
invoke-virtual {p2}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/flurry/sdk/dg;->H:J
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onSettingUpdate, Birthdate = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/flurry/sdk/dg;->H:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_2b
:cond_a9
const-string v0, "ContinueSessionMillis"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d5
check-cast p2, Ljava/lang/Long;
invoke-virtual {p2}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/flurry/sdk/dg;->I:J
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onSettingUpdate, ContinueSessionMillis = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/flurry/sdk/dg;->I:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v4, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2b
:cond_d5
const/4 v0, 0x6
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v2, "onSettingUpdate internal error!"
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2b
.end method
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 14
const/4 v0, 0x0
monitor-enter p0
if-eqz p1, :cond_59
:try_start_4
const-string v1, "uncaught"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_59
const/4 v1, 0x1
:goto_d
iget v2, p0, Lcom/flurry/sdk/dg;->O:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/flurry/sdk/dg;->O:I
iget-object v2, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
sget v3, Lcom/flurry/sdk/dg;->e:I
if-ge v2, v3, :cond_5b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
new-instance v0, Lcom/flurry/sdk/cx;
invoke-direct {p0}, Lcom/flurry/sdk/dg;->H()I
move-result v1
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
move-object v4, p1
move-object v5, p2
move-object v6, p3
move-object v7, p4
invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/cx;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v1, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Error logged: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/flurry/sdk/cx;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_57
.catchall {:try_start_4 .. :try_end_57} :catchall_9f
:goto_57
:cond_57
monitor-exit p0
return-void
:cond_59
move v1, v0
goto :goto_d
:cond_5b
if-eqz v1, :cond_a6
move v8, v0
:goto_5e
:try_start_5e
iget-object v0, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v8, v0, :cond_57
iget-object v0, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;
invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/cx;
invoke-virtual {v0}, Lcom/flurry/sdk/cx;->c()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_a2
const-string v1, "uncaught"
invoke-virtual {v0}, Lcom/flurry/sdk/cx;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_a2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
new-instance v0, Lcom/flurry/sdk/cx;
invoke-direct {p0}, Lcom/flurry/sdk/dg;->H()I
move-result v1
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
move-object v4, p1
move-object v5, p2
move-object v6, p3
move-object v7, p4
invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/cx;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v1, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;
invoke-interface {v1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
:try_end_9e
.catchall {:try_start_5e .. :try_end_9e} :catchall_9f
goto :goto_57
:catchall_9f
move-exception v0
monitor-exit p0
throw v0
:cond_a2
add-int/lit8 v0, v8, 0x1
move v8, v0
goto :goto_5e
:try_start_a6
:cond_a6
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v1, "Max errors logged. No more errors logged."
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_ad
.catchall {:try_start_a6 .. :try_end_ad} :catchall_9f
goto :goto_57
.end method
.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
.registers 10
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_7
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/cy;
invoke-virtual {v0, p1}, Lcom/flurry/sdk/cy;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_7
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
iget-wide v3, p0, Lcom/flurry/sdk/dg;->x:J
sub-long/2addr v1, v3
if-eqz p2, :cond_79
invoke-interface {p2}, Ljava/util/Map;->size()I
move-result v3
if-lez v3, :cond_79
iget v3, p0, Lcom/flurry/sdk/dg;->M:I
sget v4, Lcom/flurry/sdk/dg;->d:I
if-ge v3, v4, :cond_79
iget v3, p0, Lcom/flurry/sdk/dg;->M:I
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->d()I
move-result v4
sub-int/2addr v3, v4
new-instance v4, Ljava/util/HashMap;
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->c()Ljava/util/Map;
move-result-object v5
invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
invoke-virtual {v0, p2}, Lcom/flurry/sdk/cy;->a(Ljava/util/Map;)V
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->d()I
move-result v5
add-int/2addr v5, v3
sget v6, Lcom/flurry/sdk/dg;->d:I
if-gt v5, v6, :cond_89
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->c()Ljava/util/Map;
move-result-object v5
invoke-interface {v5}, Ljava/util/Map;->size()I
move-result v5
sget v6, Lcom/flurry/sdk/dg;->b:I
if-le v5, v6, :cond_7e
sget-object v3, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "MaxEventParams exceeded on endEvent: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->c()Ljava/util/Map;
move-result-object v6
invoke-interface {v6}, Ljava/util/Map;->size()I
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v3, v5}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v4}, Lcom/flurry/sdk/cy;->b(Ljava/util/Map;)V
:cond_79
:goto_79
invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cy;->a(J)V
:try_end_7c
.catchall {:try_start_1 .. :try_end_7c} :catchall_86
:cond_7c
monitor-exit p0
return-void
:try_start_7e
:cond_7e
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->d()I
move-result v4
add-int/2addr v3, v4
iput v3, p0, Lcom/flurry/sdk/dg;->M:I
:try_end_85
.catchall {:try_start_7e .. :try_end_85} :catchall_86
goto :goto_79
:catchall_86
move-exception v0
monitor-exit p0
throw v0
:cond_89
:try_start_89
invoke-virtual {v0, v4}, Lcom/flurry/sdk/cy;->b(Ljava/util/Map;)V
const/4 v3, 0x0
iput-boolean v3, p0, Lcom/flurry/sdk/dg;->L:Z
sget v3, Lcom/flurry/sdk/dg;->d:I
iput v3, p0, Lcom/flurry/sdk/dg;->M:I
sget-object v3, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v4, "Event Log size exceeded. No more event details logged."
invoke-static {v3, v4}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_9a
.catchall {:try_start_89 .. :try_end_9a} :catchall_86
goto :goto_79
.end method
.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
.registers 11
monitor-enter p0
:try_start_1
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-wide v2, p0, Lcom/flurry/sdk/dg;->x:J
sub-long v4, v0, v2
invoke-static {p1}, Lcom/flurry/sdk/fb;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_8d
move-result v0
if-nez v0, :cond_15
:goto_13
monitor-exit p0
return-void
:cond_15
:try_start_15
iget-object v0, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/flurry/sdk/cu$a;
if-nez v0, :cond_a9
iget-object v0, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
sget v1, Lcom/flurry/sdk/dg;->a:I
if-ge v0, v1, :cond_90
new-instance v0, Lcom/flurry/sdk/cu$a;
invoke-direct {v0}, Lcom/flurry/sdk/cu$a;-><init>()V
const/4 v1, 0x1
iput v1, v0, Lcom/flurry/sdk/cu$a;->a:I
iget-object v1, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Event count started: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_4e
iget-boolean v0, p0, Lcom/flurry/sdk/dg;->E:Z
if-eqz v0, :cond_fd
iget-object v0, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
sget v1, Lcom/flurry/sdk/dg;->c:I
if-ge v0, v1, :cond_fd
iget v0, p0, Lcom/flurry/sdk/dg;->M:I
sget v1, Lcom/flurry/sdk/dg;->d:I
if-ge v0, v1, :cond_fd
if-nez p2, :cond_102
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v3
:goto_68
invoke-interface {v3}, Ljava/util/Map;->size()I
move-result v0
sget v1, Lcom/flurry/sdk/dg;->b:I
if-le v0, v1, :cond_c8
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "MaxEventParams exceeded: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v3}, Ljava/util/Map;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_8c
.catchall {:try_start_15 .. :try_end_8c} :catchall_8d
goto :goto_13
:catchall_8d
move-exception v0
monitor-exit p0
throw v0
:cond_90
:try_start_90
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Too many different events. Event not counted: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4e
:cond_a9
iget v1, v0, Lcom/flurry/sdk/cu$a;->a:I
add-int/lit8 v1, v1, 0x1
iput v1, v0, Lcom/flurry/sdk/cu$a;->a:I
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Event count incremented: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4e
:cond_c8
new-instance v0, Lcom/flurry/sdk/cy;
invoke-direct {p0}, Lcom/flurry/sdk/dg;->G()I
move-result v1
move v6, p3
invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/cy;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->d()I
move-result v1
iget v2, p0, Lcom/flurry/sdk/dg;->M:I
add-int/2addr v1, v2
sget v2, Lcom/flurry/sdk/dg;->d:I
if-gt v1, v2, :cond_ed
iget-object v1, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget v1, p0, Lcom/flurry/sdk/dg;->M:I
invoke-virtual {v0}, Lcom/flurry/sdk/cy;->d()I
move-result v0
add-int/2addr v0, v1
iput v0, p0, Lcom/flurry/sdk/dg;->M:I
goto/16 :goto_13
:cond_ed
sget v0, Lcom/flurry/sdk/dg;->d:I
iput v0, p0, Lcom/flurry/sdk/dg;->M:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/flurry/sdk/dg;->L:Z
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v1, "Event Log size exceeded. No more event details logged."
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_13
:cond_fd
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/flurry/sdk/dg;->L:Z
:try_end_100
.catchall {:try_start_90 .. :try_end_100} :catchall_8d
goto/16 :goto_13
:cond_102
move-object v3, p2
goto/16 :goto_68
.end method
.method public b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/dg;->q:Z
return-void
.end method
.method public declared-synchronized b(Landroid/content/Context;)V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/flurry/sdk/dg;->U:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5d
if-nez v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Start session with context: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " count:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->g()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/flurry/sdk/dg;->m:Ljava/lang/ref/WeakReference;
iget-object v0, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;
invoke-virtual {v0}, Lcom/flurry/sdk/dj;->b()Z
move-result v0
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;
invoke-virtual {v0}, Lcom/flurry/sdk/dj;->a()V
:cond_41
invoke-direct {p0}, Lcom/flurry/sdk/dg;->D()V
invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dw;->c()V
invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dw;->f()Landroid/location/Location;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/dg;->D:Landroid/location/Location;
invoke-static {}, Lcom/flurry/sdk/em;->a()Lcom/flurry/sdk/em;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/em;->b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
:try_end_5c
.catchall {:try_start_7 .. :try_end_5c} :catchall_5d
goto :goto_5
:catchall_5d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized c()V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/flurry/sdk/dg;->U:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_88
if-nez v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v1, "Finalize session"
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;
invoke-virtual {v0}, Lcom/flurry/sdk/dj;->b()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;
invoke-virtual {v0}, Lcom/flurry/sdk/dj;->a()V
:cond_1b
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->g()I
move-result v0
if-eqz v0, :cond_44
const/4 v0, 0x6
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Session with apiKey = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->j()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " was ended while getSessionCount() is not 0"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:cond_44
const/4 v0, 0x0
iput v0, p0, Lcom/flurry/sdk/dg;->T:I
invoke-direct {p0}, Lcom/flurry/sdk/dg;->x()V
invoke-static {}, Lcom/flurry/sdk/em;->a()Lcom/flurry/sdk/em;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/flurry/sdk/em;->a(Lcom/flurry/sdk/dg;)V
new-instance v0, Lcom/flurry/sdk/dg$6;
invoke-direct {v0, p0}, Lcom/flurry/sdk/dg$6;-><init>(Lcom/flurry/sdk/dg;)V
invoke-virtual {p0, v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/fc;)V
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "Gender"
invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "UserId"
invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "Age"
invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "LogEvents"
invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "ContinueSessionMillis"
invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z
:try_end_86
.catchall {:try_start_7 .. :try_end_86} :catchall_88
goto/16 :goto_5
:catchall_88
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized c(Landroid/content/Context;)V
.registers 6
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/flurry/sdk/dg;->U:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_63
if-nez v0, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-static {}, Lcom/flurry/sdk/em;->a()Lcom/flurry/sdk/em;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/em;->c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dw;->f()Landroid/location/Location;
move-result-object v0
iput-object v0, p0, Lcom/flurry/sdk/dg;->D:Landroid/location/Location;
invoke-direct {p0}, Lcom/flurry/sdk/dg;->z()V
invoke-direct {p0}, Lcom/flurry/sdk/dg;->E()V
sget-object v0, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "End session with context: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " count:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->g()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-wide v2, p0, Lcom/flurry/sdk/dg;->x:J
sub-long/2addr v0, v2
iput-wide v0, p0, Lcom/flurry/sdk/dg;->y:J
iget-wide v0, p0, Lcom/flurry/sdk/dg;->y:J
invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/dg;->a(J)V
invoke-direct {p0}, Lcom/flurry/sdk/dg;->w()V
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->g()I
move-result v0
if-nez v0, :cond_5
iget-object v0, p0, Lcom/flurry/sdk/dg;->S:Lcom/flurry/sdk/dj;
iget-wide v1, p0, Lcom/flurry/sdk/dg;->I:J
invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dj;->a(J)V
:try_end_62
.catchall {:try_start_7 .. :try_end_62} :catchall_63
goto :goto_5
:catchall_63
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized d()Lcom/flurry/sdk/de;
.registers 4
monitor-enter p0
:try_start_1
new-instance v2, Lcom/flurry/sdk/df;
invoke-direct {v2}, Lcom/flurry/sdk/df;-><init>()V
iget-object v0, p0, Lcom/flurry/sdk/dg;->l:Ljava/lang/String;
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->a(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/flurry/sdk/dg;->w:J
invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/df;->a(J)V
iget-wide v0, p0, Lcom/flurry/sdk/dg;->y:J
invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/df;->b(J)V
iget-wide v0, p0, Lcom/flurry/sdk/dg;->z:J
invoke-virtual {v2, v0, v1}, Lcom/flurry/sdk/df;->c(J)V
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->k()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->b(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->l()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->c(Ljava/lang/String;)V
iget-byte v0, p0, Lcom/flurry/sdk/dg;->C:B
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->a(I)V
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->d(Ljava/lang/String;)V
iget-object v0, p0, Lcom/flurry/sdk/dg;->D:Landroid/location/Location;
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->a(Landroid/location/Location;)V
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->f()I
move-result v0
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->b(I)V
iget-byte v0, p0, Lcom/flurry/sdk/dg;->G:B
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->a(B)V
iget-wide v0, p0, Lcom/flurry/sdk/dg;->H:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->a(Ljava/lang/Long;)V
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->t()Ljava/util/Map;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->a(Ljava/util/Map;)V
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->r()Ljava/util/List;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->a(Ljava/util/List;)V
iget-boolean v0, p0, Lcom/flurry/sdk/dg;->L:Z
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->a(Z)V
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->s()Ljava/util/List;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->b(Ljava/util/List;)V
iget v0, p0, Lcom/flurry/sdk/dg;->O:I
invoke-virtual {v2, v0}, Lcom/flurry/sdk/df;->c(I)V
:try_end_6d
.catchall {:try_start_1 .. :try_end_6d} :catchall_84
const/4 v1, 0x0
:try_start_6e
new-instance v0, Lcom/flurry/sdk/de;
invoke-direct {v0, v2}, Lcom/flurry/sdk/de;-><init>(Lcom/flurry/sdk/df;)V
:try_end_73
.catchall {:try_start_6e .. :try_end_73} :catchall_84
.catch Ljava/io/IOException; {:try_start_6e .. :try_end_73} :catch_7e
:goto_73
if-nez v0, :cond_7c
:try_start_75
sget-object v1, Lcom/flurry/sdk/dg;->g:Ljava/lang/String;
const-string v2, "New session report wasn\'t created"
invoke-static {v1, v2}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
:cond_7c
:try_end_7c
.catchall {:try_start_75 .. :try_end_7c} :catchall_84
monitor-exit p0
return-object v0
:catch_7e
move-exception v0
:try_start_7f
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_82
.catchall {:try_start_7f .. :try_end_82} :catchall_84
move-object v0, v1
goto :goto_73
:catchall_84
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized e()V
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/flurry/sdk/dg;->P:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/flurry/sdk/dg;->P:I
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_9
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method  f()I
.registers 2
iget v0, p0, Lcom/flurry/sdk/dg;->P:I
return v0
.end method
.method  g()I
.registers 2
iget v0, p0, Lcom/flurry/sdk/dg;->T:I
return v0
.end method
.method  h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;
if-nez v0, :cond_7
const-string v0, ""
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/flurry/sdk/dg;->F:Ljava/lang/String;
goto :goto_6
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->v:Ljava/lang/String;
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->k:Ljava/lang/String;
return-object v0
.end method
.method public k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->A:Ljava/lang/String;
return-object v0
.end method
.method public l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->B:Ljava/lang/String;
return-object v0
.end method
.method public m()J
.registers 3
iget-wide v0, p0, Lcom/flurry/sdk/dg;->w:J
return-wide v0
.end method
.method public n()J
.registers 3
iget-wide v0, p0, Lcom/flurry/sdk/dg;->x:J
return-wide v0
.end method
.method public o()Z
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->t:Lcom/google/android/gms/ads/a/b;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/flurry/sdk/dg;->t:Lcom/google/android/gms/ads/a/b;
invoke-virtual {v0}, Lcom/google/android/gms/ads/a/b;->b()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
const/4 v0, 0x1
goto :goto_d
.end method
.method public p()Ljava/util/Map;
.registers 3
new-instance v0, Ljava/util/HashMap;
iget-object v1, p0, Lcom/flurry/sdk/dg;->p:Ljava/util/Map;
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
return-object v0
.end method
.method public q()V
.registers 1
invoke-virtual {p0}, Lcom/flurry/sdk/dg;->c()V
return-void
.end method
.method  r()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->K:Ljava/util/List;
return-object v0
.end method
.method  s()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->N:Ljava/util/List;
return-object v0
.end method
.method  t()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/dg;->J:Ljava/util/Map;
return-object v0
.end method