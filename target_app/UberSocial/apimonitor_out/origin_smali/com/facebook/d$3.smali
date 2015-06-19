.class Lcom/facebook/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/aj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/d;->d(Lcom/facebook/n;)Lcom/facebook/aq;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/facebook/d;


# direct methods
.method constructor <init>(Lcom/facebook/d;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/d$3;->b:Lcom/facebook/d;

    iput-object p2, p0, Lcom/facebook/d$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/as;)V
    .registers 4

    :try_start_0
    const-class v0, Lcom/facebook/c/j;

    invoke-virtual {p1, v0}, Lcom/facebook/as;->a(Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/j;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/facebook/d$3;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/facebook/c/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    goto :goto_13
.end method
