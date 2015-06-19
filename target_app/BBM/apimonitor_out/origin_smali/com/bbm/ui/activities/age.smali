.class final Lcom/bbm/ui/activities/age;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/age;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/age;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->c(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->d()Z

    move-result v0

    if-ne p2, v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/bbm/ui/activities/age;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->s(Lcom/bbm/ui/activities/SettingsActivity;)Z

    if-eqz p2, :cond_41

    new-instance v0, Lcom/bbm/ui/b/o;

    iget-object v1, p0, Lcom/bbm/ui/activities/age;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-direct {v0, v1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e066b

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V

    const v1, 0x7f0e066d

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V

    const v1, 0x7f0e014a

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V

    new-instance v1, Lcom/bbm/ui/activities/agf;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/agf;-><init>(Lcom/bbm/ui/activities/age;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/bbm/ui/activities/agg;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/agg;-><init>(Lcom/bbm/ui/activities/age;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V

    goto :goto_c

    :cond_41
    iget-object v0, p0, Lcom/bbm/ui/activities/age;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->c(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bbm/d/a;->a(Z)V

    goto :goto_c
.end method
