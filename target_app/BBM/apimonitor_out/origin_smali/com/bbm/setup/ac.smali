.class final Lcom/bbm/setup/ac;
.super Lcom/bbm/j/k;
.source "SetupManager.java"


# instance fields
.field final synthetic a:Lcom/bbm/setup/aa;


# direct methods
.method constructor <init>(Lcom/bbm/setup/aa;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/setup/ac;->a:Lcom/bbm/setup/aa;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bbm/setup/ac;->a:Lcom/bbm/setup/aa;

    invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "SetupManager monitorBbidCredentials - BBID credentials provided "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/bbm/f/ae;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_193

    const-string v0, ""

    :goto_18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v3, Lcom/bbm/f/ae;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_197

    const-string v0, ""

    :goto_26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v3, Lcom/bbm/f/ae;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19b

    const-string v0, ""

    :goto_34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "all data provided "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v3, Lcom/bbm/f/ae;->i:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    invoke-static {v0, v3}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "SetupManager monitorBbidCredentials - BBID credentials changed. "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "ecoId is "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/bbm/f/ae;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19f

    const-string v0, ""

    :goto_6d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "empty (was "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v0, v0, Lcom/bbm/f/ae;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a3

    const-string v0, ""

    :goto_83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "empty)data "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v0, v0, Lcom/bbm/f/ae;->e:Ljava/lang/String;

    iget-object v6, v3, Lcom/bbm/f/ae;->e:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    const-string v0, "not "

    :goto_9b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "changed;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "token is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v3, Lcom/bbm/f/ae;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ab

    const-string v0, ""

    :goto_c2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "empty (was "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v0, v0, Lcom/bbm/f/ae;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1af

    const-string v0, ""

    :goto_d8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "empty) +data "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v0, v0, Lcom/bbm/f/ae;->c:Ljava/lang/String;

    iget-object v6, v3, Lcom/bbm/f/ae;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    const-string v0, "not "

    :goto_f0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "changed;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "pin is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v3, Lcom/bbm/f/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "(was "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v5, v5, Lcom/bbm/f/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ");"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-boolean v0, v3, Lcom/bbm/f/ae;->i:Z

    if-eqz v0, :cond_1c0

    iget-object v0, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v0, v0, Lcom/bbm/f/ae;->e:Ljava/lang/String;

    iget-object v4, v3, Lcom/bbm/f/ae;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    iget-object v0, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v0, v0, Lcom/bbm/f/ae;->c:Ljava/lang/String;

    iget-object v4, v3, Lcom/bbm/f/ae;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    iget-object v0, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v0, v0, Lcom/bbm/f/ae;->a:Ljava/lang/String;

    iget-object v4, v3, Lcom/bbm/f/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    iget-object v0, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-boolean v0, v0, Lcom/bbm/f/ae;->i:Z

    if-nez v0, :cond_1c0

    :cond_166
    const/4 v0, 0x1

    const-string v4, "SetupManager monitorBbidCredentials - Will tell bbmcore current BBID credentials since they have changed"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_16e
    iput-object v3, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    :goto_170
    if-eqz v0, :cond_192

    const-string v0, "SetupManager monitorBbidCredentials - Sending current BBID credentials to core"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/bbm/setup/aa;->a:Lcom/bbm/d/a;

    iget-object v1, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v1, v1, Lcom/bbm/f/ae;->e:Ljava/lang/String;

    iget-object v3, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v3, v3, Lcom/bbm/f/ae;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/ag;

    move-result-object v1

    iget-object v2, v2, Lcom/bbm/setup/aa;->j:Lcom/bbm/f/ae;

    iget-object v2, v2, Lcom/bbm/f/ae;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/ag;->a(Ljava/lang/String;)Lcom/bbm/d/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :cond_192
    return-void

    :cond_193
    const-string v0, "Token known "

    goto/16 :goto_18

    :cond_197
    const-string v0, "Id known "

    goto/16 :goto_26

    :cond_19b
    const-string v0, "Pin Known "

    goto/16 :goto_34

    :cond_19f
    const-string v0, "not "

    goto/16 :goto_6d

    :cond_1a3
    const-string v0, "not "

    goto/16 :goto_83

    :cond_1a7
    const-string v0, ""

    goto/16 :goto_9b

    :cond_1ab
    const-string v0, "not "

    goto/16 :goto_c2

    :cond_1af
    const-string v0, "not "

    goto/16 :goto_d8

    :cond_1b3
    const-string v0, ""

    goto/16 :goto_f0

    :cond_1b7
    const-string v0, "SetupManager monitorBbidCredentials - No change in BBID credentials"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_170

    :cond_1c0
    move v0, v1

    goto :goto_16e
.end method
