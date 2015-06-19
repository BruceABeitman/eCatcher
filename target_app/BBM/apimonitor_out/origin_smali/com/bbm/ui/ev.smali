.class final Lcom/bbm/ui/ev;
.super Ljava/lang/Object;
.source "QuickShareGlympseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/content/SharedPreferences;

.field final synthetic c:Lcom/bbm/ui/QuickShareGlympseView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/QuickShareGlympseView;Landroid/view/View;Landroid/content/SharedPreferences;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/ev;->c:Lcom/bbm/ui/QuickShareGlympseView;

    iput-object p2, p0, Lcom/bbm/ui/ev;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/bbm/ui/ev;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/ev;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/ev;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "glympse_first_experience"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/bbm/ui/ev;->c:Lcom/bbm/ui/QuickShareGlympseView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/QuickShareGlympseView;->a(Lcom/bbm/ui/QuickShareGlympseView;Z)V

    return-void
.end method
