.class final Lcom/instagram/android/directshare/d/ae;
.super Ljava/lang/Object;
.source "DirectSharePermalinkMoreOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/ad;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/ae;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/d/ae;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->a(Lcom/instagram/android/directshare/d/ad;)Landroid/app/Dialog;

    return-void
.end method
