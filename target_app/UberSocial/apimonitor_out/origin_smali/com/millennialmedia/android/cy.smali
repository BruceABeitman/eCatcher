.class public Lcom/millennialmedia/android/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:F = 0.25f

.field static final b:F = 0.1f

.field static final c:F = 90.0f

.field private static final f:Ljava/lang/String; = "NVASpeechKit"

.field private static final s:I = 0x7d0

.field private static final u:I = 0x32

.field private static z:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field public d:[Lcom/millennialmedia/android/dc;

.field e:Lcom/millennialmedia/android/au;

.field private g:Ljava/lang/ref/WeakReference;

.field private h:Lcom/nuance/nmdp/speechkit/Vocalizer;

.field private i:Lcom/nuance/nmdp/speechkit/SpeechKit;

.field private j:Landroid/os/Handler;

.field private k:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

.field private l:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

.field private m:Lcom/nuance/nmdp/speechkit/Recognizer;

.field private n:Lcom/millennialmedia/android/dd;

.field private o:Lcom/millennialmedia/android/cz;

.field private p:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

.field private q:Lcom/millennialmedia/android/da;

.field private r:Ljava/lang/String;

.field private t:Ljava/lang/Runnable;

.field private v:Ljava/lang/Runnable;

.field private w:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

.field private x:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

.field private y:Lcom/millennialmedia/android/db;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/cy;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/android/cq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->d:[Lcom/millennialmedia/android/dc;

    new-instance v0, Lcom/millennialmedia/android/cz;

    invoke-direct {v0}, Lcom/millennialmedia/android/cz;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->o:Lcom/millennialmedia/android/cz;

    new-instance v0, Lcom/millennialmedia/android/cy$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cy$1;-><init>(Lcom/millennialmedia/android/cy;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->t:Ljava/lang/Runnable;

    new-instance v0, Lcom/millennialmedia/android/cy$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cy$2;-><init>(Lcom/millennialmedia/android/cy;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->v:Ljava/lang/Runnable;

    new-instance v0, Lcom/millennialmedia/android/cy$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cy$3;-><init>(Lcom/millennialmedia/android/cy;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->w:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    new-instance v0, Lcom/millennialmedia/android/cy$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cy$4;-><init>(Lcom/millennialmedia/android/cy;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->x:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    new-instance v0, Lcom/millennialmedia/android/cy$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cy$5;-><init>(Lcom/millennialmedia/android/cy;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    if-eqz p1, :cond_44

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/cy;->a(Landroid/content/Context;)V

    :cond_44
    sget-object v0, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->n:Lcom/millennialmedia/android/dd;

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/cy;Lcom/nuance/nmdp/speechkit/DataUploadCommand;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cy;->p:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    return-object p1
.end method

.method static synthetic a(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/cy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cy;->r:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/nuance/nmdp/speechkit/SpeechError;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string v0, "No Error given"

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Speech Kit Error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " suggestions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getSuggestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private a([B)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_a
    array-length v2, p1

    if-ge v0, v2, :cond_24

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    if-ge v2, v4, :cond_1e

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/millennialmedia/android/cy;[Lcom/millennialmedia/android/dc;)Lorg/json/JSONArray;
    .registers 3

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/cy;->a([Lcom/millennialmedia/android/dc;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private a([Lcom/millennialmedia/android/dc;)Lorg/json/JSONArray;
    .registers 8

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_6
    array-length v2, p1

    if-ge v0, v2, :cond_47

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_e
    const-string v3, "score"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v5}, Lcom/millennialmedia/android/dc;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "result"

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/millennialmedia/android/dc;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_3a} :catch_3d

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_3d
    move-exception v0

    const-string v1, "NVASpeechKit"

    const-string v2, "JSON creation error."

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_46
    return-object v0

    :cond_47
    move-object v0, v1

    goto :goto_46
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->A:Ljava/lang/String;

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->A:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/cy;Lcom/millennialmedia/android/dd;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/dd;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/cy;Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/cy;->a(Lcom/nuance/nmdp/speechkit/Recognizer;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/cy;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/cy;->b(Lcom/nuance/nmdp/speechkit/SpeechError;)V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/cy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/cy;->a(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/millennialmedia/android/dd;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recording results returned. state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->n:Lcom/millennialmedia/android/dd;

    iput-object p1, p0, Lcom/millennialmedia/android/cy;->n:Lcom/millennialmedia/android/dd;

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->n:Lcom/millennialmedia/android/dd;

    if-eq v1, v0, :cond_2a

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    invoke-interface {v0, p1}, Lcom/millennialmedia/android/db;->a(Lcom/millennialmedia/android/dd;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .registers 6

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->v:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 11

    const-string v0, "NVASpeechKit"

    const-string v1, "processResults called."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/millennialmedia/android/dc;

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->d:[Lcom/millennialmedia/android/dc;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;

    iget-object v4, p0, Lcom/millennialmedia/android/cy;->d:[Lcom/millennialmedia/android/dc;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Lcom/millennialmedia/android/dc;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;->getConfidenceScore()D

    move-result-wide v7

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/millennialmedia/android/dc;-><init>(Lcom/millennialmedia/android/cy;Ljava/lang/String;D)V

    aput-object v5, v4, v1

    move v1, v2

    goto :goto_15

    :cond_36
    return-void
.end method

.method static synthetic b(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/cz;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->o:Lcom/millennialmedia/android/cz;

    return-object v0
.end method

.method static synthetic b(Lcom/millennialmedia/android/cy;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object p1
.end method

.method private b(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 3

    invoke-interface {p1}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    :pswitch_7
    iget-object v0, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    invoke-interface {v0}, Lcom/millennialmedia/android/db;->b()V

    sget-object v0, Lcom/millennialmedia/android/dd;->a:Lcom/millennialmedia/android/dd;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/dd;)V

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/cy;->a(Lcom/nuance/nmdp/speechkit/SpeechError;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cy;->b(Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :pswitch_1d
    iget-object v0, p0, Lcom/millennialmedia/android/cy;->o:Lcom/millennialmedia/android/cz;

    iget-boolean v0, v0, Lcom/millennialmedia/android/cz;->d:Z

    if-nez v0, :cond_28

    sget-object v0, Lcom/millennialmedia/android/dd;->e:Lcom/millennialmedia/android/dd;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/dd;)V

    :cond_28
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/millennialmedia/android/dc;

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->d:[Lcom/millennialmedia/android/dc;

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->u()V

    goto :goto_1c

    :pswitch_31
    sget-object v0, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/dd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    goto :goto_1c

    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_7
        :pswitch_7
        :pswitch_31
    .end packed-switch
.end method

.method static synthetic c(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/db;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    return-object v0
.end method

.method static synthetic d(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/dd;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->n:Lcom/millennialmedia/android/dd;

    return-object v0
.end method

.method private d(Ljava/lang/String;)[B
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_26

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_26
    move-object v0, v1

    goto :goto_3
.end method

.method static synthetic e(Lcom/millennialmedia/android/cy;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->v:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/millennialmedia/android/cy;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/millennialmedia/android/cy;)V
    .registers 1

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->u()V

    return-void
.end method

.method static synthetic h(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->p:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    return-object v0
.end method

.method static synthetic i(Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/da;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->q:Lcom/millennialmedia/android/da;

    return-object v0
.end method

.method static synthetic j(Lcom/millennialmedia/android/cy;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/millennialmedia/android/cy;)V
    .registers 1

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->v()V

    return-void
.end method

.method static synthetic l(Lcom/millennialmedia/android/cy;)Lcom/nuance/nmdp/speechkit/SpeechKit;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    return-object v0
.end method

.method static synthetic m(Lcom/millennialmedia/android/cy;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->r:Ljava/lang/String;

    return-object v0
.end method

.method private p()Lcom/millennialmedia/android/cq;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/cq;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private q()V
    .registers 2

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_b
    return-void
.end method

.method private r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/cq;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->B()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "DEFAULT_AD_ID"

    goto :goto_12
.end method

.method private s()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    .registers 2

    new-instance v0, Lcom/millennialmedia/android/cy$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cy$6;-><init>(Lcom/millennialmedia/android/cy;)V

    return-object v0
.end method

.method private t()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
    .registers 2

    new-instance v0, Lcom/millennialmedia/android/cy$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/cy$7;-><init>(Lcom/millennialmedia/android/cy;)V

    return-object v0
.end method

.method private u()V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->d:[Lcom/millennialmedia/android/dc;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->o:Lcom/millennialmedia/android/cz;

    iget-boolean v0, v0, Lcom/millennialmedia/android/cz;->d:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->o:Lcom/millennialmedia/android/cz;

    iget-wide v1, v1, Lcom/millennialmedia/android/cz;->b:D

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/android/db;->a(D)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->o:Lcom/millennialmedia/android/cz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cz;->a()V

    :cond_1c
    :goto_1c
    sget-object v0, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/dd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-void

    :cond_25
    iget-object v0, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    invoke-interface {v0}, Lcom/millennialmedia/android/db;->a()V

    goto :goto_1c
.end method

.method private v()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'ready\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method a(D)V
    .registers 6

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.audioLevelChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public a(Lcom/millennialmedia/android/da;[Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v1, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    invoke-direct {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;-><init>()V

    const-string v2, "NVASpeechKit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating dataupload command and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/millennialmedia/android/da;->a:Lcom/millennialmedia/android/da;

    if-ne p1, v0, :cond_6c

    const-string v0, "adding"

    :goto_1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " words."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    const-string v0, "nva_custom_word_uploads"

    sget-object v3, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-direct {v2, v0, v3}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;-><init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;)V

    new-instance v3, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    sget-object v0, Lcom/millennialmedia/android/da;->a:Lcom/millennialmedia/android/da;

    if-ne p1, v0, :cond_6f

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    :goto_3f
    invoke-direct {v3, v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;-><init>(Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;)V

    array-length v4, p2

    const/4 v0, 0x0

    :goto_44
    if-ge v0, v4, :cond_72

    aget-object v5, p2, v0

    invoke-virtual {v3, v5}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->addWord(Ljava/lang/String;)V

    const-string v6, "NVASpeechKit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tword: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_6c
    const-string v0, "deleting"

    goto :goto_1d

    :cond_6f
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    goto :goto_3f

    :cond_72
    invoke-virtual {v2, v3}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->addAction(Lcom/nuance/nmdp/speechkit/util/dataupload/Action;)V

    invoke-virtual {v1, v2}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->addData(Lcom/nuance/nmdp/speechkit/util/dataupload/Data;)V

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->getChecksum()I

    move-result v2

    iput-object p1, p0, Lcom/millennialmedia/android/cy;->q:Lcom/millennialmedia/android/da;

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    iget-object v4, p0, Lcom/millennialmedia/android/cy;->x:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    iget-object v5, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createDataUploadCmd(Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;IILcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->p:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->p:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/DataUploadCommand;->start()V

    goto/16 :goto_4
.end method

.method public a(Lcom/millennialmedia/android/db;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cy;->y:Lcom/millennialmedia/android/db;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.recognitionResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public a(Lcom/millennialmedia/android/au;Landroid/content/Context;)Z
    .registers 11

    const/4 v5, 0x0

    const-string v0, "NVASpeechKit"

    const-string v1, "initialize called."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    if-nez p2, :cond_d

    :cond_c
    :goto_c
    return v5

    :cond_d
    iput-object p1, p0, Lcom/millennialmedia/android/cy;->e:Lcom/millennialmedia/android/au;

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_18

    :try_start_13
    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->connect()V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_18} :catch_5f

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_64

    iget-object v0, p1, Lcom/millennialmedia/android/au;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/cy;->d(Ljava/lang/String;)[B

    move-result-object v6

    const-string v0, "NVASpeechKit"

    invoke-virtual {p1}, Lcom/millennialmedia/android/au;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1.0"

    iget-object v2, p1, Lcom/millennialmedia/android/au;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/millennialmedia/android/au;->c:Ljava/lang/String;

    iget v4, p1, Lcom/millennialmedia/android/au;->d:I

    sget-object v7, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/nuance/nmdp/speechkit/SpeechKit;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[BLcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->s()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->l:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->t()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->k:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->connect()V

    sget-object v0, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/dd;)V

    const/4 v5, 0x1

    goto :goto_c

    :catch_5f
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    goto :goto_18

    :cond_64
    const-string v0, "NVASpeechKit"

    const-string v1, "Already initialized. Skipping."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "NVASpeechKit"

    const-string v1, "TTS INVOKED."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->n:Lcom/millennialmedia/android/dd;

    sget-object v1, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->l:Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;

    iget-object v2, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    invoke-virtual {v0, p2, v1, v2}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createVocalizerWithLanguage(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Vocalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->h:Lcom/nuance/nmdp/speechkit/Vocalizer;

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->h:Lcom/nuance/nmdp/speechkit/Vocalizer;

    invoke-interface {v0, p1, p0}, Lcom/nuance/nmdp/speechkit/Vocalizer;->speakString(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method b()V
    .registers 3

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'recording\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method b(D)V
    .registers 6

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.backgroundAudioLevel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.voiceError(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method c()V
    .registers 3

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'processing\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x1

    const-string v0, "NVASpeechKit"

    const-string v1, "RECORDING INVOKED."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->n:Lcom/millennialmedia/android/dd;

    sget-object v1, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    const-string v1, "dictation"

    iget-object v4, p0, Lcom/millennialmedia/android/cy;->k:Lcom/nuance/nmdp/speechkit/Recognizer$Listener;

    iget-object v5, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createRecognizer(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    const-string v0, "NVASpeechKit"

    const-string v1, "START RECORDING"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->start()V

    :goto_30
    return v2

    :cond_31
    const/4 v2, 0x0

    goto :goto_30
.end method

.method d()V
    .registers 3

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'vocalizing\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method e()V
    .registers 3

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->p()Lcom/millennialmedia/android/cq;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "javascript:MMJS.sdk.voiceStateChange(\'error\')"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public declared-synchronized f()Lcom/millennialmedia/android/dd;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/cy;->n:Lcom/millennialmedia/android/dd;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_15

    const-string v0, "NVASpeechKit"

    const-string v1, "end RECORDING"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->stopRecording()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_18

    const-string v0, "NVASpeechKit"

    const-string v1, "cancel RECORDING"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/cy;->m:Lcom/nuance/nmdp/speechkit/Recognizer;

    sget-object v0, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/dd;)V

    :cond_18
    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->o:Lcom/millennialmedia/android/cz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cz;->b()V

    const-string v0, "en_US"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/cy;->c(Ljava/lang/String;)Z

    return-void
.end method

.method public j()[Lcom/millennialmedia/android/dc;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->d:[Lcom/millennialmedia/android/dc;

    return-object v0
.end method

.method public k()V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->cancelCurrent()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "NVASpeechKit"

    const-string v2, "No speech kit to disconnect."

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public l()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "NVASpeechKit"

    const-string v1, "release called."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/cy;->k()V

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->v()V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->release()V

    sget-object v0, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/dd;)V

    iput-object v2, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    :cond_1e
    iput-object v2, p0, Lcom/millennialmedia/android/cy;->p:Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->q()V

    return-void
.end method

.method public m()V
    .registers 7

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    const-string v0, "nva_ad_network_id"

    const-string v1, "MillenialMedia"

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nva_device_id"

    invoke-virtual {p0}, Lcom/millennialmedia/android/cy;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nva_ad_publisher_id"

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->A:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->e:Lcom/millennialmedia/android/au;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/millennialmedia/android/cy;->e:Lcom/millennialmedia/android/au;

    iget-object v1, v1, Lcom/millennialmedia/android/au;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->e:Lcom/millennialmedia/android/au;

    iget-object v0, v0, Lcom/millennialmedia/android/au;->e:Ljava/lang/String;

    const-string v1, "nva_ad_session_id"

    iget-object v3, p0, Lcom/millennialmedia/android/cy;->e:Lcom/millennialmedia/android/au;

    iget-object v3, v3, Lcom/millennialmedia/android/au;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    invoke-direct {p0}, Lcom/millennialmedia/android/cy;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v3, "nva_ad_id"

    invoke-virtual {v2, v3, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    iget-object v3, p0, Lcom/millennialmedia/android/cy;->r:Ljava/lang/String;

    if-eqz v3, :cond_ba

    const-string v3, "nva_nvc_session_id"

    iget-object v4, p0, Lcom/millennialmedia/android/cy;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/millennialmedia/android/cy;->r:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/millennialmedia/android/cy;->r:Ljava/lang/String;

    :goto_5d
    const-string v3, "NVASpeechKit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending log revision command to server. sessionId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] deviceId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/millennialmedia/android/cy;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] adId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] mmSessionId["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    const-string v1, "NVA_LOG_EVENT"

    iget-object v3, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/cy;->w:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    iget-object v5, p0, Lcom/millennialmedia/android/cy;->j:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createLogRevisionCmd(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/GenericCommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/GenericCommand;->start()V

    goto/16 :goto_4

    :cond_ba
    iget-object v3, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    goto :goto_5d
.end method

.method n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->i:Lcom/nuance/nmdp/speechkit/SpeechKit;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method declared-synchronized o()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    sget-object v0, Lcom/millennialmedia/android/cy;->z:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/millennialmedia/android/cy;->z:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_43

    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/millennialmedia/android/cy;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/millennialmedia/android/cy;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/cq;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_20

    move-object v0, v1

    goto :goto_8

    :cond_20
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_43

    move-result-object v0

    if-nez v0, :cond_2e

    move-object v0, v1

    goto :goto_8

    :cond_2e
    :try_start_2e
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/co;->a([B)Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_43
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3f} :catch_46

    move-result-object v0

    :try_start_40
    sput-object v0, Lcom/millennialmedia/android/cy;->z:Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_43

    goto :goto_8

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_46
    move-exception v0

    :try_start_47
    const-string v2, "NVASpeechKit"

    const-string v3, "Problem with nuanceid"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_43

    move-object v0, v1

    goto :goto_8

    :cond_50
    move-object v0, v1

    goto :goto_1c
.end method
