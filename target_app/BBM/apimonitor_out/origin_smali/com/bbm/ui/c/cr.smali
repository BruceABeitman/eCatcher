.class final Lcom/bbm/ui/c/cr;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/cq;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/cq;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/cr;->a:Lcom/bbm/ui/c/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/c/cr;->a:Lcom/bbm/ui/c/cq;

    iget v0, v0, Lcom/bbm/ui/c/cq;->a:I

    const v1, 0x7f0a0070

    if-ne v0, v1, :cond_43

    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uri"

    iget-object v3, p0, Lcom/bbm/ui/c/cr;->a:Lcom/bbm/ui/c/cq;

    iget-object v3, v3, Lcom/bbm/ui/c/cq;->b:Lcom/bbm/g/o;

    iget-object v3, v3, Lcom/bbm/g/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bbm/ui/c/cr;->a:Lcom/bbm/ui/c/cq;

    iget-object v1, v1, Lcom/bbm/ui/c/cq;->c:Lcom/bbm/ui/c/ck;

    iget-object v1, v1, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;

    iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    const-string v2, "groupContactInactive"

    invoke-static {v0, v2}, Lcom/bbm/g/an;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cs;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/c/cr;->a:Lcom/bbm/ui/c/cq;

    iget-object v2, v2, Lcom/bbm/ui/c/cq;->c:Lcom/bbm/ui/c/ck;

    iget-object v2, v2, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/g/cs;->a(Ljava/lang/String;)Lcom/bbm/g/cs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_3d

    :cond_43
    iget-object v0, p0, Lcom/bbm/ui/c/cr;->a:Lcom/bbm/ui/c/cq;

    iget-object v0, v0, Lcom/bbm/ui/c/cq;->c:Lcom/bbm/ui/c/ck;

    iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/c/cr;->a:Lcom/bbm/ui/c/cq;

    iget-object v1, v1, Lcom/bbm/ui/c/cq;->b:Lcom/bbm/g/o;

    iget-object v1, v1, Lcom/bbm/g/o;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/c/cr;->a:Lcom/bbm/ui/c/cq;

    iget-object v2, v2, Lcom/bbm/ui/c/cq;->c:Lcom/bbm/ui/c/ck;

    iget-object v2, v2, Lcom/bbm/ui/c/ck;->b:Ljava/lang/String;

    new-instance v3, Lcom/bbm/g/ce;

    invoke-direct {v3, v1, v2}, Lcom/bbm/g/ce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_3d
.end method
