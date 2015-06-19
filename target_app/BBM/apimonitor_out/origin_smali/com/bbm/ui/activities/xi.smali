.class final Lcom/bbm/ui/activities/xi;
.super Lcom/bbm/j/k;
.source "MainActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/xi;->a:Lcom/bbm/ui/activities/MainActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    invoke-static {}, Lcom/bbm/ui/activities/MainActivity;->k()Lcom/bbm/d/a;

    move-result-object v0

    const-string v1, "rateBbmNotification"

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/activities/xi;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->e(Lcom/bbm/ui/activities/MainActivity;)V

    :cond_1b
    return-void
.end method
