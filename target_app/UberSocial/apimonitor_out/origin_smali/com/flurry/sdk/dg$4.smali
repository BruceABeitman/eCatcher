.class Lcom/flurry/sdk/dg$4;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dg;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dg;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dg;)V
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/dg$4;->a:Lcom/flurry/sdk/dg;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/dg$4;->a:Lcom/flurry/sdk/dg;

    invoke-static {v0}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/dg;)V

    return-void
.end method
