.class final Lcom/instagram/android/login/fragment/bq;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/bq;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bq;->a:Lcom/instagram/android/login/fragment/an;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bq;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->q(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->e(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bq;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->r(Lcom/instagram/android/login/fragment/an;)V

    sget-object v0, Lcom/instagram/o/b;->U:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    return-void
.end method
