.class public Lcom/twidroid/ui/c/c;
.super Lcom/twidroid/ui/c/h;
.source "SourceFile"


# instance fields
.field protected a:Lcom/twidroid/fragments/base/o;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/base/o;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/twidroid/ui/c/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twidroid/ui/c/c;->a:Lcom/twidroid/fragments/base/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/ui/c/h;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twidroid/ui/c/c;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/fragments/base/o;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/ui/c/c;->a:Lcom/twidroid/fragments/base/o;

    iget-object v0, p0, Lcom/twidroid/ui/c/c;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/twidroid/ui/c/c;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/base/o;->f(Ljava/lang/String;)Lcom/twidroid/fragments/base/o;

    :cond_f
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/ui/c/h;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twidroid/ui/c/c;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/ui/c/c;->a:Lcom/twidroid/fragments/base/o;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twidroid/ui/c/c;->a:Lcom/twidroid/fragments/base/o;

    invoke-virtual {v0, p1}, Lcom/twidroid/fragments/base/o;->f(Ljava/lang/String;)Lcom/twidroid/fragments/base/o;

    :cond_e
    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/twidroid/fragments/base/o;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/c;->a:Lcom/twidroid/fragments/base/o;

    return-object v0
.end method
