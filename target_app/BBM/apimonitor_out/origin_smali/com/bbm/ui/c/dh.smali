.class final Lcom/bbm/ui/c/dh;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/ui/b/o;

.field final synthetic c:Lcom/bbm/ui/c/de;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/de;Ljava/lang/String;Lcom/bbm/ui/b/o;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/c/dh;->c:Lcom/bbm/ui/c/de;

    iput-object p2, p0, Lcom/bbm/ui/c/dh;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/ui/c/dh;->b:Lcom/bbm/ui/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "showGroupRestoreStatusDialog RightButton Clicked"

    const-class v1, Lcom/bbm/ui/c/de;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "restoreStatusId"

    iget-object v3, p0, Lcom/bbm/ui/c/dh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v1

    const-string v2, "groupRestoreStatus"

    invoke-static {v0, v2}, Lcom/bbm/g/an;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_29} :catch_2f

    :goto_29
    iget-object v0, p0, Lcom/bbm/ui/c/dh;->b:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V

    return-void

    :catch_2f
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_29
.end method
