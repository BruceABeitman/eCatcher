.class final Lcom/instagram/android/creation/a/aw;
.super Ljava/lang/Object;
.source "ShareLaterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/au;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/au;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/aw;->a:Lcom/instagram/android/creation/a/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
