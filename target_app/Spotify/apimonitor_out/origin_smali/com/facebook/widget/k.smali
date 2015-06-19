.class Lcom/facebook/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/k",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/Session;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/facebook/widget/m;

.field private g:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/widget/k;->e:I

    if-nez p2, :cond_e

    invoke-static {p1}, Lcom/facebook/internal/ai;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_e
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/widget/k;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/widget/k;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/widget/k;->d:Ljava/lang/String;

    if-eqz p4, :cond_1e

    iput-object p4, p0, Lcom/facebook/widget/k;->g:Landroid/os/Bundle;

    :goto_1d
    return-void

    :cond_1e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/k;->g:Landroid/os/Bundle;

    goto :goto_1d
.end method


# virtual methods
.method public a()Lcom/facebook/widget/i;
    .registers 7

    iget-object v0, p0, Lcom/facebook/widget/k;->b:Lcom/facebook/Session;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/facebook/widget/k;->b:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/facebook/widget/k;->g:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/k;->b:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/widget/k;->g:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/widget/k;->b:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    new-instance v0, Lcom/facebook/widget/i;

    iget-object v1, p0, Lcom/facebook/widget/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/widget/k;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/widget/k;->g:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/widget/k;->e:I

    iget-object v5, p0, Lcom/facebook/widget/k;->f:Lcom/facebook/widget/m;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/i;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/m;)V

    return-object v0

    :cond_36
    iget-object v0, p0, Lcom/facebook/widget/k;->g:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/widget/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public final a(Lcom/facebook/widget/m;)Lcom/facebook/widget/k;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/m;",
            ")TCONCRETE;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/widget/k;->f:Lcom/facebook/widget/m;

    return-object p0
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected final d()I
    .registers 2

    iget v0, p0, Lcom/facebook/widget/k;->e:I

    return v0
.end method

.method protected final e()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/k;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final f()Lcom/facebook/widget/m;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/k;->f:Lcom/facebook/widget/m;

    return-object v0
.end method
