.class final Lcom/bbm/ui/at;
.super Ljava/lang/Object;
.source "CustomActionModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/CustomActionModeLayout;


# direct methods
.method constructor <init>(Lcom/bbm/ui/CustomActionModeLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/at;->a:Lcom/bbm/ui/CustomActionModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Cancel Clicked"

    const-class v1, Lcom/bbm/ui/CustomActionModeLayout;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/at;->a:Lcom/bbm/ui/CustomActionModeLayout;

    invoke-static {v0}, Lcom/bbm/ui/CustomActionModeLayout;->a(Lcom/bbm/ui/CustomActionModeLayout;)Lcom/bbm/ui/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/ui/au;->a()V

    return-void
.end method
