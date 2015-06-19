.class public Lcom/tencent/stat/a/d;
.super Lcom/tencent/stat/a/e;


# instance fields
.field private a:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/Throwable;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/stat/a/d;->m:I

    if-eqz p4, :cond_44

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p4}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_2c

    array-length v0, v2

    iget v3, p0, Lcom/tencent/stat/a/d;->m:I

    if-le v0, v3, :cond_2c

    iget v0, p0, Lcom/tencent/stat/a/d;->m:I

    new-array v3, v0, [Ljava/lang/StackTraceElement;

    const/4 v0, 0x0

    :goto_1e
    iget v4, p0, Lcom/tencent/stat/a/d;->m:I

    if-ge v0, v4, :cond_29

    aget-object v4, v2, v0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_29
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2c} :catch_45

    :cond_2c
    :goto_2c
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/stat/a/d;->l:I

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_44
    return-void

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2c
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;II)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/stat/a/d;->m:I

    if-eqz p3, :cond_17

    if-gtz p5, :cond_f

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxReportEventLength()I

    move-result p5

    :cond_f
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p5, :cond_1a

    iput-object p3, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    :cond_17
    :goto_17
    iput p4, p0, Lcom/tencent/stat/a/d;->l:I

    return-void

    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p3, v0, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    goto :goto_17
.end method


# virtual methods
.method public a()Lcom/tencent/stat/a/f;
    .registers 2

    sget-object v0, Lcom/tencent/stat/a/f;->c:Lcom/tencent/stat/a/f;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/tencent/stat/a/d;->c:J

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 4

    const-string/jumbo v0, "er"

    iget-object v1, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ea"

    iget v1, p0, Lcom/tencent/stat/a/d;->l:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v0, 0x1

    return v0
.end method
