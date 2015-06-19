.class Lcom/mologiq/analytics/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mologiq/analytics/r;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mologiq/analytics/r;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/t;->a:Lcom/mologiq/analytics/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/mologiq/analytics/t;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/t;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/t;->d:Ljava/util/List;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/mologiq/analytics/t;->c:I

    return v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/t;->d:Ljava/util/List;

    return-object v0
.end method
