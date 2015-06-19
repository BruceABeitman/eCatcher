.class final Lcom/instagram/android/feed/a/a/y;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/x;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/x;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/y;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
