.class final Lcom/bbm/ui/activities/ab;
.super Ljava/lang/Object;
.source "BbidErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/BbidErrorActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/BbidErrorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ab;->a:Lcom/bbm/ui/activities/BbidErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ab;->a:Lcom/bbm/ui/activities/BbidErrorActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->a(Lcom/bbm/ui/activities/BbidErrorActivity;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/bbm/ui/activities/ab;->a:Lcom/bbm/ui/activities/BbidErrorActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->finish()V

    return-void
.end method
