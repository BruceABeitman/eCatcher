.class final Lcom/instagram/ui/e/c;
.super Ljava/lang/Object;
.source "UIComponentStateTracker.java"


# instance fields
.field final synthetic a:Lcom/instagram/ui/e/a;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:J

.field private f:J


# direct methods
.method private constructor <init>(Lcom/instagram/ui/e/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/ui/e/c;->a:Lcom/instagram/ui/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/instagram/ui/e/c;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/ui/e/a;Ljava/lang/String;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/ui/e/c;-><init>(Lcom/instagram/ui/e/a;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/ui/e/c;->c:Z

    sget v0, Lcom/instagram/ui/e/b;->a:I

    iput v0, p0, Lcom/instagram/ui/e/c;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/ui/e/c;->e:J

    iget-object v0, p0, Lcom/instagram/ui/e/c;->a:Lcom/instagram/ui/e/a;

    invoke-static {v0}, Lcom/instagram/ui/e/a;->a(Lcom/instagram/ui/e/a;)Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/ui/e/c;->f:J

    return-void
.end method

.method private a(J)V
    .registers 7

    iget-boolean v0, p0, Lcom/instagram/ui/e/c;->c:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/instagram/ui/e/c;->d:I

    sget v1, Lcom/instagram/ui/e/b;->b:I

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/instagram/ui/e/c;->d:I

    sget v1, Lcom/instagram/ui/e/b;->c:I

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/instagram/ui/e/c;->d:I

    sget v1, Lcom/instagram/ui/e/b;->d:I

    if-ne v0, v1, :cond_1f

    :cond_16
    iget-wide v0, p0, Lcom/instagram/ui/e/c;->e:J

    iget-wide v2, p0, Lcom/instagram/ui/e/c;->f:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/ui/e/c;->e:J

    :cond_1f
    iput-wide p1, p0, Lcom/instagram/ui/e/c;->f:J

    return-void
.end method

.method private a(Lcom/fasterxml/jackson/a/h;)V
    .registers 6

    iget-wide v0, p0, Lcom/instagram/ui/e/c;->e:J

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    const-string v0, "category"

    iget-object v1, p0, Lcom/instagram/ui/e/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wait_time_ms"

    iget-wide v1, p0, Lcom/instagram/ui/e/c;->e:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    :cond_1c
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/instagram/ui/e/c;->e:J

    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/e/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/ui/e/c;->a()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/e/c;Lcom/fasterxml/jackson/a/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/ui/e/c;->a(Lcom/fasterxml/jackson/a/h;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/e/c;ZJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/ui/e/c;->a(ZJ)V

    return-void
.end method

.method private a(ZJ)V
    .registers 5

    iget-boolean v0, p0, Lcom/instagram/ui/e/c;->c:Z

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/instagram/ui/e/c;->a(J)V

    iput-boolean p1, p0, Lcom/instagram/ui/e/c;->c:Z

    goto :goto_4
.end method

.method static synthetic b(Lcom/instagram/ui/e/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/e/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/ui/e/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/ui/e/c;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget v0, p0, Lcom/instagram/ui/e/c;->d:I

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/instagram/ui/e/c;->a:Lcom/instagram/ui/e/a;

    invoke-static {v0}, Lcom/instagram/ui/e/a;->a(Lcom/instagram/ui/e/a;)Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/instagram/ui/e/c;->a(J)V

    iput p1, p0, Lcom/instagram/ui/e/c;->d:I

    goto :goto_4
.end method
