.class final Lcom/instagram/android/creation/c;
.super Ljava/lang/Object;
.source "CaptionBoxHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/c;->a:Lcom/instagram/android/creation/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/creation/c;->a:Lcom/instagram/android/creation/a;

    invoke-static {v0}, Lcom/instagram/android/creation/a;->a(Lcom/instagram/android/creation/a;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->r()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/c;->a:Lcom/instagram/android/creation/a;

    invoke-static {v1}, Lcom/instagram/android/creation/a;->b(Lcom/instagram/android/creation/a;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/f/y;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V

    return-void
.end method
