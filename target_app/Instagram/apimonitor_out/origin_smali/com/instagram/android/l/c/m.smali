.class final Lcom/instagram/android/l/c/m;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/l/c/l;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/c/m;->a:Lcom/instagram/android/l/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/l/c/m;->a:Lcom/instagram/android/l/c/l;

    iget-object v0, v0, Lcom/instagram/android/l/c/l;->a:Lcom/instagram/android/l/c/a;

    invoke-static {v0}, Lcom/instagram/android/l/c/a;->f(Lcom/instagram/android/l/c/a;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
