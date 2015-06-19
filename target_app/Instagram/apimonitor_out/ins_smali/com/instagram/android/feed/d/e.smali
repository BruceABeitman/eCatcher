.class final Lcom/instagram/android/feed/d/e;
.super Ljava/lang/Object;
.source "SponsoredHideHelper.java"
.implements Landroid/content/DialogInterface$OnDismissListener;
.field final synthetic a:Lcom/instagram/android/feed/d/d;
.method constructor <init>(Lcom/instagram/android/feed/d/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/d/e;->a:Lcom/instagram/android/feed/d/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onDismiss(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/d/e;->a:Lcom/instagram/android/feed/d/d;
invoke-static {v0}, Lcom/instagram/android/feed/d/d;->a(Lcom/instagram/android/feed/d/d;)Landroid/app/Dialog;
iget-object v0, p0, Lcom/instagram/android/feed/d/e;->a:Lcom/instagram/android/feed/d/d;
invoke-static {v0}, Lcom/instagram/android/feed/d/d;->b(Lcom/instagram/android/feed/d/d;)Ljava/util/List;
return-void
.end method