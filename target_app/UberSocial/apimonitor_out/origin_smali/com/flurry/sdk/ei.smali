.class public Lcom/flurry/sdk/ei;
.super Lcom/flurry/sdk/ek;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/sdk/ei$a;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Lcom/flurry/sdk/eu;

.field private e:Lcom/flurry/sdk/eu;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/flurry/sdk/ek;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ei;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/ei;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/ei;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/ei;->d:Lcom/flurry/sdk/eu;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/ei;->e:Lcom/flurry/sdk/eu;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ei;)V
    .registers 1

    invoke-direct {p0}, Lcom/flurry/sdk/ei;->n()V

    return-void
.end method

.method private m()V
    .registers 2

    new-instance v0, Lcom/flurry/sdk/ei$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ei$1;-><init>(Lcom/flurry/sdk/ei;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ek$c;)V

    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei$a;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/ei;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei$a;

    iget-object v1, p0, Lcom/flurry/sdk/ei;->c:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/ei$a;->a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/flurry/sdk/ei;->m()V

    invoke-super {p0}, Lcom/flurry/sdk/ek;->a()V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ei$a;)V
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei$a;

    return-void
.end method

.method public a(Lcom/flurry/sdk/eu;)V
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/ei;->d:Lcom/flurry/sdk/eu;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/ei;->b:Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/flurry/sdk/eu;)V
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/ei;->e:Lcom/flurry/sdk/eu;

    return-void
.end method
