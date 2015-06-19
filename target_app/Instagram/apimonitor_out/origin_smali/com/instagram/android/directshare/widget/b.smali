.class final Lcom/instagram/android/directshare/widget/b;
.super Ljava/lang/Object;
.source "DirectShareRecipientView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/widget/b;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/b;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->b(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/android/directshare/widget/d;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/b;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->b(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/android/directshare/widget/d;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/b;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-interface {v0, v1}, Lcom/instagram/android/directshare/widget/d;->a(Landroid/view/View;)V

    :cond_13
    return-void
.end method
