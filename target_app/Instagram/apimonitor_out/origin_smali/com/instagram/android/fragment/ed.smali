.class final Lcom/instagram/android/fragment/ed;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/eb;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/eb;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ed;->a:Lcom/instagram/android/fragment/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/fragment/ed;->a:Lcom/instagram/android/fragment/eb;

    iget-object v0, v0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/dy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/dy;->a(Lcom/instagram/android/fragment/dy;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
