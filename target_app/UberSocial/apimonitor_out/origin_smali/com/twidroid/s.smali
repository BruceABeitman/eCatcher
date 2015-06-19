.class Lcom/twidroid/s;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method private constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/s;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/TwidroidClient;Lcom/twidroid/TwidroidClient$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/s;-><init>(Lcom/twidroid/TwidroidClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/s;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/s;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v0

    sget-object v1, Lcom/twidroid/y;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->b(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    :goto_14
    return-object v2

    :catch_15
    move-exception v0

    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_14

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "TwidroidClient"

    const-string v1, "GeneralException"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/s;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->b(Z)V

    return-void
.end method
