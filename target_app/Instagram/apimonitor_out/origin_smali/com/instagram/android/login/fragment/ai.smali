.class final Lcom/instagram/android/login/fragment/ai;
.super Ljava/lang/Object;
.source "PhoneNumberEntryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/ad;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/ai;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/login/fragment/ai;->a:Lcom/instagram/android/login/fragment/ad;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/ad;->e(Lcom/instagram/android/login/fragment/ad;)V

    return-void
.end method
