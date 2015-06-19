.class public Lcom/facebook/widget/bd;
.super Lcom/facebook/widget/az;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "apprequests"

.field private static final c:Ljava/lang/String; = "message"

.field private static final d:Ljava/lang/String; = "to"

.field private static final e:Ljava/lang/String; = "data"

.field private static final f:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/aw;)V
    .registers 5

    const-string v0, "apprequests"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/az;-><init>(Landroid/content/Context;Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/aw;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "apprequests"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/az;-><init>(Landroid/content/Context;Lcom/facebook/aw;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/facebook/widget/ax;
    .registers 2

    invoke-super {p0}, Lcom/facebook/widget/az;->a()Lcom/facebook/widget/ax;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/widget/bd;
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/widget/bd;->e()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/widget/bd;
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/widget/bd;->e()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/widget/bd;
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/widget/bd;->e()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/facebook/widget/bd;
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/widget/bd;->e()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
