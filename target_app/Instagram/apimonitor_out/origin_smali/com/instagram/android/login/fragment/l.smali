.class final Lcom/instagram/android/login/fragment/l;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/h;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/h;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/l;->a:Lcom/instagram/android/login/fragment/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_7

    sget-object v0, Lcom/instagram/o/b;->af:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    :cond_7
    return-void
.end method
