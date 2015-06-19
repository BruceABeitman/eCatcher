.class final Lcom/bbm/ui/activities/aa;
.super Ljava/lang/Object;
.source "BbidErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/BbidErrorActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/BbidErrorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aa;->a:Lcom/bbm/ui/activities/BbidErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/activities/aa;->a:Lcom/bbm/ui/activities/BbidErrorActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->a(Lcom/bbm/ui/activities/BbidErrorActivity;)Landroid/app/AlertDialog;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_1a

    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/bbm/ui/activities/aa;->a:Lcom/bbm/ui/activities/BbidErrorActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/BbidErrorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    nop

    :pswitch_data_1a
    .packed-switch -0x2
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
