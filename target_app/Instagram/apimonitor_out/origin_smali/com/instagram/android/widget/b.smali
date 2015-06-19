.class final Lcom/instagram/android/widget/b;
.super Ljava/lang/Object;
.source "ContactsConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/widget/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/widget/b;->a:Lcom/instagram/android/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/widget/c;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/c;-><init>(Lcom/instagram/android/widget/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
