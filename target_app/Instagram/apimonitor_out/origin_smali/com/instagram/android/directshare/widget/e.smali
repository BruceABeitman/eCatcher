.class final Lcom/instagram/android/directshare/widget/e;
.super Ljava/lang/Object;
.source "DirectShareRecipientView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/widget/e;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_11
    if-eqz p2, :cond_25

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->a()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->b()V

    goto :goto_24
.end method
