.class final Lcom/instagram/android/login/fragment/bp;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/bp;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bp;->a:Lcom/instagram/android/login/fragment/an;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bp;->a:Lcom/instagram/android/login/fragment/an;

    invoke-static {v1}, Lcom/instagram/android/login/fragment/an;->p(Lcom/instagram/android/login/fragment/an;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Landroid/view/View;)V

    sget-object v0, Lcom/instagram/o/b;->V:Lcom/instagram/o/b;

    invoke-virtual {v0}, Lcom/instagram/o/b;->c()V

    return-void
.end method
