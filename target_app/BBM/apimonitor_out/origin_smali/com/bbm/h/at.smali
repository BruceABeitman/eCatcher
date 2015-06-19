.class final Lcom/bbm/h/at;
.super Ljava/lang/Object;
.source "InviteUtil.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/bbm/h/aq;


# direct methods
.method constructor <init>(Lcom/bbm/h/aq;Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/h/at;->c:Lcom/bbm/h/aq;

    iput-object p2, p0, Lcom/bbm/h/at;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bbm/h/at;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 4

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lcom/bbm/h/at;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbm/h/at;->b:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/bbm/h/at;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_21
    const/4 v0, 0x1

    goto :goto_11
.end method
