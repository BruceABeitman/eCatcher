.class final Lcom/bbm/setup/ao;
.super Lcom/bbm/j/k;
.source "WhatsNewDetector.java"


# instance fields
.field final synthetic a:Lcom/bbm/setup/an;


# direct methods
.method constructor <init>(Lcom/bbm/setup/an;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/setup/ao;->a:Lcom/bbm/setup/an;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/af;->g()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bbm/setup/ao;->a:Lcom/bbm/setup/an;

    iget-object v0, v0, Lcom/bbm/setup/an;->b:Lcom/bbm/s;

    invoke-interface {v0}, Lcom/bbm/s;->m()Lcom/bbm/setup/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;

    move-result-object v0

    sget-object v1, Lcom/bbm/setup/ah;->k:Lcom/bbm/setup/ah;

    iget-object v0, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;

    if-ne v1, v0, :cond_3b

    iget-object v0, p0, Lcom/bbm/setup/ao;->a:Lcom/bbm/setup/an;

    iget-object v0, v0, Lcom/bbm/setup/an;->b:Lcom/bbm/s;

    invoke-interface {v0}, Lcom/bbm/s;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "new_install"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "whats_new_version"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3b
    return-void
.end method
