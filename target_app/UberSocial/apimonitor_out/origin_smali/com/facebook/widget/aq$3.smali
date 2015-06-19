.class Lcom/facebook/widget/aq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/aq;->B()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/aq;


# direct methods
.method constructor <init>(Lcom/facebook/widget/aq;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/widget/aq;->d(Z)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_6a
    .catch Lcom/facebook/t; {:try_start_3 .. :try_end_9} :catch_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_46

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    invoke-virtual {v0}, Lcom/facebook/widget/aq;->k()Lcom/facebook/widget/al;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v2, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    invoke-interface {v0, v2, v1}, Lcom/facebook/widget/al;->a(Lcom/facebook/widget/af;Lcom/facebook/t;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    sget-object v0, Lcom/facebook/af;->a:Lcom/facebook/af;

    const-string v2, "PlacePickerFragment"

    const-string v3, "Error loading data : %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v0, v2, v3, v4}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    :catch_27
    move-exception v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    invoke-virtual {v1}, Lcom/facebook/widget/aq;->k()Lcom/facebook/widget/al;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v2, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    invoke-interface {v1, v2, v0}, Lcom/facebook/widget/al;->a(Lcom/facebook/widget/af;Lcom/facebook/t;)V

    goto :goto_18

    :cond_38
    sget-object v1, Lcom/facebook/af;->a:Lcom/facebook/af;

    const-string v2, "PlacePickerFragment"

    const-string v3, "Error loading data : %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    :catch_46
    move-exception v0

    :try_start_47
    new-instance v2, Lcom/facebook/t;

    invoke-direct {v2, v0}, Lcom/facebook/t;-><init>(Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_6a

    if-eqz v2, :cond_18

    iget-object v0, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    invoke-virtual {v0}, Lcom/facebook/widget/aq;->k()Lcom/facebook/widget/al;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v1, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    invoke-interface {v0, v1, v2}, Lcom/facebook/widget/al;->a(Lcom/facebook/widget/af;Lcom/facebook/t;)V

    goto :goto_18

    :cond_5c
    sget-object v0, Lcom/facebook/af;->a:Lcom/facebook/af;

    const-string v1, "PlacePickerFragment"

    const-string v3, "Error loading data : %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v0, v1, v3, v4}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    :catchall_6a
    move-exception v0

    if-eqz v1, :cond_7a

    iget-object v2, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    invoke-virtual {v2}, Lcom/facebook/widget/aq;->k()Lcom/facebook/widget/al;

    move-result-object v2

    if-eqz v2, :cond_7b

    iget-object v3, p0, Lcom/facebook/widget/aq$3;->a:Lcom/facebook/widget/aq;

    invoke-interface {v2, v3, v1}, Lcom/facebook/widget/al;->a(Lcom/facebook/widget/af;Lcom/facebook/t;)V

    :cond_7a
    :goto_7a
    throw v0

    :cond_7b
    sget-object v2, Lcom/facebook/af;->a:Lcom/facebook/af;

    const-string v3, "PlacePickerFragment"

    const-string v4, "Error loading data : %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/j;->a(Lcom/facebook/af;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7a
.end method
