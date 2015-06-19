.class public Lcom/mologiq/analytics/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mologiq/analytics/af;

.field private b:I

.field private c:Ljava/util/List;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/mologiq/analytics/af;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ag;->a:Lcom/mologiq/analytics/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/mologiq/analytics/ag;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/mologiq/analytics/ag;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ag;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ag;->c:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ag;->h:Ljava/util/Map;

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/ag;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/mologiq/analytics/ag;->d:I

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ag;->f:Ljava/util/List;

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/mologiq/analytics/ag;->d:I

    return v0
.end method

.method public c(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ag;->g:Ljava/util/List;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/ag;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/ag;->f:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/ag;->g:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/ag;->h:Ljava/util/Map;

    return-object v0
.end method
