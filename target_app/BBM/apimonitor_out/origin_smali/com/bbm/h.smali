.class final Lcom/bbm/h;
.super Lcom/bbm/j/k;
.source "BbmService.java"


# instance fields
.field final synthetic a:Lcom/bbm/BbmService;


# direct methods
.method constructor <init>(Lcom/bbm/BbmService;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    const-string v0, "BBMService mSettingsMontior run"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->b(Lcom/bbm/BbmService;)V

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-virtual {v0}, Lcom/bbm/BbmService;->a()V

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->c(Lcom/bbm/BbmService;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ae;

    iget-boolean v0, v0, Lcom/bbm/f/ae;->i:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->d(Lcom/bbm/BbmService;)V

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->e(Lcom/bbm/BbmService;)V

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->f(Lcom/bbm/BbmService;)Lcom/bbm/m/a;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->f(Lcom/bbm/BbmService;)Lcom/bbm/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/m/a;->a()V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->g(Lcom/bbm/BbmService;)V

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->h(Lcom/bbm/BbmService;)V

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->f(Lcom/bbm/BbmService;)Lcom/bbm/m/a;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/bbm/h;->a:Lcom/bbm/BbmService;

    invoke-static {v0}, Lcom/bbm/BbmService;->f(Lcom/bbm/BbmService;)Lcom/bbm/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/m/a;->b()V

    goto :goto_3d
.end method
