.class Lcom/facebook/widget/af$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/af;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/af;


# direct methods
.method constructor <init>(Lcom/facebook/widget/af;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af$1;->a:Lcom/facebook/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/c/c;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/af$1;->a:Lcom/facebook/widget/af;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/af;->a(Lcom/facebook/c/c;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/facebook/c/c;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/af$1;->a(Lcom/facebook/c/c;)Z

    move-result v0

    return v0
.end method
