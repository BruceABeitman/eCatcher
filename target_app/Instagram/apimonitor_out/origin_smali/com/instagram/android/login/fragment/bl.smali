.class final Lcom/instagram/android/login/fragment/bl;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/login/fragment/bl;->b:Lcom/instagram/android/login/fragment/an;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/bl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/bl;->b:Lcom/instagram/android/login/fragment/an;

    iget-object v1, p0, Lcom/instagram/android/login/fragment/bl;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V

    return-void
.end method
