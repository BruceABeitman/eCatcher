.class Lcom/facebook/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/q;->a(Lcom/facebook/g;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/g;

.field final synthetic b:Lcom/facebook/q;


# direct methods
.method constructor <init>(Lcom/facebook/q;Lcom/facebook/g;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/q$1;->b:Lcom/facebook/q;

    iput-object p2, p0, Lcom/facebook/q$1;->a:Lcom/facebook/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/facebook/t;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/q$1;->b:Lcom/facebook/q;

    iget-object v1, p0, Lcom/facebook/q$1;->a:Lcom/facebook/g;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/q;->a(Lcom/facebook/g;Landroid/os/Bundle;Lcom/facebook/t;)V

    return-void
.end method
