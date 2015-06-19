.class final Lcom/a/a/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/av;


# instance fields
.field private synthetic a:Lcom/a/a/e;


# direct methods
.method constructor <init>(Lcom/a/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/aw;->a:Lcom/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/a/ay;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/cw;->d()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/a/a/aw;->a:Lcom/a/a/e;

    invoke-virtual {v2}, Lcom/a/a/e;->p()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v0, p0, Lcom/a/a/aw;->a:Lcom/a/a/e;

    iget-object v2, p1, Lcom/a/a/a/ay;->c:Lcom/a/a/a/ar;

    invoke-static {v0, v1, v2}, Lcom/a/a/e;->a(Lcom/a/a/e;Landroid/app/Activity;Lcom/a/a/a/ar;)Z

    move-result v0

    :cond_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
