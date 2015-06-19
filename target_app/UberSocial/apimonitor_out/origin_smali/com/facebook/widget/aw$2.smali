.class Lcom/facebook/widget/aw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/aw;->r()Lcom/facebook/widget/u;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/aw;


# direct methods
.method constructor <init>(Lcom/facebook/widget/aw;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/aw$2;->a:Lcom/facebook/widget/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/widget/x;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/aw$2;->a:Lcom/facebook/widget/aw;

    iget-object v1, p0, Lcom/facebook/widget/aw$2;->a:Lcom/facebook/widget/aw;

    invoke-static {v1}, Lcom/facebook/widget/aw;->c(Lcom/facebook/widget/aw;)Lcom/facebook/c/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/c/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/facebook/widget/aw;->a(Lcom/facebook/widget/aw;Ljava/lang/String;Lcom/facebook/widget/x;)V

    return-void
.end method
