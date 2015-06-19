.class public Lcom/umeng/newxp/net/c;
.super Ljava/lang/Object;
.source "XpDownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/net/c$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "xp"

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/umeng/common/net/a;

.field private e:Lcom/umeng/newxp/net/e;

.field private f:Lcom/umeng/newxp/Promoter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/newxp/net/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/net/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/net/e$a;)V
    .registers 12

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/newxp/net/c;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/umeng/newxp/net/c;->f:Lcom/umeng/newxp/Promoter;

    invoke-virtual {p3}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/c;->e:Lcom/umeng/newxp/net/e;

    new-instance v0, Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/newxp/net/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "xp"

    iget-object v3, p2, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    iget-object v4, p2, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    new-instance v5, Lcom/umeng/newxp/net/c$a;

    invoke-direct {v5, p0}, Lcom/umeng/newxp/net/c$a;-><init>(Lcom/umeng/newxp/net/c;)V

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/k;)V

    iput-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    invoke-virtual {p3, v7}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_43
    invoke-static {}, Lcom/umeng/newxp/net/a;->getReprotList()[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    move v1, v6

    :goto_4b
    array-length v4, v2

    if-lt v1, v4, :cond_65

    iget-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    invoke-virtual {v0, v3}, Lcom/umeng/common/net/a;->a([Ljava/lang/String;)V

    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->RICH_NOTIFICATION:Z

    if-eqz v0, :cond_7d

    const/16 v0, 0xd

    invoke-static {}, Lcom/umeng/newxp/common/g;->e()I

    move-result v1

    if-ge v0, v1, :cond_7d

    iget-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    invoke-virtual {v0, v7}, Lcom/umeng/common/net/a;->a(Z)V

    :cond_64
    :goto_64
    return-void

    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_7d
    iget-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    invoke-virtual {v0, v6}, Lcom/umeng/common/net/a;->a(Z)V

    goto :goto_64
.end method

.method static synthetic a(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/Promoter;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/net/c;->f:Lcom/umeng/newxp/Promoter;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/net/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/umeng/newxp/net/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/net/e;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/net/c;->e:Lcom/umeng/newxp/net/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    sget-object v0, Lcom/umeng/newxp/net/c;->b:Ljava/lang/String;

    const-string/jumbo v1, "start Download."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    invoke-virtual {v0}, Lcom/umeng/common/net/a;->a()V

    return-void
.end method
