.class final Lcom/bbm/a;
.super Lcom/bbm/j/a;
.source "Alaska.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Lcom/bbm/f/af;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/Alaska;


# direct methods
.method constructor <init>(Lcom/bbm/Alaska;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/a;->a:Lcom/bbm/Alaska;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/bbm/a;->a:Lcom/bbm/Alaska;

    invoke-static {v0}, Lcom/bbm/Alaska;->a(Lcom/bbm/Alaska;)Lcom/bbm/i;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/a;->a:Lcom/bbm/Alaska;

    invoke-static {v0}, Lcom/bbm/Alaska;->a(Lcom/bbm/Alaska;)Lcom/bbm/i;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/i;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->a(Lcom/bbm/BbmService;)Lcom/bbm/f/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/f/ad;->h()Lcom/bbm/f/af;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lcom/bbm/f/af;->e:Lcom/bbm/f/af;

    goto :goto_18
.end method
