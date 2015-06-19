.class final Lcom/bbm/ui/eo;
.super Ljava/lang/Object;
.source "QuickShareCameraView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/QuickShareCameraView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/QuickShareCameraView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/eo;->a:Lcom/bbm/ui/QuickShareCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/eo;->a:Lcom/bbm/ui/QuickShareCameraView;

    invoke-static {v0}, Lcom/bbm/ui/QuickShareCameraView;->a(Lcom/bbm/ui/QuickShareCameraView;)Lcom/bbm/ui/ep;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/eo;->a:Lcom/bbm/ui/QuickShareCameraView;

    invoke-static {v0}, Lcom/bbm/ui/QuickShareCameraView;->a(Lcom/bbm/ui/QuickShareCameraView;)Lcom/bbm/ui/ep;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bbm/ui/ep;->a(Z)V

    :cond_12
    return-void
.end method
