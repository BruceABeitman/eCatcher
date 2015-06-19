.class final Lcom/bbm/ui/activities/agi;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/agi;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    const-string v0, "allow mobile calls onCheckedChanged"

    const-class v1, Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/agi;->a:Lcom/bbm/ui/activities/SettingsActivity;

    const-string v1, "allow_mobile_calls"

    invoke-static {v0, v1, p2}, Lcom/bbm/ui/activities/SettingsActivity;->a(Lcom/bbm/ui/activities/SettingsActivity;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/agi;->a:Lcom/bbm/ui/activities/SettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/SettingsActivity;->t(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/rim/bbm/BbmMediaCallService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/rim/bbm/BbmMediaCallService;->setSetting(IZ)V

    return-void
.end method
