.class final Lcom/bbm/ui/activities/aed;
.super Ljava/lang/Object;
.source "SelectCategoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/aec;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/aec;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aed;->a:Lcom/bbm/ui/activities/aec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/aed;->a:Lcom/bbm/ui/activities/aec;

    iget-object v0, v0, Lcom/bbm/ui/activities/aec;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V

    return-void
.end method
