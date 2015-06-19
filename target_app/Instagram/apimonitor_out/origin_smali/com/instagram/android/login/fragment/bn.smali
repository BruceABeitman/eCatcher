.class final Lcom/instagram/android/login/fragment/bn;
.super Lcom/instagram/android/login/fragment/bv;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/login/fragment/bn;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bv;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bn;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->j(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bn;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->j(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bn;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->k(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bn;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;

    :cond_20
    iget-object v0, p0, Lcom/instagram/android/login/fragment/bn;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->l(Lcom/instagram/android/login/fragment/an;)V

    return-void
.end method
