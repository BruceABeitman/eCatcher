.class final Lcom/instagram/bugreport/rageshake/e;
.super Lcom/instagram/common/a/a/l;
.source "RageShakeService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/l",
        "<",
        "Lcom/instagram/bugreport/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/bugreport/rageshake/RageShakeService;


# direct methods
.method constructor <init>(Lcom/instagram/bugreport/rageshake/RageShakeService;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/bugreport/rageshake/e;->a:Lcom/instagram/bugreport/rageshake/RageShakeService;

    invoke-direct {p0}, Lcom/instagram/common/a/a/l;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/bugreport/a/e;)V
    .registers 3

    invoke-virtual {p1}, Lcom/instagram/bugreport/a/e;->f_()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/e;->a:Lcom/instagram/bugreport/rageshake/RageShakeService;

    invoke-static {v0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->a(Lcom/instagram/bugreport/rageshake/RageShakeService;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/e;->a:Lcom/instagram/bugreport/rageshake/RageShakeService;

    invoke-static {v0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->b(Lcom/instagram/bugreport/rageshake/RageShakeService;)V

    goto :goto_b
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/bugreport/a/e;

    invoke-direct {p0, p1}, Lcom/instagram/bugreport/rageshake/e;->a(Lcom/instagram/bugreport/a/e;)V

    return-void
.end method
