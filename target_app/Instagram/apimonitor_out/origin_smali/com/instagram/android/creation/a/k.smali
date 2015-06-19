.class final Lcom/instagram/android/creation/a/k;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/k;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/instagram/android/creation/a/k;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->j(Lcom/instagram/android/creation/a/d;)Z

    :cond_7
    return-void
.end method
