.class final Lcom/facebook/Session$AuthorizationRequest$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/support/v4/app/Fragment;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/support/v4/app/Fragment;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$2;->b:Lcom/facebook/Session$AuthorizationRequest;

    iput-object p2, p0, Lcom/facebook/Session$AuthorizationRequest$2;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$2;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$2;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    return-void
.end method
