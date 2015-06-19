.class final Lcom/bbm/ui/c/do;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/dn;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/dn;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/do;->a:Lcom/bbm/ui/c/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "restoreStatusId"

    iget-object v3, p0, Lcom/bbm/ui/c/do;->a:Lcom/bbm/ui/c/dn;

    iget-object v3, v3, Lcom/bbm/ui/c/dn;->a:Lcom/bbm/g/ai;

    iget-object v3, v3, Lcom/bbm/g/ai;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v1

    const-string v2, "groupRestoreStatus"

    invoke-static {v0, v2}, Lcom/bbm/g/an;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_26
.end method
