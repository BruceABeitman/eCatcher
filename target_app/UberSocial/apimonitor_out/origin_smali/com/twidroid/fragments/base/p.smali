.class public Lcom/twidroid/fragments/base/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UberFragmentsFactory"

    sput-object v0, Lcom/twidroid/fragments/base/p;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/twidroid/ui/c/h;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/o;
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/twidroid/ui/c/i;

    if-eqz v1, :cond_51

    check-cast p0, Lcom/twidroid/ui/c/i;

    sget-object v1, Lcom/twidroid/fragments/base/p;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCREEN_NAME4: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twidroid/fragments/e/at;

    invoke-virtual {p0}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/twidroid/fragments/e/at;-><init>(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/c/i;->a(Lcom/twidroid/fragments/base/o;)V

    invoke-virtual {p0}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/c/i;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/ui/c/i;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/ui/c/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/o;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/ui/c/i;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v0

    :cond_4d
    :goto_4d
    return-object v0

    :cond_4e
    const-string v0, ""

    goto :goto_20

    :cond_51
    instance-of v1, p0, Lcom/twidroid/ui/c/e;

    if-eqz v1, :cond_7a

    check-cast p0, Lcom/twidroid/ui/c/e;

    new-instance v1, Lcom/twidroid/fragments/e/ai;

    invoke-virtual {p0}, Lcom/twidroid/ui/c/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/twidroid/fragments/e/ai;-><init>(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/twidroid/ui/c/e;->a(Lcom/twidroid/fragments/base/o;)V

    invoke-virtual {p0}, Lcom/twidroid/ui/c/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/c/e;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/ui/c/e;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/ui/c/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/o;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/ui/c/e;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v0

    goto :goto_4d

    :cond_7a
    instance-of v1, p0, Lcom/twidroid/ui/c/c;

    if-eqz v1, :cond_4d

    check-cast p0, Lcom/twidroid/ui/c/c;

    invoke-virtual {p0}, Lcom/twidroid/ui/c/c;->f()Lcom/twidroid/fragments/base/o;

    move-result-object v0

    instance-of v1, p0, Lcom/twidroid/ui/c/b;

    if-eqz v1, :cond_9a

    if-nez v0, :cond_9a

    move-object v0, p0

    check-cast v0, Lcom/twidroid/ui/c/b;

    new-instance v1, Lcom/twidroid/fragments/e/aq;

    invoke-virtual {v0}, Lcom/twidroid/ui/c/b;->g()I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/twidroid/fragments/e/aq;-><init>(Lcom/twidroid/model/twitter/c;I)V

    invoke-virtual {p0, v1}, Lcom/twidroid/ui/c/c;->a(Lcom/twidroid/fragments/base/o;)V

    move-object v0, v1

    :cond_9a
    invoke-virtual {p0}, Lcom/twidroid/ui/c/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/o;->h(Ljava/lang/String;)V

    goto :goto_4d
.end method
