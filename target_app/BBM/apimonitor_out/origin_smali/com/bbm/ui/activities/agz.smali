.class final Lcom/bbm/ui/activities/agz;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ShareActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ShareActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/agz;->a:Lcom/bbm/ui/activities/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/agz;->a:Lcom/bbm/ui/activities/ShareActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ShareActivity;->finish()V

    return-void
.end method
