.class final Lcom/bbm/ui/activities/qs;
.super Lcom/bbm/j/u;
.source "GroupLobbyActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/qn;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/qn;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/qs;->a:Lcom/bbm/ui/activities/qn;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/qs;->a:Lcom/bbm/ui/activities/qn;

    invoke-static {v0}, Lcom/bbm/ui/activities/qn;->a(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/qs;->a:Lcom/bbm/ui/activities/qn;

    invoke-static {v1}, Lcom/bbm/ui/activities/qn;->i(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/ac;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/g/o;->g:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_4f

    iget-object v1, p0, Lcom/bbm/ui/activities/qs;->a:Lcom/bbm/ui/activities/qn;

    invoke-static {v1}, Lcom/bbm/ui/activities/qn;->a(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/am;

    move-result-object v1

    iget-object v0, v0, Lcom/bbm/g/o;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/qs;->a:Lcom/bbm/ui/activities/qn;

    invoke-static {v2}, Lcom/bbm/ui/activities/qn;->b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bbm/g/an;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/cb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qs;->a:Lcom/bbm/ui/activities/qn;

    invoke-static {v0}, Lcom/bbm/ui/activities/qn;->a(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/qs;->a:Lcom/bbm/ui/activities/qn;

    invoke-static {v1}, Lcom/bbm/ui/activities/qn;->b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/g/an;->c(Ljava/lang/String;)Lcom/bbm/g/bp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qs;->a:Lcom/bbm/ui/activities/qn;

    invoke-static {v0}, Lcom/bbm/ui/activities/qn;->f(Lcom/bbm/ui/activities/qn;)Lcom/bbm/j/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    const/4 v0, 0x1

    :goto_4e
    return v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_4e
.end method
