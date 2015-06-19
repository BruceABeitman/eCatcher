.class final Lcom/bbm/ui/activities/ahj;
.super Ljava/lang/Object;
.source "ShowBarCodeActivity.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ShowBarCodeActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ahj;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/ahj;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->h(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/bbm/ui/activities/ahj;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/bbm/ui/activities/ahj;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/bbm/ui/activities/ahj;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->b(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/ahj;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v0, v2, :cond_63

    :cond_41
    iget-object v0, p0, Lcom/bbm/ui/activities/ahj;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->j(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v2

    invoke-static {v1}, Lcom/bbm/g/an;->a(Z)Lcom/bbm/g/cg;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/activities/ahj;->a:Lcom/bbm/ui/activities/ShowBarCodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->h(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/bbm/g/cg;->a(Ljava/lang/String;)Lcom/bbm/g/cg;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    move v0, v1

    :goto_62
    return v0

    :cond_63
    const/4 v0, 0x0

    goto :goto_62
.end method
