.class final Lcom/instagram/android/l/c/p;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/l/c/o;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/c/o;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/c/p;->a:Lcom/instagram/android/l/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/l/c/p;->a:Lcom/instagram/android/l/c/o;

    iget-object v0, v0, Lcom/instagram/android/l/c/o;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->a(Lcom/instagram/android/l/c/a;)V

    return-void
.end method
