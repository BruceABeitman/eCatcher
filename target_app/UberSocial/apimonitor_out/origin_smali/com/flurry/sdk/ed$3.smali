.class Lcom/flurry/sdk/ed$3;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/fd;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fd;

.field final synthetic b:Lcom/flurry/sdk/ed;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ed;Lcom/flurry/sdk/fd;)V
    .registers 3

    iput-object p1, p0, Lcom/flurry/sdk/ed$3;->b:Lcom/flurry/sdk/ed;

    iput-object p2, p0, Lcom/flurry/sdk/ed$3;->a:Lcom/flurry/sdk/fd;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/ed$3;->a:Lcom/flurry/sdk/fd;

    invoke-virtual {v0}, Lcom/flurry/sdk/fd;->h()V

    return-void
.end method
