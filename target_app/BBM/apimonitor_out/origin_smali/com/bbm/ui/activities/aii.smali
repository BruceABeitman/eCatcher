.class final Lcom/bbm/ui/activities/aii;
.super Ljava/lang/Object;
.source "TapToInviteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/o;

.field final synthetic b:Lcom/bbm/ui/activities/TapToInviteActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/TapToInviteActivity;Lcom/bbm/ui/b/o;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/aii;->b:Lcom/bbm/ui/activities/TapToInviteActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/aii;->a:Lcom/bbm/ui/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "NFC State dialog RigthButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/TapToInviteActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aii;->a:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V

    :try_start_c
    iget-object v0, p0, Lcom/bbm/ui/activities/aii;->b:Lcom/bbm/ui/activities/TapToInviteActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/TapToInviteActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_18
.end method
