.class final Lcom/bbm/ui/activities/ag;
.super Lcom/bbm/d/b/m;
.source "BroadcastActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/m",
        "<",
        "Lcom/bbm/d/er;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;Lcom/bbm/j/r;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ag;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Z
    .registers 6

    check-cast p1, Lcom/bbm/d/er;

    iget-object v0, p0, Lcom/bbm/ui/activities/ag;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/BroadcastActivity;->b:Lcom/bbm/d/a;

    iget-object v1, p1, Lcom/bbm/d/er;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/ag;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->f(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/bbm/ui/activities/ag;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->i(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cs;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x1

    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method
