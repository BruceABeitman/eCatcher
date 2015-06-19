.class final Lcom/bbm/setup/y;
.super Ljava/lang/Object;
.source "SetupErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/setup/SetupErrorActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/SetupErrorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/y;->a:Lcom/bbm/setup/SetupErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "Retry"

    const-class v1, Lcom/bbm/setup/SetupErrorActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    const-string v1, "bbidState"

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "credentials"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetupErrorActivity - creds is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/bbm/f/ae;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/bbm/f/ae;->i:Z

    if-eqz v1, :cond_5f

    const-string v1, "SetupErrorActivity - Sending current BBID credentials to core"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/f/ae;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/bbm/f/ae;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/ag;

    move-result-object v2

    iget-object v0, v0, Lcom/bbm/f/ae;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bbm/d/ag;->a(Ljava/lang/String;)Lcom/bbm/d/ag;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :goto_5e
    return-void

    :cond_5f
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->a()V

    goto :goto_5e
.end method
