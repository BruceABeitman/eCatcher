.class final Lcom/instagram/android/nux/r;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/user/c/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/instagram/android/nux/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/android/nux/r;->c:Lcom/instagram/android/nux/n;

    iput-object p2, p0, Lcom/instagram/android/nux/r;->a:Lcom/instagram/user/c/a;

    iput-object p3, p0, Lcom/instagram/android/nux/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/nux/r;->c:Lcom/instagram/android/nux/n;

    iget-object v1, p0, Lcom/instagram/android/nux/r;->a:Lcom/instagram/user/c/a;

    iget-object v2, p0, Lcom/instagram/android/nux/r;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/instagram/android/nux/n;->b(Lcom/instagram/android/nux/n;Lcom/instagram/user/c/a;Ljava/lang/String;)V

    return-void
.end method
