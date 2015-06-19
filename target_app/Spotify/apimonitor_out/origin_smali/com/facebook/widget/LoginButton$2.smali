.class final Lcom/facebook/widget/LoginButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/LoginButton;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/Session;

.field final synthetic b:Lcom/facebook/widget/LoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/Session;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/widget/LoginButton$2;->b:Lcom/facebook/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/widget/LoginButton$2;->a:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/model/GraphUser;Lcom/facebook/aa;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->a:Lcom/facebook/Session;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton$2;->b:Lcom/facebook/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/ae;->b()Lcom/facebook/Session;

    move-result-object v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->b:Lcom/facebook/widget/LoginButton;

    invoke-static {v0, p1}, Lcom/facebook/widget/LoginButton;->a(Lcom/facebook/widget/LoginButton;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;

    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->b:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/f;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->b:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/f;

    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->b:Lcom/facebook/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    :cond_25
    invoke-virtual {p2}, Lcom/facebook/aa;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->b:Lcom/facebook/widget/LoginButton;

    invoke-virtual {p2}, Lcom/facebook/aa;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->e()Lcom/facebook/FacebookException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->a(Ljava/lang/Exception;)V

    :cond_38
    return-void
.end method
