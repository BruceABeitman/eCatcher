.class final Lcom/instagram/android/directshare/d/g;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/g;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/instagram/android/directshare/d/g;->a:Lcom/instagram/android/directshare/d/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;Z)Z

    :cond_8
    return-void
.end method
