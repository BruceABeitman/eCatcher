.class public Lcom/mologiq/analytics/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mologiq/analytics/aa;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mologiq/analytics/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ab;->a:Lcom/mologiq/analytics/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ab;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mologiq/analytics/ab;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mologiq/analytics/ab;->c:Ljava/lang/String;

    return-void
.end method
