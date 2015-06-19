.class final Lcom/bbm/ui/activities/vo;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/j;

.field final synthetic b:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/b/j;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/vo;->b:Lcom/bbm/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/vo;->a:Lcom/bbm/ui/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "setActionBarForFragment Dialog LeftButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/vo;->b:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/vo;->a:Lcom/bbm/ui/b/j;

    iget-object v1, v1, Lcom/bbm/ui/b/j;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "show_channels_geolocation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_21
    const-string v1, "allow_geolocation_collect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/bbm/ui/activities/MainActivity;->k()Lcom/bbm/d/a;

    invoke-static {v2}, Lcom/bbm/d/a;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/vo;->a:Lcom/bbm/ui/b/j;

    invoke-virtual {v0}, Lcom/bbm/ui/b/j;->dismiss()V

    return-void
.end method
