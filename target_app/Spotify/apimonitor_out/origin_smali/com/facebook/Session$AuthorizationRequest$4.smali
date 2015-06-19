.class final Lcom/facebook/Session$AuthorizationRequest$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session$AuthorizationRequest;->g()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$4;->a:Lcom/facebook/Session$AuthorizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$4;->a:Lcom/facebook/Session$AuthorizationRequest;

    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->g(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ad;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$4;->a:Lcom/facebook/Session$AuthorizationRequest;

    invoke-static {v0}, Lcom/facebook/Session$AuthorizationRequest;->g(Lcom/facebook/Session$AuthorizationRequest;)Lcom/facebook/ad;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/ad;->a(Landroid/content/Intent;I)V

    return-void
.end method
