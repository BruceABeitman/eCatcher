.class final Lcom/instagram/android/fragment/bj;
.super Ljava/lang/Object;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bh;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/bj;->a:Lcom/instagram/android/fragment/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/bj;->a:Lcom/instagram/android/fragment/bh;

    invoke-static {v0}, Lcom/instagram/android/fragment/bh;->b(Lcom/instagram/android/fragment/bh;)V

    return-void
.end method
