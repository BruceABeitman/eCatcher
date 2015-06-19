.class final Lcom/instagram/android/login/fragment/at;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/login/fragment/at;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    if-eqz p1, :cond_8

    sget-object v0, Lcom/instagram/o/b;->H:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/instagram/android/login/fragment/at;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->i(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_14
    iget-object v0, p0, Lcom/instagram/android/login/fragment/at;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->w(Lcom/instagram/android/login/fragment/an;)Lcom/facebook/i/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/instagram/android/login/fragment/at;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->h(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/login/fragment/at;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v2}, Lcom/instagram/android/login/fragment/an;->i(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/i/d;->b(Ljava/lang/String;)Lcom/facebook/i/m;
    :try_end_3a
    .catch Lcom/facebook/i/b; {:try_start_14 .. :try_end_3a} :catch_60

    move-result-object v0

    :goto_3b
    iget-object v1, p0, Lcom/instagram/android/login/fragment/at;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;

    if-ne v1, v2, :cond_7

    if-eqz v0, :cond_53

    iget-object v1, p0, Lcom/instagram/android/login/fragment/at;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->w(Lcom/instagram/android/login/fragment/an;)Lcom/facebook/i/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/i/d;->a(Lcom/facebook/i/m;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_53
    iget-object v0, p0, Lcom/instagram/android/login/fragment/at;->a:Lcom/instagram/android/login/fragment/an;

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    sget v0, Lcom/facebook/az;->please_enter_a_valid_phone_number:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    goto :goto_7

    :catch_60
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3b
.end method
