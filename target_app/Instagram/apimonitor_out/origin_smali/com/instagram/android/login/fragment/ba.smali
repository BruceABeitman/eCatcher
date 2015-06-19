.class final Lcom/instagram/android/login/fragment/ba;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/login/fragment/ba;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    if-eqz p1, :cond_8

    sget-object v0, Lcom/instagram/o/b;->B:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/instagram/android/login/fragment/ba;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->e(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_22

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ba;->a:Lcom/instagram/android/login/fragment/an;

    sget-object v1, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V

    sget v0, Lcom/facebook/az;->password_must_be_six_characters:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    goto :goto_7

    :cond_22
    sget-object v0, Lcom/instagram/o/b;->C:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    goto :goto_7
.end method
