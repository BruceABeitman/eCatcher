.class final Lcom/instagram/android/login/fragment/bm;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/bm;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
