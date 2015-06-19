.class final Lcom/facebook/Session$AuthorizationRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$1;->b:Lcom/facebook/Session$AuthorizationRequest;

    iput-object p2, p0, Lcom/facebook/Session$AuthorizationRequest$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$1;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$1;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
