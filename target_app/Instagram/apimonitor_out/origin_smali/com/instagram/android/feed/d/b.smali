.class final Lcom/instagram/android/feed/d/b;
.super Ljava/lang/Object;
.source "SponsoredAboutDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/d/b;->a:Lcom/instagram/android/feed/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/d/b;->a:Lcom/instagram/android/feed/d/a;

    invoke-static {v0}, Lcom/instagram/android/feed/d/a;->a(Lcom/instagram/android/feed/d/a;)Landroid/app/Dialog;

    return-void
.end method
