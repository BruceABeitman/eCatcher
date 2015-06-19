.class Lcom/facebook/ax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/be;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ax;-><init>(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/facebook/ax;


# direct methods
.method constructor <init>(Lcom/facebook/ax;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ax$1;->b:Lcom/facebook/ax;

    iput-object p2, p0, Lcom/facebook/ax$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax$1;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ax$1;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
