.class final Lcom/instagram/android/feed/a/a/v;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/u;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/u;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/v;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/v;->a:Lcom/instagram/android/feed/a/a/u;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->a(Lcom/instagram/android/feed/a/a/u;)Landroid/app/Dialog;

    return-void
.end method
