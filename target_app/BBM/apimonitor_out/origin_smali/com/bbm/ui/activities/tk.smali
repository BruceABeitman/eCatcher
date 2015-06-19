.class final Lcom/bbm/ui/activities/tk;
.super Ljava/lang/Object;
.source "GroupSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupSettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/tk;->a:Lcom/bbm/ui/activities/GroupSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
