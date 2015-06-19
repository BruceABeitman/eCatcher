.class final Lcom/instagram/android/login/fragment/n;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/h;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/h;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/n;->a:Lcom/instagram/android/login/fragment/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/h;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/n;-><init>(Lcom/instagram/android/login/fragment/h;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    new-instance v0, Lcom/instagram/registrationpush/a;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/n;->a:Lcom/instagram/android/login/fragment/h;

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/h;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/registrationpush/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/registrationpush/a;->d()V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/n;->a:Lcom/instagram/android/login/fragment/h;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/h;->c(Lcom/instagram/android/login/fragment/h;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
