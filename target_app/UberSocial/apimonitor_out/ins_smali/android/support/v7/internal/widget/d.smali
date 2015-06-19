.class public Landroid/support/v7/internal/widget/d;
.super Landroid/database/DataSetObservable;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "activity_choser_model_history.xml"
.field public static final b:I = 0x32
.field private static final c:Z = false
.field private static final d:Ljava/lang/String; = null
.field private static final e:Ljava/lang/String; = "historical-records"
.field private static final f:Ljava/lang/String; = "historical-record"
.field private static final g:Ljava/lang/String; = "activity"
.field private static final h:Ljava/lang/String; = "time"
.field private static final i:Ljava/lang/String; = "weight"
.field private static final j:I = 0x5
.field private static final k:F = 1.0f
.field private static final l:Ljava/lang/String; = ".xml"
.field private static final m:I = -0x1
.field private static final n:Ljava/lang/Object;
.field private static final o:Ljava/util/Map;
.field private A:Z
.field private B:Landroid/support/v7/internal/widget/j;
.field private final p:Ljava/lang/Object;
.field private final q:Ljava/util/List;
.field private final r:Ljava/util/List;
.field private final s:Landroid/content/Context;
.field private final t:Ljava/lang/String;
.field private u:Landroid/content/Intent;
.field private v:Landroid/support/v7/internal/widget/g;
.field private w:I
.field private x:Z
.field private y:Z
.field private z:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Landroid/support/v7/internal/widget/d;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/String;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Landroid/support/v7/internal/widget/d;->n:Ljava/lang/Object;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Landroid/support/v7/internal/widget/d;->o:Ljava/util/Map;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
new-instance v0, Landroid/support/v7/internal/widget/h;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/h;-><init>(Landroid/support/v7/internal/widget/d;Landroid/support/v7/internal/widget/d$1;)V
iput-object v0, p0, Landroid/support/v7/internal/widget/d;->v:Landroid/support/v7/internal/widget/g;
const/16 v0, 0x32
iput v0, p0, Landroid/support/v7/internal/widget/d;->w:I
iput-boolean v3, p0, Landroid/support/v7/internal/widget/d;->x:Z
iput-boolean v2, p0, Landroid/support/v7/internal/widget/d;->y:Z
iput-boolean v3, p0, Landroid/support/v7/internal/widget/d;->z:Z
iput-boolean v2, p0, Landroid/support/v7/internal/widget/d;->A:Z
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/d;->s:Landroid/content/Context;
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_58
const-string v0, ".xml"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_58
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".xml"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
:goto_57
return-void
:cond_58
iput-object p2, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
goto :goto_57
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/d;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->s:Landroid/content/Context;
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/d;
.registers 5
sget-object v1, Landroid/support/v7/internal/widget/d;->n:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Landroid/support/v7/internal/widget/d;->o:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/d;
if-nez v0, :cond_17
new-instance v0, Landroid/support/v7/internal/widget/d;
invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/widget/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V
sget-object v2, Landroid/support/v7/internal/widget/d;->o:Ljava/util/Map;
invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_17
monitor-exit v1
return-object v0
:catchall_19
move-exception v0
monitor-exit v1
:try_end_1b
.catchall {:try_start_3 .. :try_end_1b} :catchall_19
throw v0
.end method
.method static synthetic a(Landroid/support/v7/internal/widget/d;Z)Z
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/widget/d;->x:Z
return p1
.end method
.method private a(Landroid/support/v7/internal/widget/i;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/internal/widget/d;->z:Z
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->n()V
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->g()V
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->k()Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/d;->notifyChanged()V
:cond_17
return v0
.end method
.method static synthetic b(Landroid/support/v7/internal/widget/d;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
return-object v0
.end method
.method static synthetic f()Ljava/lang/String;
.registers 1
sget-object v0, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/String;
return-object v0
.end method
.method private g()V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/widget/d;->y:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No preceding call to #readHistoricalData"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-boolean v0, p0, Landroid/support/v7/internal/widget/d;->z:Z
if-nez v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->z:Z
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_10
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_26
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->i()V
goto :goto_10
:cond_26
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->h()V
goto :goto_10
.end method
.method private h()V
.registers 6
new-instance v0, Landroid/support/v7/internal/widget/k;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/k;-><init>(Landroid/support/v7/internal/widget/d;Landroid/support/v7/internal/widget/d$1;)V
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
new-instance v3, Ljava/util/ArrayList;
iget-object v4, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method private i()V
.registers 7
new-instance v0, Landroid/support/v7/internal/widget/k;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/k;-><init>(Landroid/support/v7/internal/widget/d;Landroid/support/v7/internal/widget/d$1;)V
sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
new-instance v4, Ljava/util/ArrayList;
iget-object v5, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method private j()V
.registers 3
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->l()Z
move-result v0
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->m()Z
move-result v1
or-int/2addr v0, v1
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->n()V
if-eqz v0, :cond_14
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->k()Z
invoke-virtual {p0}, Landroid/support/v7/internal/widget/d;->notifyChanged()V
:cond_14
return-void
.end method
.method private k()Z
.registers 5
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->v:Landroid/support/v7/internal/widget/g;
if-eqz v0, :cond_29
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->u:Landroid/content/Intent;
if-eqz v0, :cond_29
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_29
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_29
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->v:Landroid/support/v7/internal/widget/g;
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->u:Landroid/content/Intent;
iget-object v2, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
iget-object v3, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v3
invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/g;->a(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
const/4 v0, 0x1
:goto_28
return v0
:cond_29
const/4 v0, 0x0
goto :goto_28
.end method
.method private l()Z
.registers 7
const/4 v0, 0x0
iget-boolean v1, p0, Landroid/support/v7/internal/widget/d;->A:Z
if-eqz v1, :cond_38
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->u:Landroid/content/Intent;
if-eqz v1, :cond_38
iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->A:Z
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->clear()V
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->s:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/internal/widget/d;->u:Landroid/content/Intent;
invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
move v1, v0
:goto_21
if-ge v1, v3, :cond_37
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
iget-object v4, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
new-instance v5, Landroid/support/v7/internal/widget/f;
invoke-direct {v5, p0, v0}, Landroid/support/v7/internal/widget/f;-><init>(Landroid/support/v7/internal/widget/d;Landroid/content/pm/ResolveInfo;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_21
:cond_37
const/4 v0, 0x1
:cond_38
return v0
.end method
.method private m()Z
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
iget-boolean v2, p0, Landroid/support/v7/internal/widget/d;->x:Z
if-eqz v2, :cond_1a
iget-boolean v2, p0, Landroid/support/v7/internal/widget/d;->z:Z
if-eqz v2, :cond_1a
iget-object v2, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_1a
iput-boolean v1, p0, Landroid/support/v7/internal/widget/d;->x:Z
iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->y:Z
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->o()V
:goto_19
return v0
:cond_1a
move v0, v1
goto :goto_19
.end method
.method private n()V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v1, p0, Landroid/support/v7/internal/widget/d;->w:I
sub-int v3, v0, v1
if-gtz v3, :cond_e
:cond_d
return-void
:cond_e
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->z:Z
move v1, v2
:goto_12
if-ge v1, v3, :cond_d
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/i;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_12
.end method
.method private o()V
.registers 10
const/4 v8, 0x1
:try_start_1
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->s:Landroid/content/Context;
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
:try_end_8
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_d2
move-result-object v1
:try_start_9
invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
move-result-object v2
const/4 v0, 0x0
invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_12
if-eq v0, v8, :cond_1c
const/4 v3, 0x2
if-eq v0, v3, :cond_1c
invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
move-result v0
goto :goto_12
:cond_1c
const-string v0, "historical-records"
invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_51
new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;
const-string v2, "Share records file does not start with historical-records tag."
invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
throw v0
:catch_30
:try_end_30
.catchall {:try_start_9 .. :try_end_30} :catchall_c7
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_30} :catch_30
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_30} :catch_7e
move-exception v0
:try_start_31
sget-object v2, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Error reading historical recrod file: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_4b
.catchall {:try_start_31 .. :try_end_4b} :catchall_c7
if-eqz v1, :cond_50
:try_start_4d
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:goto_50
:cond_50
:try_end_50
.catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_ce
return-void
:cond_51
:try_start_51
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
:goto_56
:cond_56
invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
:try_end_59
.catchall {:try_start_51 .. :try_end_59} :catchall_c7
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_59} :catch_30
.catch Ljava/io/IOException; {:try_start_51 .. :try_end_59} :catch_7e
move-result v3
if-ne v3, v8, :cond_64
if-eqz v1, :cond_50
:try_start_5e
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_61
.catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
goto :goto_50
:catch_62
move-exception v0
goto :goto_50
:cond_64
const/4 v4, 0x3
if-eq v3, v4, :cond_56
const/4 v4, 0x4
if-eq v3, v4, :cond_56
:try_start_6a
invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v3
const-string v4, "historical-record"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_a1
new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;
const-string v2, "Share records file not well-formed."
invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
throw v0
:catch_7e
:try_end_7e
.catchall {:try_start_6a .. :try_end_7e} :catchall_c7
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_7e} :catch_30
.catch Ljava/io/IOException; {:try_start_6a .. :try_end_7e} :catch_7e
move-exception v0
:try_start_7f
sget-object v2, Landroid/support/v7/internal/widget/d;->d:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Error reading historical recrod file: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v7/internal/widget/d;->t:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_99
.catchall {:try_start_7f .. :try_end_99} :catchall_c7
if-eqz v1, :cond_50
:try_start_9b
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_9e
.catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f
goto :goto_50
:catch_9f
move-exception v0
goto :goto_50
:cond_a1
const/4 v3, 0x0
:try_start_a2
const-string v4, "activity"
invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
const-string v5, "time"
invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v4
const/4 v6, 0x0
const-string v7, "weight"
invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v6
new-instance v7, Landroid/support/v7/internal/widget/i;
invoke-direct {v7, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/i;-><init>(Ljava/lang/String;JF)V
invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_c6
.catchall {:try_start_a2 .. :try_end_c6} :catchall_c7
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_c6} :catch_30
.catch Ljava/io/IOException; {:try_start_a2 .. :try_end_c6} :catch_7e
goto :goto_56
:catchall_c7
move-exception v0
if-eqz v1, :cond_cd
:try_start_ca
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:goto_cd
:try_end_cd
.catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_d0
:cond_cd
throw v0
:catch_ce
move-exception v0
goto :goto_50
:catch_d0
move-exception v1
goto :goto_cd
:catch_d2
move-exception v0
goto/16 :goto_50
.end method
.method public a(Landroid/content/pm/ResolveInfo;)I
.registers 7
iget-object v2, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v2
:try_start_3
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V
iget-object v3, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
const/4 v1, 0x0
:goto_d
if-ge v1, v4, :cond_1f
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/f;
iget-object v0, v0, Landroid/support/v7/internal/widget/f;->a:Landroid/content/pm/ResolveInfo;
if-ne v0, p1, :cond_1c
monitor-exit v2
move v0, v1
:goto_1b
return v0
:cond_1c
add-int/lit8 v1, v1, 0x1
goto :goto_d
:cond_1f
const/4 v0, -0x1
monitor-exit v2
goto :goto_1b
:catchall_22
move-exception v0
monitor-exit v2
:try_end_24
.catchall {:try_start_3 .. :try_end_24} :catchall_22
throw v0
.end method
.method public a()Landroid/content/Intent;
.registers 3
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->u:Landroid/content/Intent;
monitor-exit v1
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public a(I)Landroid/content/pm/ResolveInfo;
.registers 4
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/f;
iget-object v0, v0, Landroid/support/v7/internal/widget/f;->a:Landroid/content/pm/ResolveInfo;
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method public a(Landroid/content/Intent;)V
.registers 4
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->u:Landroid/content/Intent;
if-ne v0, p1, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
iput-object p1, p0, Landroid/support/v7/internal/widget/d;->u:Landroid/content/Intent;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/widget/d;->A:Z
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V
monitor-exit v1
goto :goto_8
:catchall_13
move-exception v0
monitor-exit v1
:try_end_15
.catchall {:try_start_3 .. :try_end_15} :catchall_13
throw v0
.end method
.method public a(Landroid/support/v7/internal/widget/g;)V
.registers 4
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->v:Landroid/support/v7/internal/widget/g;
if-ne v0, p1, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
iput-object p1, p0, Landroid/support/v7/internal/widget/d;->v:Landroid/support/v7/internal/widget/g;
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->k()Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Landroid/support/v7/internal/widget/d;->notifyChanged()V
:cond_14
monitor-exit v1
goto :goto_8
:catchall_16
move-exception v0
monitor-exit v1
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_16
throw v0
.end method
.method public a(Landroid/support/v7/internal/widget/j;)V
.registers 4
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-object p1, p0, Landroid/support/v7/internal/widget/d;->B:Landroid/support/v7/internal/widget/j;
monitor-exit v1
return-void
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public b()I
.registers 3
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
monitor-exit v1
return v0
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_e
throw v0
.end method
.method public b(I)Landroid/content/Intent;
.registers 9
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v2
:try_start_4
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->u:Landroid/content/Intent;
if-nez v0, :cond_b
monitor-exit v2
move-object v0, v1
:goto_a
return-object v0
:cond_b
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/f;
new-instance v3, Landroid/content/ComponentName;
iget-object v4, v0, Landroid/support/v7/internal/widget/f;->a:Landroid/content/pm/ResolveInfo;
iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
iget-object v0, v0, Landroid/support/v7/internal/widget/f;->a:Landroid/content/pm/ResolveInfo;
iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v4, p0, Landroid/support/v7/internal/widget/d;->u:Landroid/content/Intent;
invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
iget-object v4, p0, Landroid/support/v7/internal/widget/d;->B:Landroid/support/v7/internal/widget/j;
if-eqz v4, :cond_45
new-instance v4, Landroid/content/Intent;
invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
iget-object v5, p0, Landroid/support/v7/internal/widget/d;->B:Landroid/support/v7/internal/widget/j;
invoke-interface {v5, p0, v4}, Landroid/support/v7/internal/widget/j;->a(Landroid/support/v7/internal/widget/d;Landroid/content/Intent;)Z
move-result v4
if-eqz v4, :cond_45
monitor-exit v2
move-object v0, v1
goto :goto_a
:cond_45
new-instance v1, Landroid/support/v7/internal/widget/i;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
const/high16 v6, 0x3f80
invoke-direct {v1, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/i;-><init>(Landroid/content/ComponentName;JF)V
invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/i;)Z
monitor-exit v2
goto :goto_a
:catchall_55
move-exception v0
monitor-exit v2
:try_end_57
.catchall {:try_start_4 .. :try_end_57} :catchall_55
throw v0
.end method
.method public c()Landroid/content/pm/ResolveInfo;
.registers 4
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
const/4 v2, 0x0
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/f;
iget-object v0, v0, Landroid/support/v7/internal/widget/f;->a:Landroid/content/pm/ResolveInfo;
monitor-exit v1
:goto_1a
return-object v0
:cond_1b
monitor-exit v1
const/4 v0, 0x0
goto :goto_1a
:catchall_1e
move-exception v0
monitor-exit v1
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_1e
throw v0
.end method
.method public c(I)V
.registers 8
iget-object v2, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v2
:try_start_3
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/f;
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->q:Ljava/util/List;
const/4 v3, 0x0
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/internal/widget/f;
if-eqz v1, :cond_40
iget v1, v1, Landroid/support/v7/internal/widget/f;->b:F
iget v3, v0, Landroid/support/v7/internal/widget/f;->b:F
sub-float/2addr v1, v3
const/high16 v3, 0x40a0
add-float/2addr v1, v3
:goto_21
new-instance v3, Landroid/content/ComponentName;
iget-object v4, v0, Landroid/support/v7/internal/widget/f;->a:Landroid/content/pm/ResolveInfo;
iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
iget-object v0, v0, Landroid/support/v7/internal/widget/f;->a:Landroid/content/pm/ResolveInfo;
iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/support/v7/internal/widget/i;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-direct {v0, v3, v4, v5, v1}, Landroid/support/v7/internal/widget/i;-><init>(Landroid/content/ComponentName;JF)V
invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/d;->a(Landroid/support/v7/internal/widget/i;)Z
monitor-exit v2
return-void
:cond_40
const/high16 v1, 0x3f80
goto :goto_21
:catchall_43
move-exception v0
monitor-exit v2
:try_end_45
.catchall {:try_start_3 .. :try_end_45} :catchall_43
throw v0
.end method
.method public d()I
.registers 3
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget v0, p0, Landroid/support/v7/internal/widget/d;->w:I
monitor-exit v1
return v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public d(I)V
.registers 4
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget v0, p0, Landroid/support/v7/internal/widget/d;->w:I
if-ne v0, p1, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
iput p1, p0, Landroid/support/v7/internal/widget/d;->w:I
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->n()V
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->k()Z
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p0}, Landroid/support/v7/internal/widget/d;->notifyChanged()V
:cond_17
monitor-exit v1
goto :goto_8
:catchall_19
move-exception v0
monitor-exit v1
:try_end_1b
.catchall {:try_start_3 .. :try_end_1b} :catchall_19
throw v0
.end method
.method public e()I
.registers 3
iget-object v1, p0, Landroid/support/v7/internal/widget/d;->p:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-direct {p0}, Landroid/support/v7/internal/widget/d;->j()V
iget-object v0, p0, Landroid/support/v7/internal/widget/d;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
monitor-exit v1
return v0
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_e
throw v0
.end method