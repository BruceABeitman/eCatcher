.class final Lcom/instagram/android/login/fragment/bf;
.super Lcom/instagram/android/login/fragment/bt;
.source "RegisterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/login/fragment/bf;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;B)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    if-eqz p1, :cond_7

    sget-object v0, Lcom/instagram/o/b;->F:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    :cond_7
    return-void
.end method
