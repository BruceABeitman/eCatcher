.class final Lcom/instagram/android/login/fragment/bh;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/bh;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lcom/instagram/o/b;->E:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bh;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Z)Z

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bh;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->g(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bh;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/d/a;->a(Landroid/content/Context;)V

    return-void
.end method
