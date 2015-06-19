.class final Lcom/a/a/bf;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.field static final a:Ljava/io/FilenameFilter;
.field private static b:Ljava/util/Comparator;
.field private static c:Ljava/util/Comparator;
.field private static final d:Ljava/util/regex/Pattern;
.field private static final e:Ljava/util/Map;
.field private static final f:Lcom/a/a/an;
.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final i:I
.field private final j:Ljava/lang/Thread$UncaughtExceptionHandler;
.field private final k:Ljava/io/File;
.field private final l:Ljava/io/File;
.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final n:Ljava/lang/String;
.field private final o:Landroid/content/BroadcastReceiver;
.field private final p:Landroid/content/BroadcastReceiver;
.field private final q:Lcom/a/a/an;
.field private final r:Lcom/a/a/an;
.field private final s:Ljava/util/concurrent/ExecutorService;
.field private t:Landroid/app/ActivityManager$RunningAppProcessInfo;
.field private u:Lcom/a/a/a/br;
.field private v:Z
.field private w:[Ljava/lang/Thread;
.field private x:Ljava/util/List;
.field private y:[Ljava/lang/StackTraceElement;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/a/a/bg;
invoke-direct {v0}, Lcom/a/a/bg;-><init>()V
sput-object v0, Lcom/a/a/bf;->a:Ljava/io/FilenameFilter;
new-instance v0, Lcom/a/a/l;
invoke-direct {v0}, Lcom/a/a/l;-><init>()V
sput-object v0, Lcom/a/a/bf;->b:Ljava/util/Comparator;
new-instance v0, Lcom/a/a/n;
invoke-direct {v0}, Lcom/a/a/n;-><init>()V
sput-object v0, Lcom/a/a/bf;->c:Ljava/util/Comparator;
new-instance v0, Lcom/a/a/o;
invoke-direct {v0}, Lcom/a/a/o;-><init>()V
const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/a/a/bf;->d:Ljava/util/regex/Pattern;
const-string v0, "X-CRASHLYTICS-SEND-FLAGS"
const-string v1, "1"
invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
sput-object v0, Lcom/a/a/bf;->e:Ljava/util/Map;
const-string v0, "0"
invoke-static {v0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
sput-object v0, Lcom/a/a/bf;->f:Lcom/a/a/an;
return-void
.end method
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/a/a/f;Ljava/lang/String;)V
.registers 5
const-string v0, "Crashlytics Exception Handler"
invoke-static {v0}, Lcom/a/a/a/bi;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
move-result-object v0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/a/a/bf;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/a/a/f;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V
return-void
.end method
.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/a/a/f;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V
.registers 11
const/4 v5, 0x1
const/4 v4, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
iput-object v0, p0, Lcom/a/a/bf;->g:Ljava/util/concurrent/atomic/AtomicInteger;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/a/a/bf;->h:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-object p1, p0, Lcom/a/a/bf;->j:Ljava/lang/Thread$UncaughtExceptionHandler;
iput-object p3, p0, Lcom/a/a/bf;->s:Ljava/util/concurrent/ExecutorService;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/a/a/bf;->m:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/a/a/bf;->k:Ljava/io/File;
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/a/a/bf;->k:Ljava/io/File;
const-string v2, "initialization_marker"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v0, p0, Lcom/a/a/bf;->l:Ljava/io/File;
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v1, "Crashlytics Android SDK/%s"
new-array v2, v5, [Ljava/lang/Object;
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/e;->i()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/a/a/bf;->n:Ljava/lang/String;
const/16 v0, 0x8
iput v0, p0, Lcom/a/a/bf;->i:I
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "Checking for previous crash marker."
invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v1
const-string v2, "crash_marker"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_79
invoke-virtual {v0}, Ljava/io/File;->delete()Z
if-eqz p2, :cond_79
:try_start_76
invoke-interface {p2}, Lcom/a/a/f;->a()V
:try_end_79
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_c4
:cond_79
:goto_79
invoke-static {}, Lcom/a/a/e;->j()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
iput-object v0, p0, Lcom/a/a/bf;->q:Lcom/a/a/an;
if-nez p4, :cond_d5
const/4 v0, 0x0
:goto_86
iput-object v0, p0, Lcom/a/a/bf;->r:Lcom/a/a/an;
new-instance v0, Lcom/a/a/p;
invoke-direct {v0, p0}, Lcom/a/a/p;-><init>(Lcom/a/a/bf;)V
iput-object v0, p0, Lcom/a/a/bf;->p:Landroid/content/BroadcastReceiver;
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
new-instance v1, Lcom/a/a/q;
invoke-direct {v1, p0}, Lcom/a/a/q;-><init>(Lcom/a/a/bf;)V
iput-object v1, p0, Lcom/a/a/bf;->o:Landroid/content/BroadcastReceiver;
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v2
invoke-virtual {v2}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/a/a/bf;->p:Landroid/content/BroadcastReceiver;
invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v0
iget-object v2, p0, Lcom/a/a/bf;->o:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iget-object v0, p0, Lcom/a/a/bf;->h:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
return-void
:catch_c4
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_79
:cond_d5
const-string v0, "-"
const-string v1, ""
invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
goto :goto_86
.end method
.method private static a(FIZIJJ)I
.registers 10
const/4 v0, 0x1
invoke-static {v0, p0}, Lcom/a/a/ar;->b(IF)I
move-result v0
add-int/lit8 v0, v0, 0x0
const/4 v1, 0x2
invoke-static {v1, p1}, Lcom/a/a/ar;->f(II)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x3
invoke-static {v1, p2}, Lcom/a/a/ar;->b(IZ)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x4
invoke-static {v1, p3}, Lcom/a/a/ar;->d(II)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x5
invoke-static {v1, p4, p5}, Lcom/a/a/ar;->b(IJ)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x6
invoke-static {v1, p6, p7}, Lcom/a/a/ar;->b(IJ)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private a(ILcom/a/a/an;Lcom/a/a/an;IJJZLjava/util/Map;ILcom/a/a/an;Lcom/a/a/an;)I
.registers 20
const/4 v1, 0x1
invoke-static {v1, p2}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
add-int/lit8 v1, v1, 0x0
const/4 v2, 0x3
invoke-static {v2, p1}, Lcom/a/a/ar;->e(II)I
move-result v2
add-int/2addr v2, v1
if-nez p3, :cond_61
const/4 v1, 0x0
:goto_10
add-int/2addr v1, v2
const/4 v2, 0x5
invoke-static {v2, p4}, Lcom/a/a/ar;->d(II)I
move-result v2
add-int/2addr v1, v2
const/4 v2, 0x6
invoke-static {v2, p5, p6}, Lcom/a/a/ar;->b(IJ)I
move-result v2
add-int/2addr v1, v2
const/4 v2, 0x7
invoke-static {v2, p7, p8}, Lcom/a/a/ar;->b(IJ)I
move-result v2
add-int/2addr v1, v2
const/16 v2, 0xa
invoke-static {v2, p9}, Lcom/a/a/ar;->b(IZ)I
move-result v2
add-int/2addr v1, v2
if-eqz p10, :cond_67
invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
move v3, v1
:goto_35
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_68
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v2, v1
check-cast v2, Ljava/util/Map$Entry;
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/a/a/a/bq;
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-static {v1, v2}, Lcom/a/a/bf;->a(Lcom/a/a/a/bq;Ljava/lang/String;)I
move-result v1
const/16 v2, 0xb
invoke-static {v2}, Lcom/a/a/ar;->a(I)I
move-result v2
invoke-static {v1}, Lcom/a/a/ar;->c(I)I
move-result v5
add-int/2addr v2, v5
add-int/2addr v1, v2
add-int/2addr v1, v3
move v3, v1
goto :goto_35
:cond_61
const/4 v1, 0x4
invoke-static {v1, p3}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
goto :goto_10
:cond_67
move v3, v1
:cond_68
const/16 v1, 0xc
move/from16 v0, p11
invoke-static {v1, v0}, Lcom/a/a/ar;->d(II)I
move-result v1
add-int v2, v3, v1
if-nez p12, :cond_7b
const/4 v1, 0x0
:goto_75
add-int/2addr v2, v1
if-nez p13, :cond_84
const/4 v1, 0x0
:goto_79
add-int/2addr v1, v2
return v1
:cond_7b
const/16 v1, 0xd
move-object/from16 v0, p12
invoke-static {v1, v0}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
goto :goto_75
:cond_84
const/16 v1, 0xe
move-object/from16 v0, p13
invoke-static {v1, v0}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
goto :goto_79
.end method
.method private static a(Lcom/a/a/a/bq;Ljava/lang/String;)I
.registers 5
const/4 v0, 0x1
iget v1, p0, Lcom/a/a/a/bq;->f:I
invoke-static {v0, v1}, Lcom/a/a/ar;->e(II)I
move-result v0
const/4 v1, 0x2
invoke-static {p1}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v2
invoke-static {v1, v2}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private static a(Ljava/lang/StackTraceElement;Z)I
.registers 8
const/4 v1, 0x2
const/4 v5, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z
move-result v0
if-eqz v0, :cond_76
invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I
move-result v0
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v0
int-to-long v3, v0
invoke-static {v5, v3, v4}, Lcom/a/a/ar;->b(IJ)I
move-result v0
add-int/lit8 v0, v0, 0x0
:goto_18
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v3
invoke-static {v1, v3}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v3
add-int/2addr v0, v3
invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_54
const/4 v3, 0x3
invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v4
invoke-static {v3, v4}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v3
add-int/2addr v0, v3
:cond_54
invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z
move-result v3
if-nez v3, :cond_81
invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I
move-result v3
if-lez v3, :cond_81
const/4 v3, 0x4
invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I
move-result v4
int-to-long v4, v4
invoke-static {v3, v4, v5}, Lcom/a/a/ar;->b(IJ)I
move-result v3
add-int/2addr v0, v3
move v3, v0
:goto_6c
const/4 v4, 0x5
if-eqz p1, :cond_7f
move v0, v1
:goto_70
invoke-static {v4, v0}, Lcom/a/a/ar;->d(II)I
move-result v0
add-int/2addr v0, v3
return v0
:cond_76
const-wide/16 v3, 0x0
invoke-static {v5, v3, v4}, Lcom/a/a/ar;->b(IJ)I
move-result v0
add-int/lit8 v0, v0, 0x0
goto :goto_18
:cond_7f
move v0, v2
goto :goto_70
:cond_81
move v3, v0
goto :goto_6c
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;)I
.registers 5
const/4 v0, 0x1
invoke-static {p0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v1
invoke-static {v0, v1}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v0
const/4 v1, 0x2
if-nez p1, :cond_e
const-string p1, ""
:cond_e
invoke-static {p1}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v2
invoke-static {v1, v2}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I
.registers 10
const/4 v3, 0x1
invoke-direct {p0, p1, p2}, Lcom/a/a/bf;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)I
move-result v0
invoke-static {v3}, Lcom/a/a/ar;->a(I)I
move-result v1
invoke-static {v0}, Lcom/a/a/ar;->c(I)I
move-result v2
add-int/2addr v1, v2
add-int/2addr v0, v1
add-int/lit8 v0, v0, 0x0
if-eqz p3, :cond_47
invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
move v2, v0
:goto_1c
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_48
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v0, v1}, Lcom/a/a/bf;->a(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
const/4 v1, 0x2
invoke-static {v1}, Lcom/a/a/ar;->a(I)I
move-result v1
invoke-static {v0}, Lcom/a/a/ar;->c(I)I
move-result v5
add-int/2addr v1, v5
add-int/2addr v0, v1
add-int/2addr v0, v2
move v2, v0
goto :goto_1c
:cond_47
move v2, v0
:cond_48
iget-object v0, p0, Lcom/a/a/bf;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;
if-eqz v0, :cond_5b
const/4 v1, 0x3
iget-object v0, p0, Lcom/a/a/bf;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;
iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
const/16 v4, 0x64
if-eq v0, v4, :cond_74
move v0, v3
:goto_56
invoke-static {v1, v0}, Lcom/a/a/ar;->b(IZ)I
move-result v0
add-int/2addr v2, v0
:cond_5b
const/4 v0, 0x4
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v1, v1, Landroid/content/res/Configuration;->orientation:I
invoke-static {v0, v1}, Lcom/a/a/ar;->d(II)I
move-result v0
add-int/2addr v0, v2
return v0
:cond_74
const/4 v0, 0x0
goto :goto_56
.end method
.method private a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
.registers 11
const/4 v0, 0x1
invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v1
invoke-static {v0, v1}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v0
const/4 v1, 0x2
invoke-static {v1, p3}, Lcom/a/a/ar;->d(II)I
move-result v1
add-int/2addr v1, v0
array-length v2, p2
const/4 v0, 0x0
:goto_15
if-ge v0, v2, :cond_2c
aget-object v3, p2, v0
invoke-static {v3, p4}, Lcom/a/a/bf;->a(Ljava/lang/StackTraceElement;Z)I
move-result v3
const/4 v4, 0x3
invoke-static {v4}, Lcom/a/a/ar;->a(I)I
move-result v4
invoke-static {v3}, Lcom/a/a/ar;->c(I)I
move-result v5
add-int/2addr v4, v5
add-int/2addr v3, v4
add-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_2c
return v1
.end method
.method private a(Ljava/lang/Throwable;I)I
.registers 12
const/4 v8, 0x1
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
invoke-static {v8, v0}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v0
add-int/lit8 v0, v0, 0x0
invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_24
const/4 v3, 0x3
invoke-static {v2}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v2
invoke-static {v3, v2}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v2
add-int/2addr v0, v2
:cond_24
invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v4
array-length v5, v4
move v2, v1
:goto_2a
if-ge v2, v5, :cond_43
aget-object v3, v4, v2
invoke-static {v3, v8}, Lcom/a/a/bf;->a(Ljava/lang/StackTraceElement;Z)I
move-result v3
const/4 v6, 0x4
invoke-static {v6}, Lcom/a/a/ar;->a(I)I
move-result v6
invoke-static {v3}, Lcom/a/a/ar;->c(I)I
move-result v7
add-int/2addr v6, v7
add-int/2addr v3, v6
add-int/2addr v3, v0
add-int/lit8 v0, v2, 0x1
move v2, v0
move v0, v3
goto :goto_2a
:cond_43
invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v2
if-eqz v2, :cond_5f
const/16 v3, 0x8
if-ge p2, v3, :cond_60
add-int/lit8 v1, p2, 0x1
invoke-direct {p0, v2, v1}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;I)I
move-result v1
const/4 v2, 0x6
invoke-static {v2}, Lcom/a/a/ar;->a(I)I
move-result v2
invoke-static {v1}, Lcom/a/a/ar;->c(I)I
move-result v3
add-int/2addr v2, v3
add-int/2addr v1, v2
add-int/2addr v0, v1
:goto_5f
:cond_5f
return v0
:cond_60
:goto_60
if-eqz v2, :cond_69
invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v2
add-int/lit8 v1, v1, 0x1
goto :goto_60
:cond_69
const/4 v2, 0x7
invoke-static {v2, v1}, Lcom/a/a/ar;->d(II)I
move-result v1
add-int/2addr v0, v1
goto :goto_5f
.end method
.method private a(Lcom/a/a/a/br;)Lcom/a/a/an;
.registers 9
const/4 v6, 0x0
if-nez p1, :cond_5
const/4 v0, 0x0
:goto_4
return-object v0
:cond_5
const/4 v0, 0x1
new-array v1, v0, [I
aput v6, v1, v6
invoke-virtual {p1}, Lcom/a/a/a/br;->a()I
move-result v0
new-array v2, v0, [B
:try_start_10
new-instance v0, Lcom/a/a/bi;
invoke-direct {v0, p0, v2, v1}, Lcom/a/a/bi;-><init>(Lcom/a/a/bf;[B[I)V
invoke-virtual {p1, v0}, Lcom/a/a/a/br;->a(Lcom/a/a/a/bv;)V
:goto_18
:try_end_18
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_1f
aget v0, v1, v6
invoke-static {v2, v6, v0}, Lcom/a/a/an;->a([BII)Lcom/a/a/an;
move-result-object v0
goto :goto_4
:catch_1f
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
const-string v5, "A problem occurred while reading the Crashlytics log file."
invoke-interface {v3, v4, v5, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_18
.end method
.method private a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.registers 7
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/a/a/bf;->s:Ljava/util/concurrent/ExecutorService;
invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
move-result-object v1
invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
:try_end_a
.catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_a} :catch_c
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_1d
move-result-object v0
:goto_b
return-object v0
:catch_c
move-exception v1
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Executor is shut down because we\'re handling a fatal crash."
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
:catch_1d
move-exception v1
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v2
invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v2
const-string v3, "Crashlytics"
const-string v4, "Failed to execute task."
invoke-interface {v2, v3, v4, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_b
.end method
.method private static a(Ljava/io/File;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
const/16 v2, 0x23
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/a/a/bf;->s:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/a/a/k;
invoke-direct {v1, p0, p1}, Lcom/a/a/k;-><init>(Lcom/a/a/bf;Ljava/lang/Runnable;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
:try_end_a
.catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_c
move-result-object v0
:goto_b
return-object v0
:catch_c
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "Executor is shut down because we\'re handling a fatal crash."
invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_b
.end method
.method static synthetic a(Lcom/a/a/bf;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/a/a/bf;->m:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static a(Lcom/a/a/a/br;IJLjava/lang/String;)V
.registers 11
if-nez p0, :cond_3
:goto_2
:cond_2
return-void
:cond_3
if-nez p4, :cond_79
const-string v0, "null"
:try_start_7
:goto_7
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
const/16 v2, 0x4000
if-le v1, v2, :cond_28
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "..."
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
add-int/lit16 v2, v2, -0x4000
invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_28
const-string v1, "\r"
const-string v2, " "
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "\n"
const-string v2, " "
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v2, "%d %s%n"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
aput-object v0, v3, v4
invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const-string v1, "UTF-8"
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-virtual {p0, v0}, Lcom/a/a/a/br;->a([B)V
:goto_56
invoke-virtual {p0}, Lcom/a/a/a/br;->b()Z
move-result v0
if-nez v0, :cond_2
invoke-virtual {p0}, Lcom/a/a/a/br;->a()I
move-result v0
const/high16 v1, 0x1
if-le v0, v1, :cond_2
invoke-virtual {p0}, Lcom/a/a/a/br;->c()V
:try_end_67
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_67} :catch_68
goto :goto_56
:catch_68
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "There was a problem writing to the Crashlytics log."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2
:cond_79
move-object v0, p4
goto :goto_7
.end method
.method private static a(Lcom/a/a/ap;)V
.registers 5
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Lcom/a/a/ap;->a()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Error closing session file stream in the presence of an exception"
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method private a(Lcom/a/a/ar;ILjava/lang/StackTraceElement;Z)V
.registers 11
const/4 v0, 0x4
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v1, 0x0
invoke-virtual {p1, p2, v5}, Lcom/a/a/ar;->g(II)V
invoke-static {p3, p4}, Lcom/a/a/bf;->a(Ljava/lang/StackTraceElement;Z)I
move-result v2
invoke-virtual {p1, v2}, Lcom/a/a/ar;->b(I)V
invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z
move-result v2
if-eqz v2, :cond_73
invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I
move-result v2
invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I
move-result v2
int-to-long v2, v2
invoke-virtual {p1, v4, v2, v3}, Lcom/a/a/ar;->a(IJ)V
:goto_20
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v2
invoke-virtual {p1, v5, v2}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_58
const/4 v2, 0x3
invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v3
invoke-virtual {p1, v2, v3}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
:cond_58
invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z
move-result v2
if-nez v2, :cond_6c
invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I
move-result v2
if-lez v2, :cond_6c
invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I
move-result v2
int-to-long v2, v2
invoke-virtual {p1, v0, v2, v3}, Lcom/a/a/ar;->a(IJ)V
:cond_6c
const/4 v2, 0x5
if-eqz p4, :cond_79
:goto_6f
invoke-virtual {p1, v2, v0}, Lcom/a/a/ar;->a(II)V
return-void
:cond_73
const-wide/16 v2, 0x0
invoke-virtual {p1, v4, v2, v3}, Lcom/a/a/ar;->a(IJ)V
goto :goto_20
:cond_79
move v0, v1
goto :goto_6f
.end method
.method private static a(Lcom/a/a/ar;Ljava/io/File;)V
.registers 7
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p1}, Ljava/io/File;->length()J
move-result-wide v0
long-to-int v0, v0
new-array v3, v0, [B
:try_start_e
new-instance v1, Ljava/io/FileInputStream;
invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_13
.catchall {:try_start_e .. :try_end_13} :catchall_2a
const/4 v0, 0x0
:try_start_14
:goto_14
array-length v2, v3
if-ge v0, v2, :cond_21
array-length v2, v3
sub-int/2addr v2, v0
invoke-virtual {v1, v3, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
:try_end_1c
.catchall {:try_start_14 .. :try_end_1c} :catchall_53
move-result v2
if-ltz v2, :cond_21
add-int/2addr v0, v2
goto :goto_14
:cond_21
const-string v0, "Failed to close file input stream."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
invoke-virtual {p0, v3}, Lcom/a/a/ar;->a([B)V
:goto_29
return-void
:catchall_2a
move-exception v0
move-object v1, v2
:goto_2c
const-string v2, "Failed to close file input stream."
invoke-static {v1, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:cond_32
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Tried to include a file that doesn\'t exist: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v3, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_29
:catchall_53
move-exception v0
goto :goto_2c
.end method
.method private a(Lcom/a/a/ar;Ljava/lang/String;)V
.registers 13
const/4 v1, 0x0
const/4 v0, 0x4
new-array v2, v0, [Ljava/lang/String;
const-string v0, "SessionUser"
aput-object v0, v2, v1
const/4 v0, 0x1
const-string v3, "SessionApp"
aput-object v3, v2, v0
const/4 v0, 0x2
const-string v3, "SessionOS"
aput-object v3, v2, v0
const/4 v0, 0x3
const-string v3, "SessionDevice"
aput-object v3, v2, v0
array-length v3, v2
move v0, v1
:goto_19
if-ge v0, v3, :cond_90
aget-object v4, v2, v0
new-instance v5, Lcom/a/a/w;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Lcom/a/a/w;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v5}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v5
array-length v6, v5
if-nez v6, :cond_64
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v5
invoke-virtual {v5}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v5
const-string v6, "Crashlytics"
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Can\'t find "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v7, " data for session ID "
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const/4 v7, 0x0
invoke-interface {v5, v6, v4, v7}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_61
add-int/lit8 v0, v0, 0x1
goto :goto_19
:cond_64
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v6
invoke-virtual {v6}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v6
const-string v7, "Crashlytics"
new-instance v8, Ljava/lang/StringBuilder;
const-string v9, "Collecting "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v8, " data for session ID "
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v6, v7, v4}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
aget-object v4, v5, v1
invoke-static {p1, v4}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/io/File;)V
goto :goto_61
:cond_90
return-void
.end method
.method private a(Lcom/a/a/ar;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 12
const/4 v0, 0x1
const/4 v1, 0x2
invoke-virtual {p1, v0, v1}, Lcom/a/a/ar;->g(II)V
invoke-direct {p0, p2, p3}, Lcom/a/a/bf;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)I
move-result v0
invoke-virtual {p1, v0}, Lcom/a/a/ar;->b(I)V
iget-object v3, p0, Lcom/a/a/bf;->y:[Ljava/lang/StackTraceElement;
const/4 v4, 0x4
const/4 v5, 0x1
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v5}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
iget-object v0, p0, Lcom/a/a/bf;->w:[Ljava/lang/Thread;
array-length v7, v0
const/4 v0, 0x0
move v6, v0
:goto_1b
if-ge v6, v7, :cond_34
iget-object v0, p0, Lcom/a/a/bf;->w:[Ljava/lang/Thread;
aget-object v2, v0, v6
iget-object v0, p0, Lcom/a/a/bf;->x:Ljava/util/List;
invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, [Ljava/lang/StackTraceElement;
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
add-int/lit8 v0, v6, 0x1
move v6, v0
goto :goto_1b
:cond_34
const/4 v0, 0x1
const/4 v1, 0x2
invoke-direct {p0, p1, p3, v0, v1}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/lang/Throwable;II)V
const/4 v0, 0x3
const/4 v1, 0x2
invoke-virtual {p1, v0, v1}, Lcom/a/a/ar;->g(II)V
invoke-static {}, Lcom/a/a/bf;->s()I
move-result v0
invoke-virtual {p1, v0}, Lcom/a/a/ar;->b(I)V
const/4 v0, 0x1
sget-object v1, Lcom/a/a/bf;->f:Lcom/a/a/an;
invoke-virtual {p1, v0, v1}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v0, 0x2
sget-object v1, Lcom/a/a/bf;->f:Lcom/a/a/an;
invoke-virtual {p1, v0, v1}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v0, 0x3
const-wide/16 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/ar;->a(IJ)V
const/4 v0, 0x4
const/4 v1, 0x2
invoke-virtual {p1, v0, v1}, Lcom/a/a/ar;->g(II)V
invoke-direct {p0}, Lcom/a/a/bf;->r()I
move-result v0
invoke-virtual {p1, v0}, Lcom/a/a/ar;->b(I)V
const/4 v0, 0x1
const-wide/16 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/ar;->a(IJ)V
const/4 v0, 0x2
const-wide/16 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/ar;->a(IJ)V
const/4 v0, 0x3
iget-object v1, p0, Lcom/a/a/bf;->q:Lcom/a/a/an;
invoke-virtual {p1, v0, v1}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
iget-object v0, p0, Lcom/a/a/bf;->r:Lcom/a/a/an;
if-eqz v0, :cond_7f
const/4 v0, 0x4
iget-object v1, p0, Lcom/a/a/bf;->r:Lcom/a/a/an;
invoke-virtual {p1, v0, v1}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
:cond_7f
return-void
.end method
.method private a(Lcom/a/a/ar;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
.registers 10
const/4 v2, 0x2
const/4 v1, 0x1
invoke-virtual {p1, v1, v2}, Lcom/a/a/ar;->g(II)V
invoke-direct {p0, p2, p3, p4, p5}, Lcom/a/a/bf;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
move-result v0
invoke-virtual {p1, v0}, Lcom/a/a/ar;->b(I)V
invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
invoke-virtual {p1, v1, v0}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
invoke-virtual {p1, v2, p4}, Lcom/a/a/ar;->a(II)V
array-length v1, p3
const/4 v0, 0x0
:goto_1c
if-ge v0, v1, :cond_27
aget-object v2, p3, v0
const/4 v3, 0x3
invoke-direct {p0, p1, v3, v2, p5}, Lcom/a/a/bf;->a(Lcom/a/a/ar;ILjava/lang/StackTraceElement;Z)V
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_27
return-void
.end method
.method private a(Lcom/a/a/ar;Ljava/lang/Throwable;II)V
.registers 12
const/4 v0, 0x0
const/4 v6, 0x1
const/4 v1, 0x2
invoke-virtual {p1, p4, v1}, Lcom/a/a/ar;->g(II)V
invoke-direct {p0, p2, v6}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;I)I
move-result v1
invoke-virtual {p1, v1}, Lcom/a/a/ar;->b(I)V
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v1
invoke-virtual {p1, v6, v1}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_2a
const/4 v2, 0x3
invoke-static {v1}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v1
invoke-virtual {p1, v2, v1}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
:cond_2a
invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v2
array-length v3, v2
move v1, v0
:goto_30
if-ge v1, v3, :cond_3b
aget-object v4, v2, v1
const/4 v5, 0x4
invoke-direct {p0, p1, v5, v4, v6}, Lcom/a/a/bf;->a(Lcom/a/a/ar;ILjava/lang/StackTraceElement;Z)V
add-int/lit8 v1, v1, 0x1
goto :goto_30
:cond_3b
invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v1
if-eqz v1, :cond_4b
const/16 v2, 0x8
if-ge p3, v2, :cond_4c
add-int/lit8 v0, p3, 0x1
const/4 v2, 0x6
invoke-direct {p0, p1, v1, v0, v2}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/lang/Throwable;II)V
:goto_4b
:cond_4b
return-void
:goto_4c
:cond_4c
if-eqz v1, :cond_55
invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v1
add-int/lit8 v0, v0, 0x1
goto :goto_4c
:cond_55
const/4 v1, 0x7
invoke-virtual {p1, v1, v0}, Lcom/a/a/ar;->a(II)V
goto :goto_4b
.end method
.method private a(Lcom/a/a/ar;Ljava/util/Map;)V
.registers 8
const/4 v4, 0x2
invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-virtual {p1, v4, v4}, Lcom/a/a/ar;->g(II)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-static {v1, v2}, Lcom/a/a/bf;->a(Ljava/lang/String;Ljava/lang/String;)I
move-result v1
invoke-virtual {p1, v1}, Lcom/a/a/ar;->b(I)V
const/4 v2, 0x1
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v1
invoke-virtual {p1, v2, v1}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_43
const-string v0, ""
:cond_43
invoke-static {v0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
invoke-virtual {p1, v4, v0}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
goto :goto_9
:cond_4b
return-void
.end method
.method private a(Lcom/a/a/ar;[Ljava/io/File;Ljava/lang/String;)V
.registers 14
const/4 v0, 0x0
sget-object v1, Lcom/a/a/a/bc;->a:Ljava/util/Comparator;
invoke-static {p2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
array-length v2, p2
move v1, v0
:goto_8
if-ge v1, v2, :cond_46
aget-object v0, p2, v1
:try_start_c
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v6, "Found Non Fatal for session ID %s in %s "
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object p3, v7, v8
const/4 v8, 0x1
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1, v0}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/io/File;)V
:goto_31
:try_end_31
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_35
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:catch_35
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
const-string v5, "Error writting non-fatal to session."
invoke-interface {v3, v4, v5, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_31
:cond_46
return-void
.end method
.method static synthetic a(Lcom/a/a/bf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 12
const/4 v2, 0x0
:try_start_1
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/a/a/bf;->k:Ljava/io/File;
const-string v3, "crash_marker"
invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
invoke-direct {p0}, Lcom/a/a/bf;->n()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_67
invoke-static {v0}, Lcom/a/a/e;->b(Ljava/lang/String;)V
new-instance v7, Lcom/a/a/ap;
iget-object v1, p0, Lcom/a/a/bf;->k:Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "SessionCrash"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v7, v1, v0}, Lcom/a/a/ap;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_end_30
.catchall {:try_start_1 .. :try_end_30} :catchall_98
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_79
:try_start_30
invoke-static {v7}, Lcom/a/a/ar;->a(Ljava/io/OutputStream;)Lcom/a/a/ar;
move-result-object v2
const-string v5, "crash"
const/4 v6, 0x1
move-object v0, p0
move-object v1, p1
move-object v3, p2
move-object v4, p3
invoke-direct/range {v0 .. v6}, Lcom/a/a/bf;->a(Ljava/util/Date;Lcom/a/a/ar;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
:try_end_3e
.catchall {:try_start_30 .. :try_end_3e} :catchall_a5
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3e} :catch_a7
move-object v0, v7
:goto_3f
const-string v1, "Failed to flush to session begin file."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v1, "Failed to close fatal exception file output stream."
invoke-static {v0, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:goto_49
invoke-direct {p0}, Lcom/a/a/bf;->m()V
invoke-direct {p0}, Lcom/a/a/bf;->l()V
iget-object v0, p0, Lcom/a/a/bf;->k:Ljava/io/File;
sget-object v1, Lcom/a/a/bf;->a:Ljava/io/FilenameFilter;
const/4 v2, 0x4
sget-object v3, Lcom/a/a/bf;->c:Ljava/util/Comparator;
invoke-static {v0, v1, v2, v3}, Lcom/a/a/al;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/e;->p()Z
move-result v0
if-nez v0, :cond_66
invoke-direct {p0}, Lcom/a/a/bf;->p()V
:cond_66
return-void
:cond_67
:try_start_67
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v3, "Tried to write a fatal exception while no session was open."
const/4 v4, 0x0
invoke-interface {v0, v1, v3, v4}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_77
.catchall {:try_start_67 .. :try_end_77} :catchall_98
.catch Ljava/lang/Exception; {:try_start_67 .. :try_end_77} :catch_79
move-object v0, v2
goto :goto_3f
:catch_79
move-exception v0
move-object v7, v2
:goto_7b
:try_start_7b
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v3, "Crashlytics"
const-string v4, "An error occurred in the fatal exception logger"
invoke-interface {v1, v3, v4, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-direct {p0, v0, v7}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
:try_end_8d
.catchall {:try_start_7b .. :try_end_8d} :catchall_a5
const-string v0, "Failed to flush to session begin file."
invoke-static {v2, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v0, "Failed to close fatal exception file output stream."
invoke-static {v7, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
goto :goto_49
:catchall_98
move-exception v0
move-object v7, v2
:goto_9a
const-string v1, "Failed to flush to session begin file."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v1, "Failed to close fatal exception file output stream."
invoke-static {v7, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catchall_a5
move-exception v0
goto :goto_9a
:catch_a7
move-exception v0
goto :goto_7b
.end method
.method private a(Ljava/lang/String;)V
.registers 6
new-instance v0, Lcom/a/a/x;
invoke-direct {v0, p1}, Lcom/a/a/x;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_b
if-ge v0, v2, :cond_15
aget-object v3, v1, v0
invoke-virtual {v3}, Ljava/io/File;->delete()Z
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_15
return-void
.end method
.method private a(Ljava/lang/String;I)V
.registers 7
iget-object v0, p0, Lcom/a/a/bf;->k:Ljava/io/File;
new-instance v1, Lcom/a/a/w;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "SessionEvent"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/a/a/w;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/a/a/bf;->c:Ljava/util/Comparator;
invoke-static {v0, v1, p2, v2}, Lcom/a/a/al;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V
return-void
.end method
.method private a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
.registers 8
if-eqz p2, :cond_10
const/4 v2, 0x0
:try_start_3
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_28
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_11
:try_start_8
invoke-static {p1, v1}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;Ljava/io/Writer;)V
:try_end_b
.catchall {:try_start_8 .. :try_end_b} :catchall_30
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_32
const-string v0, "Failed to close stack trace writer."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:cond_10
:goto_10
return-void
:catch_11
move-exception v0
move-object v1, v2
:try_start_13
:goto_13
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v2
invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v2
const-string v3, "Crashlytics"
const-string v4, "Failed to create PrintWriter"
invoke-interface {v2, v3, v4, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_22
.catchall {:try_start_13 .. :try_end_22} :catchall_30
const-string v0, "Failed to close stack trace writer."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
goto :goto_10
:catchall_28
move-exception v0
move-object v1, v2
:goto_2a
const-string v2, "Failed to close stack trace writer."
invoke-static {v1, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catchall_30
move-exception v0
goto :goto_2a
:catch_32
move-exception v0
goto :goto_13
.end method
.method private static a(Ljava/lang/Throwable;Ljava/io/Writer;)V
.registers 9
const/4 v1, 0x0
const/4 v0, 0x1
move v3, v0
:goto_3
if-eqz p0, :cond_8e
:try_start_5
invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_68
const/4 v0, 0x0
:goto_c
if-eqz v0, :cond_71
move-object v2, v0
:goto_f
if-eqz v3, :cond_75
const-string v0, ""
:goto_13
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ": "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v2
array-length v3, v2
move v0, v1
:goto_45
if-ge v0, v3, :cond_78
aget-object v4, v2, v0
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "\tat "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_45
:cond_68
const-string v2, "(\r\n|\n|\u000c)"
const-string v4, " "
invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_c
:cond_71
const-string v0, ""
move-object v2, v0
goto :goto_f
:cond_75
const-string v0, "Caused by: "
goto :goto_13
:cond_78
invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
:try_end_7b
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7b} :catch_7e
move-result-object p0
move v3, v1
goto :goto_3
:catch_7e
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Could not write stack trace"
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_8e
return-void
.end method
.method private a(Ljava/util/Date;Lcom/a/a/ar;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
.registers 27
invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J
move-result-wide v4
const-wide/16 v6, 0x3e8
div-long v15, v4, v6
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v4
invoke-virtual {v4}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lcom/a/a/a/bc;->b(Landroid/content/Context;)F
move-result v4
move-object/from16 v0, p0
iget-boolean v5, v0, Lcom/a/a/bf;->v:Z
invoke-static {v5}, Lcom/a/a/a/bc;->a(Z)I
move-result v5
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v6
invoke-virtual {v6}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lcom/a/a/a/bc;->c(Landroid/content/Context;)Z
move-result v6
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v7
invoke-virtual {v7}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v7
invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v7
iget v7, v7, Landroid/content/res/Configuration;->orientation:I
invoke-static {}, Lcom/a/a/a/bc;->c()J
move-result-wide v8
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v10
invoke-virtual {v10}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v10
invoke-static {v10}, Lcom/a/a/a/bc;->a(Landroid/content/Context;)J
move-result-wide v10
sub-long/2addr v8, v10
invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;
move-result-object v10
invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Lcom/a/a/a/bc;->b(Ljava/lang/String;)J
move-result-wide v10
invoke-static {}, Lcom/a/a/e;->j()Ljava/lang/String;
move-result-object v12
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v13
invoke-virtual {v13}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v13
invoke-static {v12, v13}, Lcom/a/a/a/bc;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
move-result-object v12
move-object/from16 v0, p0
iput-object v12, v0, Lcom/a/a/bf;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;
new-instance v12, Ljava/util/LinkedList;
invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V
move-object/from16 v0, p0
iput-object v12, v0, Lcom/a/a/bf;->x:Ljava/util/List;
invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v12
move-object/from16 v0, p0
iput-object v12, v0, Lcom/a/a/bf;->y:[Ljava/lang/StackTraceElement;
if-eqz p6, :cond_bf
invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;
move-result-object v13
invoke-interface {v13}, Ljava/util/Map;->size()I
move-result v12
new-array v12, v12, [Ljava/lang/Thread;
move-object/from16 v0, p0
iput-object v12, v0, Lcom/a/a/bf;->w:[Ljava/lang/Thread;
const/4 v12, 0x0
invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v13
invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v17
move v14, v12
:goto_96
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-eqz v12, :cond_c6
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Ljava/util/Map$Entry;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/a/a/bf;->w:[Ljava/lang/Thread;
move-object/from16 v18, v0
invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/lang/Thread;
aput-object v13, v18, v14
move-object/from16 v0, p0
iget-object v13, v0, Lcom/a/a/bf;->x:Ljava/util/List;
invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v12
invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v12, v14, 0x1
move v14, v12
goto :goto_96
:cond_bf
const/4 v12, 0x0
new-array v12, v12, [Ljava/lang/Thread;
move-object/from16 v0, p0
iput-object v12, v0, Lcom/a/a/bf;->w:[Ljava/lang/Thread;
:cond_c6
move-object/from16 v0, p0
iget-object v12, v0, Lcom/a/a/bf;->u:Lcom/a/a/a/br;
move-object/from16 v0, p0
invoke-direct {v0, v12}, Lcom/a/a/bf;->a(Lcom/a/a/a/br;)Lcom/a/a/an;
move-result-object v14
if-nez v14, :cond_e3
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v12
invoke-virtual {v12}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v12
const-string v13, "Crashlytics"
const-string v17, "No log data to include with this event."
move-object/from16 v0, v17
invoke-interface {v12, v13, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_e3
move-object/from16 v0, p0
iget-object v12, v0, Lcom/a/a/bf;->u:Lcom/a/a/a/br;
const-string v13, "There was a problem closing the Crashlytics log file."
invoke-static {v12, v13}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
const/4 v12, 0x0
move-object/from16 v0, p0
iput-object v12, v0, Lcom/a/a/bf;->u:Lcom/a/a/a/br;
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v12
invoke-virtual {v12}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v12
const-string v13, "com.crashlytics.CollectCustomKeys"
const/16 v17, 0x1
move/from16 v0, v17
invoke-static {v12, v13, v0}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v12
if-nez v12, :cond_234
new-instance v12, Ljava/util/TreeMap;
invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V
:goto_10a
const/16 v13, 0xa
const/16 v17, 0x2
move-object/from16 v0, p2
move/from16 v1, v17
invoke-virtual {v0, v13, v1}, Lcom/a/a/ar;->g(II)V
const/4 v13, 0x1
move-wide v0, v15
invoke-static {v13, v0, v1}, Lcom/a/a/ar;->b(IJ)I
move-result v13
add-int/lit8 v13, v13, 0x0
const/16 v17, 0x2
invoke-static/range {p5 .. p5}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v17
add-int v13, v13, v17
move-object/from16 v0, p0
move-object/from16 v1, p3
move-object/from16 v2, p4
invoke-direct {v0, v1, v2, v12}, Lcom/a/a/bf;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I
move-result v17
const/16 v18, 0x3
invoke-static/range {v18 .. v18}, Lcom/a/a/ar;->a(I)I
move-result v18
invoke-static/range {v17 .. v17}, Lcom/a/a/ar;->c(I)I
move-result v19
add-int v18, v18, v19
add-int v17, v17, v18
add-int v13, v13, v17
invoke-static/range {v4 .. v11}, Lcom/a/a/bf;->a(FIZIJJ)I
move-result v17
const/16 v18, 0x5
invoke-static/range {v18 .. v18}, Lcom/a/a/ar;->a(I)I
move-result v18
invoke-static/range {v17 .. v17}, Lcom/a/a/ar;->c(I)I
move-result v19
add-int v18, v18, v19
add-int v17, v17, v18
add-int v13, v13, v17
if-eqz v14, :cond_171
const/16 v17, 0x1
move/from16 v0, v17
invoke-static {v0, v14}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v17
const/16 v18, 0x6
invoke-static/range {v18 .. v18}, Lcom/a/a/ar;->a(I)I
move-result v18
invoke-static/range {v17 .. v17}, Lcom/a/a/ar;->c(I)I
move-result v19
add-int v18, v18, v19
add-int v17, v17, v18
add-int v13, v13, v17
:cond_171
move-object/from16 v0, p2
invoke-virtual {v0, v13}, Lcom/a/a/ar;->b(I)V
const/4 v13, 0x1
move-object/from16 v0, p2
move-wide v1, v15
invoke-virtual {v0, v13, v1, v2}, Lcom/a/a/ar;->a(IJ)V
const/4 v13, 0x2
invoke-static/range {p5 .. p5}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v15
move-object/from16 v0, p2
invoke-virtual {v0, v13, v15}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v13, 0x3
const/4 v15, 0x2
move-object/from16 v0, p2
invoke-virtual {v0, v13, v15}, Lcom/a/a/ar;->g(II)V
move-object/from16 v0, p0
move-object/from16 v1, p3
move-object/from16 v2, p4
invoke-direct {v0, v1, v2, v12}, Lcom/a/a/bf;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I
move-result v13
move-object/from16 v0, p2
invoke-virtual {v0, v13}, Lcom/a/a/ar;->b(I)V
move-object/from16 v0, p0
move-object/from16 v1, p2
move-object/from16 v2, p3
move-object/from16 v3, p4
invoke-direct {v0, v1, v2, v3}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/lang/Thread;Ljava/lang/Throwable;)V
if-eqz v12, :cond_1b7
invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z
move-result v13
if-nez v13, :cond_1b7
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v1, v12}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/util/Map;)V
:cond_1b7
move-object/from16 v0, p0
iget-object v12, v0, Lcom/a/a/bf;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;
if-eqz v12, :cond_1ce
const/4 v13, 0x3
move-object/from16 v0, p0
iget-object v12, v0, Lcom/a/a/bf;->t:Landroid/app/ActivityManager$RunningAppProcessInfo;
iget v12, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
const/16 v15, 0x64
if-eq v12, v15, :cond_24f
const/4 v12, 0x1
:goto_1c9
move-object/from16 v0, p2
invoke-virtual {v0, v13, v12}, Lcom/a/a/ar;->a(IZ)V
:cond_1ce
const/4 v12, 0x4
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v13
invoke-virtual {v13}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v13
invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v13
invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v13
iget v13, v13, Landroid/content/res/Configuration;->orientation:I
move-object/from16 v0, p2
invoke-virtual {v0, v12, v13}, Lcom/a/a/ar;->a(II)V
const/4 v12, 0x5
const/4 v13, 0x2
move-object/from16 v0, p2
invoke-virtual {v0, v12, v13}, Lcom/a/a/ar;->g(II)V
invoke-static/range {v4 .. v11}, Lcom/a/a/bf;->a(FIZIJJ)I
move-result v12
move-object/from16 v0, p2
invoke-virtual {v0, v12}, Lcom/a/a/ar;->b(I)V
const/4 v12, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v12, v4}, Lcom/a/a/ar;->a(IF)V
const/4 v4, 0x2
move-object/from16 v0, p2
invoke-virtual {v0, v4, v5}, Lcom/a/a/ar;->c(II)V
const/4 v4, 0x3
move-object/from16 v0, p2
invoke-virtual {v0, v4, v6}, Lcom/a/a/ar;->a(IZ)V
const/4 v4, 0x4
move-object/from16 v0, p2
invoke-virtual {v0, v4, v7}, Lcom/a/a/ar;->a(II)V
const/4 v4, 0x5
move-object/from16 v0, p2
invoke-virtual {v0, v4, v8, v9}, Lcom/a/a/ar;->a(IJ)V
const/4 v4, 0x6
move-object/from16 v0, p2
invoke-virtual {v0, v4, v10, v11}, Lcom/a/a/ar;->a(IJ)V
if-eqz v14, :cond_233
const/4 v4, 0x6
const/4 v5, 0x2
move-object/from16 v0, p2
invoke-virtual {v0, v4, v5}, Lcom/a/a/ar;->g(II)V
const/4 v4, 0x1
invoke-static {v4, v14}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v4
move-object/from16 v0, p2
invoke-virtual {v0, v4}, Lcom/a/a/ar;->b(I)V
const/4 v4, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v4, v14}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
:cond_233
return-void
:cond_234
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v12
invoke-virtual {v12}, Lcom/a/a/e;->b()Ljava/util/Map;
move-result-object v13
if-eqz v13, :cond_252
invoke-interface {v13}, Ljava/util/Map;->size()I
move-result v12
const/16 v17, 0x1
move/from16 v0, v17
if-le v12, v0, :cond_252
new-instance v12, Ljava/util/TreeMap;
invoke-direct {v12, v13}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
goto/16 :goto_10a
:cond_24f
const/4 v12, 0x0
goto/16 :goto_1c9
:cond_252
move-object v12, v13
goto/16 :goto_10a
.end method
.method static synthetic a(Lcom/a/a/bf;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/a/a/bf;->v:Z
return p1
.end method
.method static synthetic a(Lcom/a/a/bf;Ljava/io/FilenameFilter;)[Ljava/io/File;
.registers 3
invoke-direct {p0, p1}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/io/FilenameFilter;)[Ljava/io/File;
.registers 3
iget-object v0, p0, Lcom/a/a/bf;->k:Ljava/io/File;
invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v0
if-nez v0, :cond_b
const/4 v0, 0x0
new-array v0, v0, [Ljava/io/File;
:cond_b
return-object v0
.end method
.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)I
.registers 12
const/4 v8, 0x3
const/4 v2, 0x0
const/4 v7, 0x1
iget-object v0, p0, Lcom/a/a/bf;->y:[Ljava/lang/StackTraceElement;
const/4 v1, 0x4
invoke-direct {p0, p1, v0, v1, v7}, Lcom/a/a/bf;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
move-result v0
invoke-static {v7}, Lcom/a/a/ar;->a(I)I
move-result v1
invoke-static {v0}, Lcom/a/a/ar;->c(I)I
move-result v3
add-int/2addr v1, v3
add-int/2addr v0, v1
add-int/lit8 v0, v0, 0x0
iget-object v1, p0, Lcom/a/a/bf;->w:[Ljava/lang/Thread;
array-length v4, v1
move v1, v2
move v3, v0
:goto_1b
if-ge v1, v4, :cond_3c
iget-object v0, p0, Lcom/a/a/bf;->w:[Ljava/lang/Thread;
aget-object v5, v0, v1
iget-object v0, p0, Lcom/a/a/bf;->x:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/StackTraceElement;
invoke-direct {p0, v5, v0, v2, v2}, Lcom/a/a/bf;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
move-result v0
invoke-static {v7}, Lcom/a/a/ar;->a(I)I
move-result v5
invoke-static {v0}, Lcom/a/a/ar;->c(I)I
move-result v6
add-int/2addr v5, v6
add-int/2addr v0, v5
add-int/2addr v3, v0
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1b
:cond_3c
invoke-direct {p0, p2, v7}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;I)I
move-result v0
const/4 v1, 0x2
invoke-static {v1}, Lcom/a/a/ar;->a(I)I
move-result v1
invoke-static {v0}, Lcom/a/a/ar;->c(I)I
move-result v2
add-int/2addr v1, v2
add-int/2addr v0, v1
add-int/2addr v0, v3
invoke-static {}, Lcom/a/a/bf;->s()I
move-result v1
invoke-static {v8}, Lcom/a/a/ar;->a(I)I
move-result v2
invoke-static {v1}, Lcom/a/a/ar;->c(I)I
move-result v3
add-int/2addr v2, v3
add-int/2addr v1, v2
add-int/2addr v0, v1
invoke-direct {p0}, Lcom/a/a/bf;->r()I
move-result v1
invoke-static {v8}, Lcom/a/a/ar;->a(I)I
move-result v2
invoke-static {v1}, Lcom/a/a/ar;->c(I)I
move-result v3
add-int/2addr v2, v3
add-int/2addr v1, v2
add-int/2addr v0, v1
return v0
.end method
.method private static b(Ljava/lang/String;)Lcom/a/a/an;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-static {p0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
goto :goto_3
.end method
.method private b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/a/a/bf;->s:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/a/a/m;
invoke-direct {v1, p0, p1}, Lcom/a/a/m;-><init>(Lcom/a/a/bf;Ljava/util/concurrent/Callable;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
:try_end_a
.catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_c
move-result-object v0
:goto_b
return-object v0
:catch_c
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "Executor is shut down because we\'re handling a fatal crash."
invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_b
.end method
.method static synthetic b(Lcom/a/a/bf;)V
.registers 1
invoke-direct {p0}, Lcom/a/a/bf;->m()V
return-void
.end method
.method static synthetic b(Lcom/a/a/bf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 13
const/4 v2, 0x0
invoke-direct {p0}, Lcom/a/a/bf;->n()Ljava/lang/String;
move-result-object v8
if-eqz v8, :cond_b7
invoke-static {v8}, Lcom/a/a/e;->a(Ljava/lang/String;)V
:try_start_a
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Crashlytics is logging non-fatal exception \""
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\" from thread "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/a/a/bf;->g:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
move-result v0
invoke-static {v0}, Lcom/a/a/a/bc;->a(I)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "SessionEvent"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v7, Lcom/a/a/ap;
iget-object v1, p0, Lcom/a/a/bf;->k:Ljava/io/File;
invoke-direct {v7, v1, v0}, Lcom/a/a/ap;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_end_5c
.catchall {:try_start_a .. :try_end_5c} :catchall_99
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_5c} :catch_7a
:try_start_5c
invoke-static {v7}, Lcom/a/a/ar;->a(Ljava/io/OutputStream;)Lcom/a/a/ar;
move-result-object v2
const-string v5, "error"
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, p2
move-object v4, p3
invoke-direct/range {v0 .. v6}, Lcom/a/a/bf;->a(Ljava/util/Date;Lcom/a/a/ar;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
:try_end_6a
.catchall {:try_start_5c .. :try_end_6a} :catchall_c7
.catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6a} :catch_cc
const-string v0, "Failed to flush to non-fatal file."
invoke-static {v2, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v0, "Failed to close non-fatal file output stream."
invoke-static {v7, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:goto_74
const/16 v0, 0x40
:try_start_76
invoke-direct {p0, v8, v0}, Lcom/a/a/bf;->a(Ljava/lang/String;I)V
:try_end_79
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_a6
:goto_79
return-void
:catch_7a
move-exception v0
move-object v1, v2
:goto_7c
:try_start_7c
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
const-string v5, "An error occurred in the non-fatal exception logger"
invoke-interface {v3, v4, v5, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-direct {p0, v0, v1}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
:try_end_8e
.catchall {:try_start_7c .. :try_end_8e} :catchall_ca
const-string v0, "Failed to flush to non-fatal file."
invoke-static {v2, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v0, "Failed to close non-fatal file output stream."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
goto :goto_74
:catchall_99
move-exception v0
move-object v1, v2
:goto_9b
const-string v3, "Failed to flush to non-fatal file."
invoke-static {v2, v3}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v2, "Failed to close non-fatal file output stream."
invoke-static {v1, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catch_a6
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "An error occurred when trimming non-fatal files."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_79
:cond_b7
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v3, "Tried to write a non-fatal exception while no session was open."
invoke-interface {v0, v1, v3, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_79
:catchall_c7
move-exception v0
move-object v1, v7
goto :goto_9b
:catchall_ca
move-exception v0
goto :goto_9b
:catch_cc
move-exception v0
move-object v1, v7
goto :goto_7c
.end method
.method static synthetic c(Lcom/a/a/bf;)V
.registers 1
invoke-direct {p0}, Lcom/a/a/bf;->l()V
return-void
.end method
.method private c(Ljava/lang/String;)V
.registers 20
const/4 v3, 0x0
const/4 v2, 0x0
:try_start_2
new-instance v16, Lcom/a/a/ap;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v1
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "SessionDevice"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, v16
invoke-direct {v0, v1, v4}, Lcom/a/a/ap;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_end_26
.catchall {:try_start_2 .. :try_end_26} :catchall_134
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_13e
:try_start_26
invoke-static/range {v16 .. v16}, Lcom/a/a/ar;->a(Ljava/io/OutputStream;)Lcom/a/a/ar;
:try_end_29
.catchall {:try_start_26 .. :try_end_29} :catchall_139
.catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_140
move-result-object v15
:try_start_2a
new-instance v1, Landroid/os/StatFs;
invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/a/a/a/bc;->b()I
move-result v2
sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-static {v3}, Lcom/a/a/bf;->b(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v4
sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-static {v3}, Lcom/a/a/bf;->b(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v13
sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
invoke-static {v3}, Lcom/a/a/bf;->b(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v14
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I
move-result v5
invoke-static {}, Lcom/a/a/a/bc;->c()J
move-result-wide v6
invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I
move-result v3
int-to-long v8, v3
invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
move-result v1
int-to-long v10, v1
mul-long/2addr v8, v10
invoke-static {}, Lcom/a/a/a/bc;->d()Z
move-result v10
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/e;->g()Lcom/a/a/a/bp;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/bp;->e()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v3
invoke-virtual {v1}, Lcom/a/a/a/bp;->f()Ljava/util/Map;
move-result-object v11
invoke-static {}, Lcom/a/a/a/bc;->f()I
move-result v12
const/16 v1, 0x9
const/16 v17, 0x2
move/from16 v0, v17
invoke-virtual {v15, v1, v0}, Lcom/a/a/ar;->g(II)V
move-object/from16 v1, p0
invoke-direct/range {v1 .. v14}, Lcom/a/a/bf;->a(ILcom/a/a/an;Lcom/a/a/an;IJJZLjava/util/Map;ILcom/a/a/an;Lcom/a/a/an;)I
move-result v1
invoke-virtual {v15, v1}, Lcom/a/a/ar;->b(I)V
const/4 v1, 0x1
invoke-virtual {v15, v1, v3}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v1, 0x3
invoke-virtual {v15, v1, v2}, Lcom/a/a/ar;->b(II)V
const/4 v1, 0x4
invoke-virtual {v15, v1, v4}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v1, 0x5
invoke-virtual {v15, v1, v5}, Lcom/a/a/ar;->a(II)V
const/4 v1, 0x6
invoke-virtual {v15, v1, v6, v7}, Lcom/a/a/ar;->a(IJ)V
const/4 v1, 0x7
invoke-virtual {v15, v1, v8, v9}, Lcom/a/a/ar;->a(IJ)V
const/16 v1, 0xa
invoke-virtual {v15, v1, v10}, Lcom/a/a/ar;->a(IZ)V
invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_b7
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_114
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Ljava/util/Map$Entry;
move-object v3, v0
const/16 v1, 0xb
const/4 v2, 0x2
invoke-virtual {v15, v1, v2}, Lcom/a/a/ar;->g(II)V
invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/a/a/a/bq;
invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-static {v1, v2}, Lcom/a/a/bf;->a(Lcom/a/a/a/bq;Ljava/lang/String;)I
move-result v1
invoke-virtual {v15, v1}, Lcom/a/a/ar;->b(I)V
const/4 v2, 0x1
invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/a/a/a/bq;
iget v1, v1, Lcom/a/a/a/bq;->f:I
invoke-virtual {v15, v2, v1}, Lcom/a/a/ar;->b(II)V
const/4 v2, 0x2
invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v1
invoke-virtual {v15, v2, v1}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
:try_end_f8
.catchall {:try_start_2a .. :try_end_f8} :catchall_13c
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_f8} :catch_f9
goto :goto_b7
:catch_f9
move-exception v1
move-object v2, v15
move-object/from16 v3, v16
:try_start_fd
:goto_fd
move-object/from16 v0, p0
invoke-direct {v0, v1, v3}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
throw v1
:try_end_103
.catchall {:try_start_fd .. :try_end_103} :catchall_103
:catchall_103
move-exception v1
move-object v15, v2
move-object/from16 v16, v3
:goto_107
const-string v2, "Failed to flush session device info."
invoke-static {v15, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v2, "Failed to close session device file."
move-object/from16 v0, v16
invoke-static {v0, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v1
:cond_114
const/16 v1, 0xc
:try_start_116
invoke-virtual {v15, v1, v12}, Lcom/a/a/ar;->a(II)V
if-eqz v13, :cond_120
const/16 v1, 0xd
invoke-virtual {v15, v1, v13}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
:cond_120
if-eqz v14, :cond_127
const/16 v1, 0xe
invoke-virtual {v15, v1, v14}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
:cond_127
:try_end_127
.catchall {:try_start_116 .. :try_end_127} :catchall_13c
.catch Ljava/lang/Exception; {:try_start_116 .. :try_end_127} :catch_f9
const-string v1, "Failed to flush session device info."
invoke-static {v15, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v1, "Failed to close session device file."
move-object/from16 v0, v16
invoke-static {v0, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
return-void
:catchall_134
move-exception v1
move-object v15, v2
move-object/from16 v16, v3
goto :goto_107
:catchall_139
move-exception v1
move-object v15, v2
goto :goto_107
:catchall_13c
move-exception v1
goto :goto_107
:catch_13e
move-exception v1
goto :goto_fd
:catch_140
move-exception v1
move-object/from16 v3, v16
goto :goto_fd
.end method
.method static synthetic d(Lcom/a/a/bf;)Lcom/a/a/a/br;
.registers 2
iget-object v0, p0, Lcom/a/a/bf;->u:Lcom/a/a/a/br;
return-object v0
.end method
.method static synthetic e(Lcom/a/a/bf;)Z
.registers 2
invoke-direct {p0}, Lcom/a/a/bf;->k()Z
move-result v0
return v0
.end method
.method static synthetic f(Lcom/a/a/bf;)Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/a/a/bf;->l:Ljava/io/File;
return-object v0
.end method
.method static synthetic i()Ljava/util/regex/Pattern;
.registers 1
sget-object v0, Lcom/a/a/bf;->d:Ljava/util/regex/Pattern;
return-object v0
.end method
.method static synthetic j()Ljava/util/Map;
.registers 1
sget-object v0, Lcom/a/a/bf;->e:Ljava/util/Map;
return-object v0
.end method
.method private k()Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v2
invoke-virtual {v2}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v2
const-string v3, "com.crashlytics.CollectCustomLogs"
invoke-static {v2, v3, v1}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;Z)Z
move-result v2
if-nez v2, :cond_22
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Preferences requested not to collect custom logs. Aborting log file creation."
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_21
return v0
:cond_22
iget-object v2, p0, Lcom/a/a/bf;->u:Lcom/a/a/a/br;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Could not close log file: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/a/a/bf;->u:Lcom/a/a/a/br;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
const/4 v3, 0x0
:try_start_39
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "crashlytics-userlog-"
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v4
invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, ".temp"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v2, Ljava/io/File;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v5
invoke-virtual {v5}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v5
invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_63
:try_end_63
.catch Ljava/lang/Exception; {:try_start_39 .. :try_end_63} :catch_6f
new-instance v3, Lcom/a/a/a/br;
invoke-direct {v3, v2}, Lcom/a/a/a/br;-><init>(Ljava/io/File;)V
iput-object v3, p0, Lcom/a/a/bf;->u:Lcom/a/a/a/br;
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:try_end_6d
.catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_8e
move v0, v1
goto :goto_21
:catch_6f
move-exception v1
move-object v2, v3
:goto_71
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Could not create log file: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v3, v4, v2, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_21
:catch_8e
move-exception v1
goto :goto_71
.end method
.method private l()V
.registers 14
const/4 v2, 0x0
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
new-instance v1, Lcom/a/a/ao;
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/e;->g()Lcom/a/a/a/bp;
move-result-object v3
invoke-direct {v1, v3}, Lcom/a/a/ao;-><init>(Lcom/a/a/a/bp;)V
invoke-virtual {v1}, Lcom/a/a/ao;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v3, "Crashlytics"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Opening an new session with ID "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v1, v3, v5}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_start_33
new-instance v3, Lcom/a/a/ap;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v1
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "BeginSession"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v1, v5}, Lcom/a/a/ap;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_53
:try_end_53
.catchall {:try_start_33 .. :try_end_53} :catchall_225
.catch Ljava/lang/Exception; {:try_start_33 .. :try_end_53} :catch_1d6
invoke-static {v3}, Lcom/a/a/ar;->a(Ljava/io/OutputStream;)Lcom/a/a/ar;
:try_end_56
.catchall {:try_start_53 .. :try_end_56} :catchall_228
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_22d
move-result-object v1
const/4 v5, 0x1
:try_start_58
iget-object v6, p0, Lcom/a/a/bf;->n:Ljava/lang/String;
invoke-static {v6}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v6
invoke-virtual {v1, v5, v6}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v5, 0x2
invoke-static {v4}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v6
invoke-virtual {v1, v5, v6}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v5, 0x3
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v6
const-wide/16 v8, 0x3e8
div-long/2addr v6, v8
invoke-virtual {v1, v5, v6, v7}, Lcom/a/a/ar;->a(IJ)V
:try_end_74
.catchall {:try_start_58 .. :try_end_74} :catchall_22a
.catch Ljava/lang/Exception; {:try_start_58 .. :try_end_74} :catch_231
const-string v0, "Failed to flush to session begin file."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v0, "Failed to close begin session file."
invoke-static {v3, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:try_start_7e
new-instance v3, Lcom/a/a/ap;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v5, "SessionApp"
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v0, v1}, Lcom/a/a/ap;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_9e
:try_end_9e
.catchall {:try_start_7e .. :try_end_9e} :catchall_215
.catch Ljava/lang/Exception; {:try_start_7e .. :try_end_9e} :catch_1ea
invoke-static {v3}, Lcom/a/a/ar;->a(Ljava/io/OutputStream;)Lcom/a/a/ar;
:try_end_a1
.catchall {:try_start_9e .. :try_end_a1} :catchall_219
.catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_21e
move-result-object v1
:try_start_a2
invoke-static {}, Lcom/a/a/e;->j()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
invoke-static {}, Lcom/a/a/e;->m()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v5
invoke-static {}, Lcom/a/a/e;->l()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v6
invoke-static {}, Lcom/a/a/e;->n()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v7
invoke-virtual {v7}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v7
invoke-virtual {v7}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v7
invoke-virtual {v7}, Lcom/a/a/e;->g()Lcom/a/a/a/bp;
move-result-object v7
invoke-virtual {v7}, Lcom/a/a/a/bp;->b()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v7
invoke-static {}, Lcom/a/a/e;->k()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Lcom/a/a/a/bj;->a(Ljava/lang/String;)Lcom/a/a/a/bj;
move-result-object v8
invoke-virtual {v8}, Lcom/a/a/a/bj;->a()I
move-result v8
const/4 v9, 0x7
const/4 v10, 0x2
invoke-virtual {v1, v9, v10}, Lcom/a/a/ar;->g(II)V
const/4 v9, 0x1
invoke-static {v9, v0}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v9
add-int/lit8 v9, v9, 0x0
const/4 v10, 0x2
invoke-static {v10, v5}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v10
add-int/2addr v9, v10
const/4 v10, 0x3
invoke-static {v10, v6}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v10
add-int/2addr v9, v10
invoke-static {}, Lcom/a/a/bf;->q()I
move-result v10
const/4 v11, 0x5
invoke-static {v11}, Lcom/a/a/ar;->a(I)I
move-result v11
invoke-static {v10}, Lcom/a/a/ar;->c(I)I
move-result v12
add-int/2addr v11, v12
add-int/2addr v10, v11
add-int/2addr v9, v10
const/4 v10, 0x6
invoke-static {v10, v7}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v10
add-int/2addr v9, v10
const/16 v10, 0xa
invoke-static {v10, v8}, Lcom/a/a/ar;->e(II)I
move-result v10
add-int/2addr v9, v10
invoke-virtual {v1, v9}, Lcom/a/a/ar;->b(I)V
const/4 v9, 0x1
invoke-virtual {v1, v9, v0}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v0, 0x2
invoke-virtual {v1, v0, v5}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v0, 0x3
invoke-virtual {v1, v0, v6}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v0, 0x5
const/4 v5, 0x2
invoke-virtual {v1, v0, v5}, Lcom/a/a/ar;->g(II)V
invoke-static {}, Lcom/a/a/bf;->q()I
move-result v0
invoke-virtual {v1, v0}, Lcom/a/a/ar;->b(I)V
const/4 v0, 0x1
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v5
invoke-virtual {v5}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v5
const/4 v6, 0x0
invoke-static {v5, v6}, Lcom/a/a/a/cs;->a(Landroid/content/Context;Z)Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v0, v5}, Lcom/a/a/ar;->a(ILjava/lang/String;)V
const/4 v0, 0x6
invoke-virtual {v1, v0, v7}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/16 v0, 0xa
invoke-virtual {v1, v0, v8}, Lcom/a/a/ar;->b(II)V
:try_end_156
.catchall {:try_start_a2 .. :try_end_156} :catchall_21c
.catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_156} :catch_221
const-string v0, "Failed to flush to session app file."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v0, "Failed to close session app file."
invoke-static {v3, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:try_start_160
new-instance v1, Lcom/a/a/ap;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "SessionOS"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v0, v3}, Lcom/a/a/ap;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_end_180
.catchall {:try_start_160 .. :try_end_180} :catchall_210
.catch Ljava/lang/Exception; {:try_start_160 .. :try_end_180} :catch_1fe
:try_start_180
invoke-static {v1}, Lcom/a/a/ar;->a(Ljava/io/OutputStream;)Lcom/a/a/ar;
move-result-object v2
sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-static {v0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;
invoke-static {v3}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v3
invoke-static {}, Lcom/a/a/a/bc;->e()Z
move-result v5
const/16 v6, 0x8
const/4 v7, 0x2
invoke-virtual {v2, v6, v7}, Lcom/a/a/ar;->g(II)V
const/4 v6, 0x1
const/4 v7, 0x3
invoke-static {v6, v7}, Lcom/a/a/ar;->e(II)I
move-result v6
add-int/lit8 v6, v6, 0x0
const/4 v7, 0x2
invoke-static {v7, v0}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v7
add-int/2addr v6, v7
const/4 v7, 0x3
invoke-static {v7, v3}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v7
add-int/2addr v6, v7
const/4 v7, 0x4
invoke-static {v7, v5}, Lcom/a/a/ar;->b(IZ)I
move-result v7
add-int/2addr v6, v7
invoke-virtual {v2, v6}, Lcom/a/a/ar;->b(I)V
const/4 v6, 0x1
const/4 v7, 0x3
invoke-virtual {v2, v6, v7}, Lcom/a/a/ar;->b(II)V
const/4 v6, 0x2
invoke-virtual {v2, v6, v0}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v0, 0x3
invoke-virtual {v2, v0, v3}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
const/4 v0, 0x4
invoke-virtual {v2, v0, v5}, Lcom/a/a/ar;->a(IZ)V
:try_end_1c8
.catchall {:try_start_180 .. :try_end_1c8} :catchall_204
.catch Ljava/lang/Exception; {:try_start_180 .. :try_end_1c8} :catch_213
const-string v0, "Failed to flush to session OS file."
invoke-static {v2, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v0, "Failed to close session OS file."
invoke-static {v1, v0}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
invoke-direct {p0, v4}, Lcom/a/a/bf;->c(Ljava/lang/String;)V
return-void
:catch_1d6
move-exception v0
move-object v1, v2
:try_start_1d8
:goto_1d8
invoke-direct {p0, v0, v2}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
throw v0
:catchall_1dc
:try_end_1dc
.catchall {:try_start_1d8 .. :try_end_1dc} :catchall_1dc
move-exception v0
move-object v3, v2
move-object v2, v1
:goto_1df
const-string v1, "Failed to flush to session begin file."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v1, "Failed to close begin session file."
invoke-static {v3, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catch_1ea
move-exception v0
move-object v1, v2
:goto_1ec
:try_start_1ec
invoke-direct {p0, v0, v1}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
throw v0
:try_end_1f0
.catchall {:try_start_1ec .. :try_end_1f0} :catchall_1f0
:catchall_1f0
move-exception v0
move-object v3, v1
move-object v1, v2
:goto_1f3
const-string v2, "Failed to flush to session app file."
invoke-static {v1, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v1, "Failed to close session app file."
invoke-static {v3, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catch_1fe
move-exception v0
move-object v1, v2
:try_start_200
:goto_200
invoke-direct {p0, v0, v1}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
throw v0
:catchall_204
:try_end_204
.catchall {:try_start_200 .. :try_end_204} :catchall_204
move-exception v0
:goto_205
const-string v3, "Failed to flush to session OS file."
invoke-static {v2, v3}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v2, "Failed to close session OS file."
invoke-static {v1, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v0
:catchall_210
move-exception v0
move-object v1, v2
goto :goto_205
:catch_213
move-exception v0
goto :goto_200
:catchall_215
move-exception v0
move-object v1, v2
move-object v3, v2
goto :goto_1f3
:catchall_219
move-exception v0
move-object v1, v2
goto :goto_1f3
:catchall_21c
move-exception v0
goto :goto_1f3
:catch_21e
move-exception v0
move-object v1, v3
goto :goto_1ec
:catch_221
move-exception v0
move-object v2, v1
move-object v1, v3
goto :goto_1ec
:catchall_225
move-exception v0
move-object v3, v2
goto :goto_1df
:catchall_228
move-exception v0
goto :goto_1df
:catchall_22a
move-exception v0
move-object v2, v1
goto :goto_1df
:catch_22d
move-exception v0
move-object v1, v2
move-object v2, v3
goto :goto_1d8
:catch_231
move-exception v0
move-object v2, v3
goto :goto_1d8
.end method
.method private m()V
.registers 19
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
invoke-direct/range {p0 .. p0}, Lcom/a/a/bf;->o()[Ljava/io/File;
move-result-object v3
sget-object v1, Lcom/a/a/bf;->b:Ljava/util/Comparator;
invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
const/16 v1, 0x8
array-length v4, v3
invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I
move-result v4
const/4 v1, 0x0
:goto_16
if-ge v1, v4, :cond_24
aget-object v5, v3, v1
invoke-static {v5}, Lcom/a/a/bf;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v5
invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_16
:cond_24
new-instance v1, Lcom/a/a/v;
const/4 v3, 0x0
invoke-direct {v1, v3}, Lcom/a/a/v;-><init>(B)V
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v3
array-length v4, v3
const/4 v1, 0x0
:goto_32
if-ge v1, v4, :cond_70
aget-object v5, v3, v1
invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v6
sget-object v7, Lcom/a/a/bf;->d:Ljava/util/regex/Pattern;
invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v7
invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z
const/4 v8, 0x1
invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v7
invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_6d
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v7
invoke-virtual {v7}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v7
const-string v8, "Crashlytics"
new-instance v9, Ljava/lang/StringBuilder;
const-string v10, "Trimming open session file: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v7, v8, v6}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->delete()Z
:cond_6d
add-int/lit8 v1, v1, 0x1
goto :goto_32
:cond_70
invoke-direct/range {p0 .. p0}, Lcom/a/a/bf;->n()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_36d
const/4 v4, 0x0
const/4 v2, 0x0
:try_start_78
new-instance v3, Lcom/a/a/ap;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/a/a/bf;->k:Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v6, "SessionUser"
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v5, v1}, Lcom/a/a/ap;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_94
:try_end_94
.catchall {:try_start_78 .. :try_end_94} :catchall_38c
.catch Ljava/lang/Exception; {:try_start_78 .. :try_end_94} :catch_2e9
invoke-static {v3}, Lcom/a/a/ar;->a(Ljava/io/OutputStream;)Lcom/a/a/ar;
move-result-object v2
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/e;->s()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v4
invoke-virtual {v4}, Lcom/a/a/e;->u()Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v5
invoke-virtual {v5}, Lcom/a/a/e;->t()Ljava/lang/String;
:try_end_af
.catchall {:try_start_94 .. :try_end_af} :catchall_2f1
.catch Ljava/lang/Exception; {:try_start_94 .. :try_end_af} :catch_390
move-result-object v6
if-nez v1, :cond_292
if-nez v4, :cond_292
if-nez v6, :cond_292
const-string v1, "Failed to flush session user file."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v1, "Failed to close session user file."
invoke-static {v3, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:goto_c0
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/e;->x()Lcom/a/a/a/as;
move-result-object v1
if-eqz v1, :cond_35d
iget v8, v1, Lcom/a/a/a/as;->a:I
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Closing all open sessions."
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct/range {p0 .. p0}, Lcom/a/a/bf;->o()[Ljava/io/File;
move-result-object v9
if-eqz v9, :cond_36c
array-length v1, v9
if-lez v1, :cond_36c
array-length v10, v9
const/4 v1, 0x0
move v6, v1
:goto_e7
if-ge v6, v10, :cond_36c
aget-object v11, v9, v6
invoke-static {v11}, Lcom/a/a/bf;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v12
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Closing session: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Collecting session parts for ID "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/a/a/w;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "SessionCrash"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/a/a/w;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v13
if-eqz v13, :cond_2fd
array-length v1, v13
if-lez v1, :cond_2fd
const/4 v1, 0x1
move v2, v1
:goto_14c
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v3, "Crashlytics"
sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v5, "Session %s has fatal exception: %s"
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
const/4 v14, 0x0
aput-object v12, v7, v14
const/4 v14, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v15
aput-object v15, v7, v14
invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v3, v4}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/a/a/w;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "SessionEvent"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Lcom/a/a/w;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v7
if-eqz v7, :cond_301
array-length v1, v7
if-lez v1, :cond_301
const/4 v1, 0x1
:goto_192
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v3
const-string v4, "Crashlytics"
sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v14, "Session %s has non-fatal exceptions: %s"
const/4 v15, 0x2
new-array v15, v15, [Ljava/lang/Object;
const/16 v16, 0x0
aput-object v12, v15, v16
const/16 v16, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v17
aput-object v17, v15, v16
invoke-static {v5, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
if-nez v2, :cond_1ba
if-eqz v1, :cond_33f
:cond_1ba
const/4 v5, 0x0
const/4 v3, 0x0
:try_start_1bc
new-instance v4, Lcom/a/a/ap;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/a/a/bf;->k:Ljava/io/File;
invoke-direct {v4, v14, v12}, Lcom/a/a/ap;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_1c5
:try_end_1c5
.catchall {:try_start_1bc .. :try_end_1c5} :catchall_332
.catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1c5} :catch_304
invoke-static {v4}, Lcom/a/a/ar;->a(Ljava/io/OutputStream;)Lcom/a/a/ar;
:try_end_1c8
.catchall {:try_start_1c5 .. :try_end_1c8} :catchall_37d
.catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1c8} :catch_383
move-result-object v3
:try_start_1c9
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v5
invoke-virtual {v5}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v5
const-string v14, "Crashlytics"
new-instance v15, Ljava/lang/StringBuilder;
const-string v16, "Collecting SessionStart data for session ID "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-interface {v5, v14, v15}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v3, v11}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/io/File;)V
const/4 v5, 0x4
new-instance v11, Ljava/util/Date;
invoke-direct {v11}, Ljava/util/Date;-><init>()V
invoke-virtual {v11}, Ljava/util/Date;->getTime()J
move-result-wide v14
const-wide/16 v16, 0x3e8
div-long v14, v14, v16
invoke-virtual {v3, v5, v14, v15}, Lcom/a/a/ar;->a(IJ)V
const/4 v5, 0x5
invoke-virtual {v3, v5, v2}, Lcom/a/a/ar;->a(IZ)V
move-object/from16 v0, p0
invoke-direct {v0, v3, v12}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/lang/String;)V
if-eqz v1, :cond_24e
array-length v1, v7
if-le v1, v8, :cond_393
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v5, "Crashlytics"
sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v11, "Trimming down to %d logged exceptions."
const/4 v14, 0x1
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
invoke-static {v7, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-interface {v1, v5, v7}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-direct {v0, v12, v8}, Lcom/a/a/bf;->a(Ljava/lang/String;I)V
new-instance v1, Lcom/a/a/w;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v7, "SessionEvent"
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v5}, Lcom/a/a/w;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v1
:goto_249
move-object/from16 v0, p0
invoke-direct {v0, v3, v1, v12}, Lcom/a/a/bf;->a(Lcom/a/a/ar;[Ljava/io/File;Ljava/lang/String;)V
:cond_24e
if-eqz v2, :cond_256
const/4 v1, 0x0
aget-object v1, v13, v1
invoke-static {v3, v1}, Lcom/a/a/bf;->a(Lcom/a/a/ar;Ljava/io/File;)V
:cond_256
const/16 v1, 0xb
const/4 v2, 0x1
invoke-virtual {v3, v1, v2}, Lcom/a/a/ar;->a(II)V
const/16 v1, 0xc
const/4 v2, 0x3
invoke-virtual {v3, v1, v2}, Lcom/a/a/ar;->b(II)V
:try_end_262
.catchall {:try_start_1c9 .. :try_end_262} :catchall_37d
.catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_262} :catch_387
const-string v1, "Error flushing session file stream"
invoke-static {v3, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v1, "Failed to close CLS file"
invoke-static {v4, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
:goto_26c
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Removing session part files for ID "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-direct {v0, v12}, Lcom/a/a/bf;->a(Ljava/lang/String;)V
add-int/lit8 v1, v6, 0x1
move v6, v1
goto/16 :goto_e7
:cond_292
if-nez v1, :cond_296
:try_start_294
const-string v1, ""
:cond_296
invoke-static {v1}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v7
if-nez v4, :cond_2dd
const/4 v1, 0x0
move-object v5, v1
:goto_29e
if-nez v6, :cond_2e3
const/4 v1, 0x0
move-object v4, v1
:goto_2a2
const/4 v1, 0x1
invoke-static {v1, v7}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
add-int/lit8 v1, v1, 0x0
if-eqz v5, :cond_2b1
const/4 v6, 0x2
invoke-static {v6, v5}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v6
add-int/2addr v1, v6
:cond_2b1
if-eqz v4, :cond_2b9
const/4 v6, 0x3
invoke-static {v6, v4}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v6
add-int/2addr v1, v6
:cond_2b9
const/4 v6, 0x6
const/4 v8, 0x2
invoke-virtual {v2, v6, v8}, Lcom/a/a/ar;->g(II)V
invoke-virtual {v2, v1}, Lcom/a/a/ar;->b(I)V
const/4 v1, 0x1
invoke-virtual {v2, v1, v7}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
if-eqz v5, :cond_2cb
const/4 v1, 0x2
invoke-virtual {v2, v1, v5}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
:cond_2cb
if-eqz v4, :cond_2d1
const/4 v1, 0x3
invoke-virtual {v2, v1, v4}, Lcom/a/a/ar;->a(ILcom/a/a/an;)V
:try_end_2d1
.catchall {:try_start_294 .. :try_end_2d1} :catchall_2f1
.catch Ljava/lang/Exception; {:try_start_294 .. :try_end_2d1} :catch_390
:cond_2d1
const-string v1, "Failed to flush session user file."
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v1, "Failed to close session user file."
invoke-static {v3, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
goto/16 :goto_c0
:try_start_2dd
:cond_2dd
invoke-static {v4}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v1
move-object v5, v1
goto :goto_29e
:cond_2e3
invoke-static {v6}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
:try_end_2e6
.catchall {:try_start_2dd .. :try_end_2e6} :catchall_2f1
.catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2e6} :catch_390
move-result-object v1
move-object v4, v1
goto :goto_2a2
:catch_2e9
move-exception v1
move-object v3, v4
:try_start_2eb
:goto_2eb
move-object/from16 v0, p0
invoke-direct {v0, v1, v3}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
throw v1
:try_end_2f1
.catchall {:try_start_2eb .. :try_end_2f1} :catchall_2f1
:catchall_2f1
move-exception v1
:goto_2f2
const-string v4, "Failed to flush session user file."
invoke-static {v2, v4}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v2, "Failed to close session user file."
invoke-static {v3, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v1
:cond_2fd
const/4 v1, 0x0
move v2, v1
goto/16 :goto_14c
:cond_301
const/4 v1, 0x0
goto/16 :goto_192
:catch_304
move-exception v1
move-object v2, v3
move-object v3, v5
:try_start_307
:goto_307
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v4
invoke-virtual {v4}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v4
const-string v5, "Crashlytics"
new-instance v7, Ljava/lang/StringBuilder;
const-string v11, "Failed to write session file for session ID: "
invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-interface {v4, v5, v7, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object/from16 v0, p0
invoke-direct {v0, v1, v3}, Lcom/a/a/bf;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
:try_end_328
.catchall {:try_start_307 .. :try_end_328} :catchall_37f
const-string v1, "Error flushing session file stream"
invoke-static {v2, v1}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
invoke-static {v3}, Lcom/a/a/bf;->a(Lcom/a/a/ap;)V
goto/16 :goto_26c
:catchall_332
move-exception v1
move-object v4, v5
:goto_334
const-string v2, "Error flushing session file stream"
invoke-static {v3, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Flushable;Ljava/lang/String;)V
const-string v2, "Failed to close CLS file"
invoke-static {v4, v2}, Lcom/a/a/a/bc;->a(Ljava/io/Closeable;Ljava/lang/String;)V
throw v1
:cond_33f
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "No events present for session ID "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_26c
:cond_35d
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "No session begin files found."
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_36c
:cond_36c
return-void
:cond_36d
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Unable to close session. Settings are not loaded."
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_36c
:catchall_37d
move-exception v1
goto :goto_334
:catchall_37f
move-exception v1
move-object v4, v3
move-object v3, v2
goto :goto_334
:catch_383
move-exception v1
move-object v2, v3
move-object v3, v4
goto :goto_307
:catch_387
move-exception v1
move-object v2, v3
move-object v3, v4
goto/16 :goto_307
:catchall_38c
move-exception v1
move-object v3, v4
goto/16 :goto_2f2
:catch_390
move-exception v1
goto/16 :goto_2eb
:cond_393
move-object v1, v7
goto/16 :goto_249
.end method
.method private n()Ljava/lang/String;
.registers 3
new-instance v0, Lcom/a/a/w;
const-string v1, "BeginSession"
invoke-direct {v0, v1}, Lcom/a/a/w;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v0
sget-object v1, Lcom/a/a/bf;->b:Ljava/util/Comparator;
invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
array-length v1, v0
if-lez v1, :cond_1b
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-static {v0}, Lcom/a/a/bf;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method private o()[Ljava/io/File;
.registers 3
new-instance v0, Lcom/a/a/w;
const-string v1, "BeginSession"
invoke-direct {v0, v1}, Lcom/a/a/w;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method private p()V
.registers 8
sget-object v0, Lcom/a/a/bf;->a:Ljava/io/FilenameFilter;
invoke-direct {p0, v0}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_8
if-ge v0, v2, :cond_2d
aget-object v3, v1, v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v4
invoke-virtual {v4}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v4
const-string v5, "Crashlytics"
const-string v6, "Attempting to send crash report at time of crash..."
invoke-interface {v4, v5, v6}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v4, Ljava/lang/Thread;
new-instance v5, Lcom/a/a/h;
invoke-direct {v5, p0, v3}, Lcom/a/a/h;-><init>(Lcom/a/a/bf;Ljava/io/File;)V
const-string v3, "Crashlytics Report Uploader"
invoke-direct {v4, v5, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/lang/Thread;->start()V
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_2d
return-void
.end method
.method private static q()I
.registers 3
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->e()Z
move-result v1
const/4 v2, 0x1
invoke-static {v0, v1}, Lcom/a/a/a/cs;->a(Landroid/content/Context;Z)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/an;->a(Ljava/lang/String;)Lcom/a/a/an;
move-result-object v0
invoke-static {v2, v0}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v0
add-int/lit8 v0, v0, 0x0
return v0
.end method
.method private r()I
.registers 5
const-wide/16 v2, 0x0
const/4 v0, 0x1
invoke-static {v0, v2, v3}, Lcom/a/a/ar;->b(IJ)I
move-result v0
add-int/lit8 v0, v0, 0x0
const/4 v1, 0x2
invoke-static {v1, v2, v3}, Lcom/a/a/ar;->b(IJ)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/a/a/bf;->q:Lcom/a/a/an;
invoke-static {v1, v2}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
add-int/2addr v0, v1
iget-object v1, p0, Lcom/a/a/bf;->r:Lcom/a/a/an;
if-eqz v1, :cond_23
const/4 v1, 0x4
iget-object v2, p0, Lcom/a/a/bf;->r:Lcom/a/a/an;
invoke-static {v1, v2}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
add-int/2addr v0, v1
:cond_23
return v0
.end method
.method private static s()I
.registers 4
const/4 v0, 0x1
sget-object v1, Lcom/a/a/bf;->f:Lcom/a/a/an;
invoke-static {v0, v1}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v0
add-int/lit8 v0, v0, 0x0
const/4 v1, 0x2
sget-object v2, Lcom/a/a/bf;->f:Lcom/a/a/an;
invoke-static {v1, v2}, Lcom/a/a/ar;->b(ILcom/a/a/an;)I
move-result v1
add-int/2addr v0, v1
const/4 v1, 0x3
const-wide/16 v2, 0x0
invoke-static {v1, v2, v3}, Lcom/a/a/ar;->b(IJ)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method final a(JLjava/lang/String;)V
.registers 5
new-instance v0, Lcom/a/a/bh;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/a/a/bh;-><init>(Lcom/a/a/bf;JLjava/lang/String;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
return-void
.end method
.method final a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 5
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
new-instance v1, Lcom/a/a/t;
invoke-direct {v1, p0, v0, p1, p2}, Lcom/a/a/t;-><init>(Lcom/a/a/bf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
invoke-direct {p0, v1}, Lcom/a/a/bf;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
return-void
.end method
.method final a([Ljava/io/File;)V
.registers 13
const/4 v1, 0x0
new-instance v2, Ljava/io/File;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v0
const-string v3, "invalidClsFiles"
invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_2f
invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_2c
invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
array-length v4, v3
move v0, v1
:goto_22
if-ge v0, v4, :cond_2c
aget-object v5, v3, v0
invoke-virtual {v5}, Ljava/io/File;->delete()Z
add-int/lit8 v0, v0, 0x1
goto :goto_22
:cond_2c
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:cond_2f
array-length v3, p1
move v2, v1
:goto_31
if-ge v2, v3, :cond_a6
aget-object v0, p1, v2
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v4
invoke-virtual {v4}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v4
const-string v5, "Crashlytics"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Found invalid session part file: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v4, v5, v6}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/a/a/bf;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v0
new-instance v4, Lcom/a/a/j;
invoke-direct {v4, p0, v0}, Lcom/a/a/j;-><init>(Lcom/a/a/bf;Ljava/lang/String;)V
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v5
invoke-virtual {v5}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v5
const-string v6, "Crashlytics"
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Deleting all part files for invalid session: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v5, v6, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v4}, Lcom/a/a/bf;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v4
array-length v5, v4
move v0, v1
:goto_7c
if-ge v0, v5, :cond_a2
aget-object v6, v4, v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v7
invoke-virtual {v7}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v7
const-string v8, "Crashlytics"
new-instance v9, Ljava/lang/StringBuilder;
const-string v10, "Deleting session file: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-interface {v7, v8, v9}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->delete()Z
add-int/lit8 v0, v0, 0x1
goto :goto_7c
:cond_a2
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_31
:cond_a6
return-void
.end method
.method final a()Z
.registers 2
iget-object v0, p0, Lcom/a/a/bf;->m:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
return v0
.end method
.method final b()Z
.registers 2
new-instance v0, Lcom/a/a/s;
invoke-direct {v0, p0}, Lcom/a/a/s;-><init>(Lcom/a/a/bf;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method final c()V
.registers 2
new-instance v0, Lcom/a/a/bj;
invoke-direct {v0, p0}, Lcom/a/a/bj;-><init>(Lcom/a/a/bf;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
return-void
.end method
.method final d()V
.registers 2
new-instance v0, Lcom/a/a/a;
invoke-direct {v0, p0}, Lcom/a/a/a;-><init>(Lcom/a/a/bf;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
return-void
.end method
.method final e()V
.registers 2
new-instance v0, Lcom/a/a/b;
invoke-direct {v0, p0}, Lcom/a/a/b;-><init>(Lcom/a/a/bf;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
return-void
.end method
.method final f()Z
.registers 2
new-instance v0, Lcom/a/a/c;
invoke-direct {v0, p0}, Lcom/a/a/c;-><init>(Lcom/a/a/bf;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method final g()Z
.registers 2
invoke-direct {p0}, Lcom/a/a/bf;->o()[Ljava/io/File;
move-result-object v0
array-length v0, v0
if-lez v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method final h()V
.registers 2
new-instance v0, Lcom/a/a/i;
invoke-direct {v0, p0}, Lcom/a/a/i;-><init>(Lcom/a/a/bf;)V
invoke-direct {p0, v0}, Lcom/a/a/bf;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
return-void
.end method
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/a/a/bf;->m:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
:try_start_7
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_b7
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Crashlytics is handling uncaught exception \""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\" from thread "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/a/a/bf;->h:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
move-result v0
if-nez v0, :cond_63
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "Unregistering power receivers."
invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/a/a/bf;->p:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/e;->z()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/a/a/bf;->o:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:cond_63
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
new-instance v1, Lcom/a/a/r;
invoke-direct {v1, p0, v0, p1, p2}, Lcom/a/a/r;-><init>(Lcom/a/a/bf;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
invoke-direct {p0, v1}, Lcom/a/a/bf;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
:try_start_70
:try_end_70
.catchall {:try_start_7 .. :try_end_70} :catchall_ba
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_70} :catch_8c
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."
invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/a/a/bf;->j:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/a/a/bf;->m:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
:goto_8a
:try_end_8a
.catchall {:try_start_70 .. :try_end_8a} :catchall_b7
monitor-exit p0
return-void
:catch_8c
move-exception v0
:try_start_8d
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "An error occurred in the uncaught exception handler"
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_9c
.catchall {:try_start_8d .. :try_end_9c} :catchall_ba
:try_start_9c
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."
invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/a/a/bf;->j:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/a/a/bf;->m:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
:try_end_b6
.catchall {:try_start_9c .. :try_end_b6} :catchall_b7
goto :goto_8a
:catchall_b7
move-exception v0
monitor-exit p0
throw v0
:catchall_ba
move-exception v0
:try_start_bb
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Crashlytics completed exception processing. Invoking default exception handler."
invoke-interface {v1, v2, v3}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/a/a/bf;->j:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
iget-object v1, p0, Lcom/a/a/bf;->m:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
throw v0
:try_end_d6
.catchall {:try_start_bb .. :try_end_d6} :catchall_b7
.end method