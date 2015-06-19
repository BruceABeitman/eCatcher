.class public final Lcom/lenovo/lps/reaper/sdk/message/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->d:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->d:Ljava/util/Random;

    invoke-static {p2, p3}, Lcom/lenovo/lps/reaper/sdk/message/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->a:I

    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->c:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->d:Ljava/util/Random;

    invoke-static {p1, p2}, Lcom/lenovo/lps/reaper/sdk/message/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->d:Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->a:I

    const-string/jumbo v0, "\n"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u0001"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->b:Ljava/lang/String;

    const-string/jumbo v0, "\n"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u0001"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->c:Ljava/lang/String;

    :cond_51
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "%d\u0001%s\u0001%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/message/a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
