.class public Lcom/twidroid/ui/c/e;
.super Lcom/twidroid/ui/c/c;
.source "SourceFile"


# instance fields
.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "no_app_tag_assigned_to_item"

    invoke-direct {p0, v0}, Lcom/twidroid/ui/c/c;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/ui/c/e;->p:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/twidroid/ui/c/e;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/twidroid/ui/c/c;-><init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/ui/c/e;->p:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/twidroid/ui/c/e;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/c/e;->p:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/e;->p:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/twidroid/ui/c/e;->p:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/twidroid/ui/c/c;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
