.class public Lcom/igexin/push/core/bean/j;
.super Lcom/igexin/push/core/bean/BaseAction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/core/bean/BaseAction;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/igexin/push/core/bean/j;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/igexin/push/core/bean/j;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/igexin/push/core/bean/j;->c:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/igexin/push/core/bean/j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/j;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/j;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/j;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/bean/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/bean/j;->d:Ljava/lang/String;

    return-void
.end method
