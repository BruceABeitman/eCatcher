.class final Lcom/instagram/android/directshare/widget/a;
.super Ljava/lang/Object;
.source "DirectShareRecipientView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/widget/a;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/a;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->c()V

    return-void
.end method
