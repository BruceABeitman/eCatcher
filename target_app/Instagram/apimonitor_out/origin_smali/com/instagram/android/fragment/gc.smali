.class final Lcom/instagram/android/fragment/gc;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fk;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fk;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/gc;->a:Lcom/instagram/android/fragment/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/fragment/gc;->a:Lcom/instagram/android/fragment/fk;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fk;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "/push/preferences/"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/fragment/gc;->a:Lcom/instagram/android/fragment/fk;

    sget v3, Lcom/facebook/az;->notifications:I

    invoke-virtual {v2, v3}, Lcom/instagram/android/fragment/fk;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
