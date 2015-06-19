.class public Lcom/mologiq/analytics/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mologiq/analytics/af;

.field private b:Ljava/util/List;

.field private c:Lcom/mologiq/analytics/al;


# direct methods
.method public constructor <init>(Lcom/mologiq/analytics/af;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ah;->a:Lcom/mologiq/analytics/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/ah;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/mologiq/analytics/al;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ah;->c:Lcom/mologiq/analytics/al;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ah;->b:Ljava/util/List;

    return-void
.end method

.method public b()Lcom/mologiq/analytics/al;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/ah;->c:Lcom/mologiq/analytics/al;

    return-object v0
.end method
