.class Lcom/facebook/ax$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/be;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ax;-><init>(Lcom/facebook/bj;ILjava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ax;


# direct methods
.method constructor <init>(Lcom/facebook/ax;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ax$3;->a:Lcom/facebook/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
