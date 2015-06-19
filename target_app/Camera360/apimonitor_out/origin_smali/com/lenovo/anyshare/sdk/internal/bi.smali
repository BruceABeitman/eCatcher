.class public Lcom/lenovo/anyshare/sdk/internal/bi;
.super Ljava/lang/Object;
.source "ContentManager.java"


# static fields
.field private static a:Lcom/lenovo/anyshare/sdk/internal/bi;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/content/base/ContentSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bi;

    invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/bi;-><init>()V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bi;->a:Lcom/lenovo/anyshare/sdk/internal/bi;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/lenovo/anyshare/sdk/internal/bi;
    .registers 1

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bi;->a:Lcom/lenovo/anyshare/sdk/internal/bi;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_14

    const-string/jumbo v0, "ContentManager"

    const-string/jumbo v1, "initializeSourceMap(): Already initialize source map"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/br;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bu;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/bi;->c()Lcom/lenovo/content/base/ContentSource;

    goto :goto_13
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/br;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bu;->b(Landroid/content/Context;)V

    return-void
.end method

.method public c()Lcom/lenovo/content/base/ContentSource;
    .registers 5

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bv;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/content/base/ContentSource;

    if-eqz v2, :cond_10

    move-object v0, v2

    :goto_f
    return-object v0

    :cond_10
    new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bv;

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/bv;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bq;

    invoke-direct {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/bq;-><init>(Lcom/lenovo/content/base/ContentSource;)V

    move-object v3, v2

    check-cast v3, Lcom/lenovo/anyshare/sdk/internal/bv;

    invoke-virtual {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/bv;->a(Lcom/lenovo/content/base/ContentSource;)V

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public d()Lcom/lenovo/content/base/ContentSource;
    .registers 3

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bi;->c:Ljava/util/HashMap;

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/content/base/ContentSource;

    return-object v0
.end method
