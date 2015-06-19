.class Lcom/twidroid/z;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/twidroid/aa;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/UberSocialProfile$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/z;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/z;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/z;->a:Lcom/twidroid/aa;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/z;->a:Lcom/twidroid/aa;

    invoke-interface {v0}, Lcom/twidroid/aa;->b()V

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/twidroid/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/z;->a:Lcom/twidroid/aa;

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/z;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/z;->a:Lcom/twidroid/aa;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/z;->a:Lcom/twidroid/aa;

    invoke-interface {v0}, Lcom/twidroid/aa;->a()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/z;->a:Lcom/twidroid/aa;

    return-void
.end method
