.class public Lcom/blackberry/ids/LoginActivity$JSInterface;
.super Ljava/lang/Object;
.source "LoginActivity.java"


# instance fields
.field final synthetic a:Lcom/blackberry/ids/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/blackberry/ids/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/LoginActivity$JSInterface;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jsCallback(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$JSInterface;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v0, p1}, Lcom/blackberry/ids/LoginActivity;->b(Lcom/blackberry/ids/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "got display name %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_12
    const-string v0, "exit jsCallback"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public pageDone()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$JSInterface;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v0}, Lcom/blackberry/ids/LoginActivity;->d(Lcom/blackberry/ids/LoginActivity;)V

    return-void
.end method

.method public pageDoneErrorCheck(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "error_description="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$JSInterface;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/blackberry/ids/LoginActivity;->b(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
