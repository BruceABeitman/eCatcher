.class final Lcom/bbm/setup/am;
.super Ljava/lang/Object;
.source "WhatsNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/setup/WhatsNewActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/WhatsNewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/am;->a:Lcom/bbm/setup/WhatsNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "whats_new_version"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/bbm/setup/am;->a:Lcom/bbm/setup/WhatsNewActivity;

    invoke-virtual {v0}, Lcom/bbm/setup/WhatsNewActivity;->a()V

    return-void
.end method
